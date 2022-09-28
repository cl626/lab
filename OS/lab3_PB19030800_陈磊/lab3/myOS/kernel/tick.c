#include "tick.h"
extern void oneTickUpdateWallClock(int HH, int MM, int SS);
extern int system_ticks;
void tick(void){
	//你需要填写这里
	system_ticks++;
	oneTickUpdateWallClock(HH, MM, SS);
	return;
}

