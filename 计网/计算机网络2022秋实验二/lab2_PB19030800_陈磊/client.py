import os
import uuid
import time
import threading
from socket import *
from tkinter import *

serverName = gethostbyname(gethostname())#服务器外网IP
serverPort = 12000

root = Tk() #创建窗口   
root.title('聊天室')    

text = Text(root,width = 100,height = 20) #tkinter文本控件，显示多行文本

scroll = Scrollbar(root)
scroll.pack(side = RIGHT,fill = Y)
scroll.config(command = text.yview)
text.config(yscrollcommand = scroll.set)
text.pack()

entry = Entry(root,bd = 5,width = 70)   #输入窗格，显示简单的文本内容
entry.pack(side = LEFT)                 #窗格显示在左侧
entry2 = Entry(root,bd = 5,width = 20)  #第二个窗格

#客户端添上套接字，并尝试与服务器建立连接(这里服务器为本机)
clientSocket = socket(AF_INET, SOCK_STREAM) 
print('正在连接...')
clientSocket.connect((serverName,serverPort))
print('连接成功!')

msg = clientSocket.recv(2048)#先接收历史记录

if msg.decode() != 'NO_MESSAGE':#有历史记录时
    text.insert(END,msg.decode() + '\n----以上是历史记录----\n')
text.see(END)

#返回本机ip地址
def get_ip_address():#由于用户名可以随时换，用MAC地址作为标识了
#    mac = uuid.UUID(int = uuid.getnode()).hex[-12:]
#    return ':'.join([mac[e:e+2] for e in range(0,11,2)])
#    return socket.gethostbyname(socket.gethostname())
    return gethostbyname(gethostname())

def timemark():                     #显示时间，可用于完成第一个实验
    timestamp = int(time.time())    #获得当前时区时间戳
    timestr = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(timestamp))  #将当前时间转换为字符串
    return '[' + timestr + ']'

def send():         
    #如果第二个窗格为空，文本控件显示"请输入用户名"
    if entry2.get().replace(' ','') == '':  
        text.config(state = 'normal')
        text.insert(END,'请输入用户名！\n')
        text.see(END)
        text.config(state = 'disabled')
        return
    #如果第一个窗格为空，文本控件显示"发送内容为空"
    if entry.get() == '':
        text.config(state = 'normal')
        text.insert(END,'发送内容不能为空！\n')
        text.see(END)
        text.config(state = 'disabled')
    #否则文本控件输出以格式"时间+ip地址+用户名+输入板消息"
    else:
        clientSocket.send((timemark() + ' ' + get_ip_address() + ' - ' +
                           entry2.get() + '\n    ' + entry.get()).encode())
        entry.delete(0,'end')

#在输入栏右侧显示发送按钮
button = Button(root,text = 'SEND',command = send)
button.pack(side = RIGHT)

entry2.pack(side = RIGHT)
class myThread(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
    def run(self):
        while True:
            msg = clientSocket.recv(2048)
            text.config(state = 'normal')
            text.insert(END,msg.decode() + '\n')
            text.see(END)
            text.config(state = 'disabled')
textThread = myThread()
textThread.start()

root.mainloop()

