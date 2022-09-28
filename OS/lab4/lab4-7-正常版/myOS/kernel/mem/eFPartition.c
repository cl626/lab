#include "../../include/myPrintk.h"
// 一个EEB表示一个空闲可用的Block
typedef struct EEB {
	unsigned long next_start;
}EEB;	//占4个字节

#define EEB_size 4

void showEEB(struct EEB* eeb) {
	myPrintk(0x7, "EEB(start=0x%x, next=0x%x)\n", eeb, eeb->next_start);
}

//eFPartition是表示整个内存的数据结构
typedef struct eFPartition {
	unsigned long totalN;
	unsigned long perSize;  //unit: byte	
	unsigned long firstFree;
}eFPartition;	//占12个字节

#define eFPartition_size 12

void showeFPartition(struct eFPartition* efp) {
	myPrintk(0x5, "eFPartition(start=0x%x, totalN=0x%x, perSize=0x%x, firstFree=0x%x)\n", efp, efp->totalN, efp->perSize, efp->firstFree);
}

unsigned long thefrontEEBof(unsigned long dp, unsigned long start) {
	EEB* q = dp + eFPartition_size;
	if (q == start) return 0;		//不可释放首块
	else while (q->next_start != start) {
		q = q->next_start;	//q=lastbusyEEB
	}
	return q;
}

void eFPartitionWalkByAddr(unsigned long efpHandler) {
	//本函数需要实现！！！
	/*功能：本函数是为了方便查看和调试的。
	1、打印eFPartiiton结构体的信息，可以调用上面的showeFPartition函数。
	2、遍历每一个EEB，打印出他们的地址以及下一个EEB的地址（可以调用上面的函数showEEB）

	*/
	showeFPartition(efpHandler);
	//myPrintk(0x7, "Happy!!\n");
	EEB* p = efpHandler + eFPartition_size;
	while (!p->next_start) {
		showEEB(p);
		p = p->next_start;
	}
	showEEB(p);
}	//最后一个使用的EEB->next_start=0;使用的next_start均为下一块地址


unsigned long eFPartitionTotalSize(unsigned long perSize, unsigned long n) {
	//本函数需要实现！！！
	/*功能：计算占用空间的实际大小，并将这个结果返回
	1.根据参数persize（每个大小）和n个数计算总大小，注意persize的对齐。
		例如persize是31字节，你想8字节对齐，那么计算大小实际代入的一个块的大小就是32字节。
	2.同时还需要注意“隔离带”EEB的存在也会占用4字节的空间。
		typedef struct EEB {
			unsigned long next_start;
		}EEB;
	3.最后别忘记加上eFPartition这个数据结构的大小，因为它也占一定的空间。

	*/
	int i = (perSize + 7) / 8;
	int b = (i * 8 + EEB_size) * n + eFPartition_size;
	return b;
}

unsigned long eFPartitionInit(unsigned long start, unsigned long perSize, unsigned long n) {
	//本函数需要实现！！！
	/*功能：初始化内存
	1.需要创建一个eFPartition结构体，需要注意的是结构体的perSize不是直接传入的参数perSize，需要对齐。结构体的next_start也需要考虑一下其本身的大小。
	2.就是先把首地址start开始的一部分空间作为存储eFPartition类型的空间
	3.然后再对除去eFPartition存储空间后的剩余空间开辟若干连续的空闲内存块，将他们连起来构成一个链。注意最后一块的EEB的nextstart应该是0
	4.需要返回一个句柄，也即返回eFPartition *类型的数据
	注意的地方：
		1.EEB类型的数据的存在本身就占用了一定的空间。
	*/
	eFPartition* p = start;
	int k = 0, h;
	EEB* q = (start + eFPartition_size);
	p->firstFree = q;
	int perSize1;
	perSize1 = ((perSize + 7) / 8) * 8;
	for (; k < n; k++) {
		h = q;
		q->next_start = h + EEB_size + perSize1;
		q = q->next_start;
	}
	q->next_start = 0;
	p->perSize = perSize;
	p->totalN = eFPartitionTotalSize(perSize, n);
	return p;
}//		over! with EEB list&&eFPatition initialize


unsigned long eFPartitionAlloc(unsigned long EFPHandler) {
	//本函数需要实现！！！
	/*功能：分配一个空间
	1.本函数分配一个空闲块的内存并返回相应的地址，EFPHandler表示整个内存的首地址
	2.事实上EFPHandler就是我们的句柄，EFPHandler作为eFPartition *类型的数据，
	其存放了我们需要的firstFree数据信息
	3.从空闲内存块组成的链表中拿出一块供我们来分配空间，并维护相应的空闲链表以及句柄
	*/
	eFPartition* p = EFPHandler;
	EEB* q = p->firstFree;
	unsigned long addr = q;
	q = q->next_start;
	p->firstFree = q;
	return addr;
}


unsigned long eFPartitionFree(unsigned long EFPHandler, unsigned long mbStart) {
	//本函数需要实现！！！
	/*功能：释放一个空间
	1.mbstart将成为第一个空闲块，EFPHandler的firstFree属性也需要相应大的更新。
	2.同时我们也需要更新维护空闲内存块组成的链表。

	*/
	/*eFPartition* p = EFPHandler;
	EEB* s, * t;
	s = EFPHandler + 12;
	EEB* m=p->firstFree;
	//p->firstFree = mbStart;
	while (s->next_start != m->next_start) {
		t=s;
		s = s->next_start;
	}
	p->firstFree = q;
	*/	//释放的内存块未必是使用尾部
	eFPartition* p = EFPHandler;
	EEB* fhead = p->firstFree;
	EEB* release = mbStart;
	//EEB* bf_release = thefrontEEBof(EFPHandler, mbStart);
	//EEB* bf_fhead = thefrontEEBof(EFPHandler, fhead);
	//myPrintk(0x7, "%x\n", fhead);
	/*if (fhead) {
		//维护busyEEBlist
		while (bf_release != 0) {
			if (release->next_start != fhead)
				bf_release->next_start = release->next_start;	//链表跳过start
			bf_fhead->next_start = release;					//busy tail->next_start=release;
		}
		//维护freeEEBlist,不用合并真棒
		release->next_start = p->firstFree;
		p->firstFree = release;		//release成为空闲首块，next_start指向原空闲首块
	}
	else
	{
		myPrintk(0x7, "can't free first block!\n");
	}*/
		release->next_start = p->firstFree;
			p->firstFree = release;
			return 1;
}
