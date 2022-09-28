import os
import time
import threading
from socket import *
IP = gethostbyname(gethostname()) #内网IP
serverPort = 12000
MAX_CONNECTION = 10
#将服务器绑定到本机端口并listen
serverSocket = socket(AF_INET, SOCK_STREAM)
serverSocket.bind((IP,serverPort))
serverSocket.listen(MAX_CONNECTION)
print('服务器已就绪')
cnt = 0
textList = []
socketList = []
def timemark():#产生当前的时间字符串
    timestamp = int(time.time())
    timestr = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(timestamp))
    return '[' + timestr + ']'
class myThread(threading.Thread):
    #将当前连接加入socketList
    def __init__(self,connection):
        threading.Thread.__init__(self)
        self.connection = connection
        socketList.append(connection)
    #在客户端连接成功后，每有一个新客户连入服务器，向各客户端报告
    def run(self):
        try:
            global cnt
            for sock in socketList:
                if sock == self.connection:
                    sock.send(('您已加入，当前%d人'%(cnt)).encode())
                else:
                    sock.send(('有新用户加入，当前%d人'%(cnt)).encode())
            #每次客户向服务器发送信息，服务器将信息加入textList,并广播到所有用户
            while True:
                sentence = self.connection.recv(2048).decode()
                textList.append(sentence)
                for sock in socketList:
                    sock.send(('\n' + sentence).encode())
        #每有一个连接断开，先后向服务器终端、所有用户报告当前人数
        except Exception as e:
            print(timemark() + repr(e))
            cnt = cnt - 1
            print('连接异常断开!当前人数:' + str(cnt))
            socketList.remove(self.connection)
            for sock in socketList:
                sock.send(('有用户退出，当前%d人'%(cnt)).encode())
while True:
    connectionSocket ,addr= serverSocket.accept()
    try:
        #如果textList==0，向新增连接发送NO_MESSAGE，否则发送textList
        if len(textList) == 0:
            connectionSocket.send('NO_MESSAGE'.encode())
        else:
            connectionSocket.send('\n'.join(textList).encode())
        cnt = cnt + 1
        #将对新增连接的处理加入线程
        newThread = myThread(connectionSocket)
        newThread.setDaemon(True)
        newThread.start()
        print('连接成功!!当前连接人数:' + str(cnt))
    except Exception as e:
        print(timemark() + repr(e))

