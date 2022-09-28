#include "wallClock.h"
int system_ticks;
void (*wallClock_hook)(int, int, int) = 0;
void oneTickUpdateWallClock(int HH, int MM, int SS) {		//wallClock_hook初始=0;如果Mymain中
	if (wallClock_hook) wallClock_hook(HH, MM, SS);			//setWallClockHook(setWallClock);执行，WallClock_hook执行 
}													//更新时wallClock_hook=setWallClock，机制与策略分离

void setWallClockHook(void (*func)(int, int, int)) {
	wallClock_hook = func;
}

void setWallClock(int HH,int MM,int SS){
	//你需要填写这里
	int h1,h2,m1,m2,s1,s2;
	char clock[100];
	HH=(system_ticks/100)/3600;
	MM=((system_ticks/100)%3600)/60;
	SS=(system_ticks/100)%60;
	h1= (system_ticks / 100) / 3600 /10;   h2= (system_ticks / 100) / 3600 %10;
	m1= ((system_ticks / 100) % 3600) / 60 /10;   m2= ((system_ticks / 100) % 3600) / 60 %10;
	s1= (system_ticks / 100) % 60 /10;   s2= (system_ticks / 100) % 60 %10;
	//clock[8]={(48+h1),(48+h2),':',(48+m1),(48+m2),':',(48+s1),(48+s2)};
	clock[0] = 48 + h1; clock[1] = 48 + h2; clock[2] = ':'; clock[3] = 48 + m1;		//例如48+3为3对应ASCII码
	clock[4]=48+m2;clock[5]=':';clock[6]=48+s1;clock[7]=48+s2;
	short *i =(short*)(0xB8000+(24*80+72)*2);
	char *p;    p=clock;
	while((*p)!='\0'){
	    *i=256*2+(*p);
	    p++;i++;
	}
	//myPrintk2(0x02,"%d:%d:%d",HH,MM,SS);
	return;
}

void getWallClock(int *HH,int *MM,int *SS){
	//你需要填写这里
	
	return;
	
}
