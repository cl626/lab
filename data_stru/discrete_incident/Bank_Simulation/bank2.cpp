// Bank_Simulation.cpp : ���ļ����� "main" ����������ִ�н��ڴ˴���ʼ��������
//�����������:http://c.biancheng.net/view/2043.html

#include <iostream>
#include <stdlib.h>
#include <time.h>
#include "listqueue.h"

//����*3
EventList* ev;
LinkQueue* wait1, * wait2;
//�������
int total;
//ʱ�����
int curr;	//��ǰʱ��
int closetime;
int Totaltime;	//������ʱ��
int customer_number;
int max_save;
int max_lend;

//���õ�һ�쿪ʼ
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

//ԭ������������¼�
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
		//��һ��e�Ŀ�ʼ����EventList
		nextbe->OccurTime = e->OccurTime + interval;
		nextbe->Ntype = 0;
		nextbe->next = NULL;
		OrderInsert(ev, nextbe);
		EnQueue(wait1, Qcurr);
	}
	//when to terminate
	//e�Ľ�������EventList,��������ʱ�����
		/*	if (e->OccurTime + durtime < closetime) {
				nowend->OccurTime = e->OccurTime + durtime;
				nowend->Ntype = 1;
				OrderInsert(ev, nowend);
			}*/	//���뼴��
			//e����wait1ĩβ��
			//���洦��e���Qcurr
	else return;
}

void server(LinkQueue* wait1, LinkQueue* wait2, int currtime) { //currtime=e->Occurtime
	//�Һ�_(?3����)_ѽ����֪���Լ�����
	int time_track;
	QNode* curr_ob = GetHead(wait1);
	//��ȡ��ʧ�ܣ�����wait2
	if (total + curr_ob->bill < 0) {
		DeQueue(wait1, curr_ob);	//������curr_ob�Ӷ���ɾ��
		EnQueue(wait2, curr_ob);
	}
	//����handle curr��˳����wait2
	//����ʱadd��ʱto�ܶ���ʱ��
	else {
		//��ȥ���ܽ���ʱ�����
		total += curr_ob->bill;
		Totaltime += currtime + curr_ob->Duration - curr_ob->Arrivtime;
		DeQueue(wait1, curr_ob);
		Elemtype* curr_end = (Elemtype*)malloc(sizeof(Elemtype));
		curr_end->OccurTime = currtime + curr_ob->Duration;		//����ǰʱ��
		curr_end->Ntype = 1;				//Ntype==1�������
		curr_end->next = NULL;
		OrderInsert(ev, curr_end);
		time_track = currtime + curr_ob->Duration;
		QNode* deal_q2 = GetHead(wait2);
		while (deal_q2 != NULL && (total + deal_q2->bill >= 0)) {//ֱ��wait2�в����ٻ������wait2 is empty
			if (time_track + deal_q2->Duration > closetime)
				return;
			else {
				//��ȥ���ܽ���ʱ�����
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
	OpenForDay();	//������OpenForday()�г�ʼ��
	while (!ListEmpty(ev)) {
		/*		while (total + GetHead(wait1) > 0 && !QueueEmpty(wait1))		//���ȴ���wait1ֱ�������ٵ�����浽��Ķ�����wait1֮���
					server(wait1,wait2, curr);			//���洦��curr
				while (EGetHead(ev)->Ntype != 0)
					ListDe(ev);
				CustomerArrived(ev, EGetHead(ev),customer_number, closetime);	//when curr<closetime*/
		if (EGetHead(ev)->Ntype == 0) {
			CustomerArrived(ev, EGetHead(ev), customer_number, closetime);
			server(wait1, wait2, curr);
		}
		else //ĳ�������¼�
			return 0;
	}
}