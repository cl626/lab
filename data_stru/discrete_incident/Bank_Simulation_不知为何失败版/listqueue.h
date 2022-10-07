#ifndef __LISTQUEUE_H__
#define __LISTQUEUQ_H__
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
//�����ŶӶ���Queue
typedef struct QNode {
	int Arrivtime;
	QNode* next;
	int Duration;
	int bill;	//+��ʾ��Ǯ��-��ʾȡǮ
}QNode;

typedef struct {
	QNode* front;
	QNode* rear;
}Queue;

//���л�������
Queue* InitQueue() {
	QNode* front = (QNode*)malloc(sizeof(QNode));
	QNode* rear = (QNode*)malloc(sizeof(QNode));
	Queue* q = (Queue*)malloc(sizeof(Queue));
	q->front = front;
	q->rear = rear;
	q->front->next=NULL;
	q->rear->next=NULL;
	return q;
}
//void DestroyQueue(Queue* Q);
//void ClearQueue(Queue* Q);
int QueueEmpty(Queue* Q) {
	return (Q->front->next == NULL) ? 1 : 0;
}
int QueueLength(Queue* Q) {
	int len = 0;
	if (Q->front->next == NULL)
		return 0;
//	len = 1;
	QNode* a= Q->front->next;
	while (a!=NULL) {
		a = a->next;
		len++;
	}
	return len;
}

QNode* GetHead(Queue* Q) {
	return Q->front->next;
}
void EnQueue(Queue* Q, QNode* e) {	
	Q->rear->next = e;
	Q->rear = e;
	if (Q->front->next == NULL)
		Q->front->next = e;
}
void DelQueue(Queue* Q) {
	QNode* fr = Q->front->next;
	Q->front->next = fr->next;
	if (Q->front->next == NULL) Q->rear->next = NULL;
	free(fr);
}

//�Զ����¼�����
typedef struct Elemtype{
	int OccurTime;
	int Ntype;	//Ntype==0��ʾ�����¼���Ntype==1��ʾΪ�뿪�¼���
	Elemtype *next;
}Elemtype;

typedef struct EventList{
	Elemtype* head;
	Elemtype* tail;
}EventList;

//�������
EventList* InitList() {
	Elemtype *head = (Elemtype*)malloc(sizeof(Elemtype));
	Elemtype *tail = (Elemtype*)malloc(sizeof(Elemtype));
	EventList *e = (EventList*)malloc(sizeof(EventList));
	e->head = head;
	e->tail = tail;
	e->head->next = NULL;
	e->tail->next = NULL;
	return e;
}


void OrderInsert(EventList* Q, Elemtype* e) {
	Elemtype* p = Q->head;
	Elemtype* q = p->next;
	if (Q->head->next == NULL) {
		Q->head->next = e;
		Q->tail->next = e;
	}
	else {
		while (q != NULL) {
			if (q->OccurTime <= e->OccurTime) {
				p = q;	q = q->next;
			}
			else break;
		}
		if (q == NULL) {	//tail<e
			p->next = e;
			e->next = NULL;
			Q->tail->next = e;
		}
		else   //p<=e<q ,include p=Q->head;
		{
			p->next = e;
			e->next = q;
		}
	}
}

int ListEmpty(EventList* Q) {
	return (Q->head->next == NULL) ? 1 : 0;
}

void DelList(EventList* Q){
	Elemtype* tou = Q->head->next;
	Q->head->next = tou->next;
	if (Q->head->next == NULL)	Q->tail->next = NULL;
	free(tou);
}
Elemtype* EGetHead(EventList* Q) {
	return Q->head->next;
}

//Duration��bill���
Elemtype* mkENode(int Occurtime, int Ntype, Elemtype* next) {
	Elemtype* mk = (Elemtype*)malloc(sizeof(Elemtype));
	mk->OccurTime = Occurtime;
	mk->Ntype = Ntype;
	mk->next = next;
	return mk;
};

QNode* mkQNode(int Arrivtime, QNode* next, int smax, int lmin) {
	QNode* mk = (QNode*)malloc(sizeof(QNode));
	mk->Arrivtime = Arrivtime;
	mk->next = next;
//	srand((unsigned)time(NULL));
	mk->bill = rand() % (smax - lmin) +lmin;
//	srand((unsigned)time(NULL));
	mk->Duration = rand() % 10+1;
	return mk;
};
#endif