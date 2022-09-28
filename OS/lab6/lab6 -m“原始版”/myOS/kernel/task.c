#include "task.h"
#include "kmalloc.h"
#include "types.h"
#define STACK_SIZE 40

const unsigned long WAIT=NULL,READY=1,EXE=2;

typedef struct myTCB{
    unsigned long *stkTop;
    unsigned long status;
    void (*tskBody)(void);
    unsigned long tskIndex;
    struct myTCB *next_tcb;     //没有former_tcbs
}myTCB;

struct myTCB *currentTsk;
unsigned long myTCBpool[1000];
unsigned long myTCBcout;

typedef struct myqueue{
    struct myTCB *head,*tail;
}myqueue;

struct myqueue *wait_tcbs,*ready_tcbs;

unsigned long prevTSK_StackPtr,nextTSK_StackPtr;
unsigned long BspContextBase[STACK_SIZE];
unsigned long *BspContext;

int createTsk(void (*tskBody)(void)){
    struct myTCB *newtsk=(myTCB *)kmalloc(sizeof(myTCB));
    newtsk->stkTop=kmalloc(STACK_SIZE);   
    (*(newtsk->stkTop))=tskBody;             //myTCB stack assign tskBody，shell deadloop ,so 不会乱入
    
    newtsk->tskBody=tskBody;
    newtsk->status=WAIT;
    newtsk->tskIndex=myTCBcout;     
    newtsk->next_tcb=NULL;                  //创建myTCB

    myTCBpool[myTCBcout]=newtsk;
    myTCBcout++;                    //在myTCBpool中记录

    while(wait_tcbs->head==NULL)
        wait_tcbs->tail=newtsk;
        newtsk->next_tcb=ready_tcbs->head;
        ready_tcbs->head=newtsk;    //add newtsk to wait_tcbs and preserve wait_tcbs 

    return newtsk->tskIndex;   
}

void destroyTsk(int tskIndex){
    struct myTCB* delete=myTCBpool[tskIndex];
    /*if(delete==wait_tcbs->head) wait_tcbs->head=wait_tcbs->head->next_tcb;
    else {
        struct myTCB *look=ready_tcbs->head;
        while(look->next_tcb!=delete)
            look=look->next_tcb;
        look->next_tcb=delete->next_tcb;
    }           //preserve wait_tcbs  */
    kfree(delete);
    kfree(delete->stkTop);
}

//tskStart将tsk加入就绪队列队尾
void tskStart(myTCB *tsk){
   while(ready_tcbs->head==NULL)
        ready_tcbs->head=tsk;
        ready_tcbs->tail=tsk;
        tsk->next_tcb=NULL;
        //ready_tcbs为空
        tsk->next_tcb==NULL;
        ready_tcbs->tail->next_tcb=tsk;
        ready_tcbs->tail=tsk;
        tsk->next_tcb=NULL;    
        //ready_tcbs->tail->next_tcb不必为NULL
}

void tskEnd(myTCB *tsk){            //remove tsk from ready_tcbs   
    if(tsk==ready_tcbs->head) ready_tcbs->head=ready_tcbs->head->next_tcb;
    else {
        struct myTCB *look=ready_tcbs->head;
        while(look->next_tcb!=tsk)
            look=look->next_tcb;
        look->next_tcb=tsk->next_tcb;
    }           //preserve ready_tcbs
    destroyTsk(tsk->tskIndex);  
}

struct myTCB* nextFCFSTsk(void){
    while(ready_tcbs->head==NULL);  //没有下一项，就死循环hh
    struct myTCB *temp=ready_tcbs->head;
    ready_tcbs->head=temp->next_tcb;
    return temp;            //这里没有处理执行的myTCB的next_tcb
}

void startMultitask(void){
    BspContext = BspContextBase + STACK_SIZE -1;
    prevTSK_StackPtr = &BspContext;
    currentTsk = nextFCFSTsk();
    nextTSK_StackPtr = currentTsk->stkTop;
    CTX_SW(prevTSK_StackPtr,nextTSK_StackPtr);
}

//schedule可以考虑是否需要wait_tcbs->tail——答：需要维护wait_tcbs。
struct myTCB* schedule(void){
    if(wait_tcbs->head!=NULL){
        tskStart(wait_tcbs->head);
        wait_tcbs->head=(wait_tcbs->head)->next_tcb;
        if(wait_tcbs->head==NULL)   wait_tcbs->tail==NULL;
    }       //没说什么时候入队，做法——只要等待队列不空即入队
    if(ready_tcbs->head!=NULL){
        ready_tcbs->head->tskBody();
        tskEnd(ready_tcbs->head);
        //currentTsk->tskBody();
        //BspContextBase=currentTsk->stkTop;
        //tskEnd(currentTsk);
        //ready_tcbs->head=ready_tcbs->head->next_tcb;    
    }       //只要就绪队列不空，即执行就绪队列首项，并出队
}

void idleTskBody(void){
    while(1)    schedule();
}

//initTskBody的作用：创建TskBody,并且加入等待队列，可对接myMain
void initTskBody(void(*TskBody)(void)){
    createTsk(TskBody);
}

void initFCFS(void){
    wait_tcbs->head=NULL;
    wait_tcbs->tail=NULL;
    ready_tcbs->head=NULL;
    ready_tcbs->tail=NULL;
}

void init_Tskpool(void){
    for(int i=NULL;i<1000;i++)
        myTCBpool[i]=NULL;
}