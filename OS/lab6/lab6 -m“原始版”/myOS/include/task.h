#ifndef __TASK_H__
#define __TASK_H__
#define STACK_SIZE 40
extern unsigned long prevTSK_StackPtr,nextTSK_StackPtr;

extern unsigned long BspContextBase[STACK_SIZE];

extern unsigned long *BspContext;


extern unsigned long myTCBpool[1000];

extern unsigned long myTCBcout;

/*typedef struct myTCB{
    unsigned long *stkTop;
    unsigned long status;
    void (*tskBody)(void);
    unsigned long tskIndex;
    struct myTCB *next_tcb;     
}myTCB;*/
typedef struct myTCB myTCB; 

extern struct myTCB *currentTsk;

/*typedef struct myqueue{
    struct myTCB *head,*tail;
}myqueue;*/
typedef struct myqueue myqueue;

extern struct myqueue *wait_tcbs,*ready_tcbs;

void CTX_SW(void*prev_stkTop, void*next_stkTop);

int createTsk(void(*tskBody)(void));

void destroyTsk(int tskIndex);

void tskStart(myTCB *tsk);

void tskEnd(myTCB *tsk);

struct myTCB* nextFCFSTsk(void);

void startMultitask(void);

struct myTCB* schedule(void);

void idleTskBody(void);

void initTskBody(void(*TskBody)(void));

void initFCFS(void);

void init_Tskpool(void);

#endif