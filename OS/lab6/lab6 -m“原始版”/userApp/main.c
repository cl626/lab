#include "shell.h"
#include "memTestCase.h"
#include "task.h"

void myMain(void) {

    initShell();
    memTestCaseInit();
    startShell();
	
/*	unsigned long tsk1,tsk2;
	tsk1=createTsk(&initShell);
	tsk2=createTsk(&startShell);
	tskStart((myTCB *)(BspContext(tsk1)));
	tskStart((myTCB *)(BspContext(tsk1)));
    return;	*/
}
