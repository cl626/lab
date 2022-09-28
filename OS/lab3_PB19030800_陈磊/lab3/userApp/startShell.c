#include "io.h"
#include "myPrintk.h"
#include "uart.h"
#include "vga.h"
#include "i8253.h"
#include "i8259A.h"
#include "tick.h"
#include "wallClock.h"
#include "vsprintf.h"

typedef struct myCommand {
    char name[80];
    char help_content[200];
    int (*func)(int argc, char (*argv)[8]);
}myCommand; 

myCommand cmd,help;

int func_cmd(int argc, char (*argv)[8]){
    myPrintf(0x02, "%s\n%s\n", cmd.name, help.name);
} 

myCommand cmd={"cmd\0","List all command\n\0",func_cmd};

int func_help(int argc, char (*argv)[8]){   //*argv=a[0]=&a[0][0]
	//*(argv+1)=a[1]=&a[1][0]; (*(argv+1)+i)=a[1][i];
    if (argc > 2)
        myPrintf(0x02, "%s\n" , "error:too large parameter number");
    else  
    {
        if(teststr(argv[1], "help"))
            myPrintf(0x02,"%s\n",help.help_content);
        else if(teststr(argv[1], "cmd"))
            myPrintf(0x02, "%s\n", cmd.help_content);
        else myPrintf(0x02, "%s\n", "no such help");
    }
}

myCommand help={"help\0","Usage: help [command]\n\0Display info about [command]\n\0",func_help};


void startShell(void){
	//我们通过串口来实现数据的输入
	char BUF[256]; //输入缓存区
	int BUF_len=0;	//输入缓存区的长度
    
	int argc;
    char argv[8][8];

    do{
        BUF_len=0; 
        myPrintk(0x07,"Student>>\0");
        while((BUF[BUF_len]=uart_get_char())!='\r'){
            uart_put_char(BUF[BUF_len]);//将串口输入的数存入BUF数组中
            BUF_len++;  //BUF数组的长度加
        }
        uart_put_chars(" -pseudo_terminal\0");
        uart_put_char('\n');

        int i, j, k;
        i = 0; j = 0; 
        for (k = 0; k < BUF_len; k++) {
            if (BUF[k] == ' ') {
                i++; j = 0;
            }
            else    {
            argv[i][j] =BUF[k];
               j++;
        }
        }
        argc = i + 1;
        //myPrintf(0x02,"%c\n",argv[0][0]);
        if (teststr(argv[0],"cmd"))
            cmd.func(argc, argv);
        else if (teststr(argv[0],"help"))
            help.func(argc, argv);
        else myPrintf(0x02,"%s\n", "unknown command");
    }while(1);

}

int teststr(char *a, char *b) { //input str
    int cout=0;
    while (*b != '\0') {
        if ((*a) == (*b)) {
            a++; b++;
        }
        else
        {
            cout++; a++; b++;
        }
        }
    return ((cout==0));
}

