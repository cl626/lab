// Bank_Simulation.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//随机数的生成:http://c.biancheng.net/view/2043.html

#include <iostream>
#include <stdlib.h>
#include <time.h>
#include "listqueue.h"

//链表*3
EventList* ev;
LinkQueue* wait1, * wait2;
//总体参数
int total;
//时间相关
int curr;	//当前时间
int closetime;
int Totaltime;	//逗留总时间
int customer_number;
int max_save;
int max_lend;

//美好的一天开始
void OpenForDay() {
	curr = 0;
	Totaltime = 0;
	customer_number = 0;
	ev = (EventList*)malloc(sizeof(EventList));
	wait1 = (LinkQueue*)malloc(sizeof(LinkQueue));
	wait2 = (LinkQueue*)malloc(sizeof(LinkQueue));
	InitList(ev);
	Elemtype* begin = (Elemtype*)malloc(sizeof(Elemtype));
	begin->OccurTime = 0;
	begin->Ntype = 0;
	begin->next = NULL;
	QNode* Qbegin = (QNode*)malloc(sizeof(QNode));
	Qbegin->Arrivtime = 0;
	Qbegin->bill = rand() % 10000 - 5000;
	Qbegin->Duration = rand() % 10;
	OrderInsert(ev, begin);
	InitQueue(wait1);
	InitQueue(wait2);
	EnQueue(wait1, Qbegin);
}

//原来这个处理到达事件
void CustomerArrived(EventList* ev, Elemtype* e, int customer_number, int closetime) {
	//Ntype==0
	++customer_number;
	QNode* newnode = (QNode*)malloc(sizeof(QNode));
	QNode* Qcurr = (QNode*)malloc(sizeof(Qcurr));
	srand(time(0));
	int interval = rand() % 10;
	Qcurr->Arrivtime = e->OccurTime;
	Qcurr->Duration = rand() % 10;;
	Qcurr->bill = rand() % 10000 - 5000;
	Elemtype* nextbe = (Elemtype*)malloc(sizeof(Elemtype));
	Elemtype* nowend = (Elemtype*)malloc(sizeof(Elemtype));
	if (e->OccurTime + interval < closetime) {
		//下一个e的开始插入EventList
		nextbe->OccurTime = e->OccurTime + interval;
		nextbe->Ntype = 0;
		nextbe->next = NULL;
		OrderInsert(ev, nextbe);
		EnQueue(wait1, Qcurr);
	}
	//when to terminate
	//e的结束插入EventList,但不是这时候结束
		/*	if (e->OccurTime + durtime < closetime) {
				nowend->OccurTime = e->OccurTime + durtime;
				nowend->Ntype = 1;
				OrderInsert(ev, nowend);
			}*/	//插入即可
			//e插入wait1末尾，
			//下面处理e或叫Qcurr
	else return;
}

void server(LinkQueue* wait1, LinkQueue* wait2, int currtime) { //currtime=e->Occurtime
	//我好_(?3」∠)_呀，不知道自己在哪
	int time_track;
	QNode* curr_ob = GetHead(wait1);
	//若取款失败，插入wait2
	if (total + curr_ob->bill < 0) {
		DeQueue(wait1, curr_ob);	//仅仅将curr_ob从队列删除
		EnQueue(wait2, curr_ob);
	}
	//否则handle curr后顺序处理wait2
	//结束时add用时to总逗留时间
	else {
		//离去的总金额、总时间加上
		total += curr_ob->bill;
		Totaltime += currtime + curr_ob->Duration - curr_ob->Arrivtime;
		DeQueue(wait1, curr_ob);
		Elemtype* curr_end = (Elemtype*)malloc(sizeof(Elemtype));
		curr_end->OccurTime = currtime + curr_ob->Duration;		//处理当前时间
		curr_end->Ntype = 1;				//Ntype==1代表结束
		curr_end->next = NULL;
		OrderInsert(ev, curr_end);
		time_track = currtime + curr_ob->Duration;
		QNode* deal_q2 = GetHead(wait2);
		while (deal_q2 != NULL && (total + deal_q2->bill >= 0)) {//直到wait2中不能再还款或者wait2 is empty
			if (time_track + deal_q2->Duration > closetime)
				return;
			else {
				//离去的总金额、总时间加上
				total += deal_q2->bill;
				Totaltime += time_track + deal_q2->Duration - deal_q2->Arrivtime;
				Elemtype* q2_end = (Elemtype*)malloc(sizeof(Elemtype));
				time_track += deal_q2->Duration;
				q2_end->OccurTime = time_track;
				q2_end->Ntype = 1;
				q2_end->next = NULL;
				OrderInsert(ev, q2_end);
				DeQueue(wait2, deal_q2);
				deal_q2 = GetHead(wait2);	//iteration
			}
		}
	}
}

int main() {
	printf("input total:");
	scanf_s("%d", total);
	printf("input closetime:");
	scanf_s("%d", closetime);
	printf("input max_save and max_lend:");
	scanf("%d %d", max_save, max_lend);
	OpenForDay();	//变量在OpenForday()中初始化
	while (!ListEmpty(ev)) {
		/*		while (total + GetHead(wait1) > 0 && !QueueEmpty(wait1))		//优先处理wait1直到不能再到达，后面到达的都是在wait1之后的
					server(wait1,wait2, curr);			//后面处理curr
				while (EGetHead(ev)->Ntype != 0)
					ListDe(ev);
				CustomerArrived(ev, EGetHead(ev),customer_number, closetime);	//when curr<closetime*/
		if (EGetHead(ev)->Ntype == 0) {
			CustomerArrived(ev, EGetHead(ev), customer_number, closetime);
			server(wait1, wait2, curr);
		}
		else //某个结束事件
			return 0;
	}
}