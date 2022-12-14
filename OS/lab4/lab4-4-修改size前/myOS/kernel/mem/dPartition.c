#include "../../include/myPrintk.h"


//dPartition 是整个动态分区内存的数据结构
typedef struct dPartition{
	unsigned long size;
	unsigned long firstFreeStart; 
} dPartition;	//共占8个字节

#define dPartition_size ((unsigned long)0x8)

void showdPartition(struct dPartition *dp){
	myPrintk(0x5,"dPartition(start=0x%x, size=0x%x, firstFreeStart=0x%x)\n", dp, dp->size,dp->firstFreeStart);
}


// EMB每一个block的数据结构，userdata可以暂时不用管。
typedef struct EMB{
	unsigned long size;
	union {
		unsigned long nextStart;    // if free: pointer to next block
        unsigned long userData;		// if allocated, blongs to user
	};	                           
} EMB;	//共占8个字节

#define EMB_size ((unsigned long)0x8)

void showEMB(struct EMB * emb){
	myPrintk(0x3,"EMB(start=0x%x, size=0x%x, nextStart=0x%x)\n", emb, emb->size, emb->nextStart);
}

unsigned long dPartitionInit(unsigned long start, unsigned long totalSize){		//对齐
	//本函数需要实现！！！
	/*功能：初始化内存。
	1.在地址start处，首先是要有dPartition结构体表示整个数据结构(也即句柄)。
	2.然后，一整块的EMB被分配（以后使用内存会逐渐拆分），在内存中紧紧跟在dP后面，然后dP的firstFreeStart指向EMB。
	3.返回start首地址(也即句柄)。
	注意有两个地方的大小问题：
		第一个是由于内存肯定要有一个EMB和一个dPartition，totalSize肯定要比这两个加起来大。  
		第二个注意EMB的size属性不是totalsize，因为dPartition和EMB自身都需要要占空间。
	
	*/
	dPartition* p = start;
	p->size = totalSize;
	p->firstFreeStart = start + dPartition_size;		//p的第一个空闲块
	EMB* q = p->firstFreeStart;
	q->size = totalSize - dPartition_size - EMB_size;
	q->nextStart = 0;
	return p;
}	

void dPartitionWalkByAddr(unsigned long dp){
	//本函数需要实现！！！
	/*功能：本函数遍历输出EMB 方便调试
	1.先打印dP的信息，可调用上面的showdPartition。
	2.然后按地址的大小遍历EMB，对于每一个EMB，可以调用上面的showEMB输出其信息

	*/
	dPartition* p = dp;
	showdPartition(dp);
	EMB* q = dp+dPartition_size;				//不可q=dp->firstFreeStart,后者会随alloc改变
	while (q->nextStart!=0) {
		showEMB(q);
		q = q->nextStart;
	}
	showEMB(q);
}

//=================firstfit, order: address, low-->high=====================
/**
 * return value: addr (without overhead, can directly used by user)
**/

unsigned long dPartitionAllocFirstFit(unsigned long dp, unsigned long size){
	//本函数需要实现！！！
	/*功能：分配一个空间
	1.使用firstfit的算法分配空间，当然也可以使用其他fit，不限制。
	2.成功分配返回首地址，不成功返回0
	3.从空闲内存块组成的链表中拿出一块供我们来分配空间(如果提供给分配空间的内存块空间大于size，我们还将把剩余部分放回链表中)，并维护相应的空闲链表以及句柄
	注意的地方：
		1.EMB类型的数据的存在本身就占用了一定的空间。

	*/
	unsigned long m;
	dPartition* p = dp;
	EMB* q = p->firstFreeStart;
	EMB* r;
	if (q->size > size) {
		m = q->nextStart;
		q->nextStart = q + 4 + size;	
		r = q->nextStart;
		r->nextStart = m;
		r->size = q->size - 4 - size;	//r->size=size+4;
		q->size = size+4;
		p->firstFreeStart = r;
		myPrintk(0x7, "%x/%x/%x/%x\n", q, q->size, r, r->size);
		return r;
	}	
	else return 0;
}	//firstfit over!

/*
 *r
 */
unsigned long dPartitionFreeFirstFit(unsigned long dp, unsigned long start) {
	//本函数需要实现！！！
	/*功能：释放一个空间
	1.按照对应的fit的算法释放空间
	2.注意检查要释放的start~end这个范围是否在dp有效分配范围内
		返回1 没问题
		返回0 error
	3.需要考虑两个空闲且相邻的内存块的合并
	*/
	dPartition* m = dp;
	EMB* n = dp + dPartition_size;
	EMB* a = start;			//a为释放空闲块指针
	//检查start是否越界
	while (n->nextStart != a) {
		n = n->nextStart;
	}
	myPrintk(0x7,"\n Free!");
	n->nextStart = a->nextStart;		//忙碌块跳过a
//检测相邻并在空闲块加入a
	unsigned long left,right;	//left为a左侧空闲块地址，right为a右侧空闲块地址
	left = 0;	right = 0;
	EMB* b = m->firstFreeStart;	//b为首空闲块指针
	EMB* l, * r;
	//while (b->nextStart != 0) {
	//	if ((b + EMB_size + b->size) == m)	left = b;		//有空闲块在要释放块左侧
	//	else if (m + m->size + EMB_size == b)	right = b;		//有空闲块在要释放块右侧，pMeminit处为此种
	//	b = b->nextStart;
	//}
	do {
		if ((b + EMB_size + b->size) == m)	left = b;		//有空闲块在要释放块左侧
		else if (m + m->size + EMB_size == b)	right = b;		//有空闲块在要释放块右侧，pMeminit处为此种
		b = b->nextStart;
	} while (b != 0);
	if (!left && !right) {
		a->nextStart = m->firstFreeStart;
		m->firstFreeStart = a;
		myPrintk(0x7, "NONE\n");
	}
	else {
		if (!left && right) {
			if (b == right) {
				b = a;			//空闲链表首指针变为a
				r = right;		//r为右空闲块指针
				b->nextStart = r->nextStart;
				b->size = a->size + r->size + EMB_size;
				m->firstFreeStart = b;
				myPrintk(0x7, "Right1\n");
			}
			else {
				while (b->nextStart != right)
					b = b->nextStart;
				b->nextStart = a;
				r = right;
				a->nextStart = r->nextStart;
				a->size = a->size + r->size + EMB_size;
				m->firstFreeStart = a;
				myPrintk(0x7, "Right2\n");
			}
		}
		else {
			if (left && !right) {
				while (b != left)
					b = b->nextStart;	//遍历直到b==left,只要令b->size+=a->size+EMB_size
				l = left;
				b->size = l->size + a->size + EMB_size;
				myPrintk(0x7, "Left\n");
			}
			else {
				myPrintk(0x7, "ganga\n");
				l = left;		r = right;
				EMB* c = m->firstFreeStart, * d = m->firstFreeStart;
				if (b == left) {
					b->size += a->size + r->size + 2 * EMB_size;
					while (d->nextStart != right)
						d = d->nextStart;		//d指向r释放块右邻指针
					d->nextStart = r->nextStart;
				}//d指向r指向指针，链表跳过r	
				else if (b == right) {
					b = left;
					b->nextStart = r->nextStart;
					b->size += l->size + a->size + 2 * EMB_size;
					while (c->nextStart != left)
						c = c->nextStart;		//c指向l（空闲块左邻指针
					c->nextStart = l->nextStart;	//链表跳过l
				}
				else {
					while (b->nextStart != right)
						b = b->nextStart;	//b指向right
					b->nextStart = r->nextStart;	//链表跳过r
					while (c != left)
						c = c->nextStart;
					c->size += a->size + r->size + 2 * EMB_size;	//为空闲块左邻扩充	}
				}
			}
		}
	}
	if (dp + m->size < start + a->size)
		return 0;
	else return 1;
	//使用块跳过a
}

//wrap: we select firstFit, you can select another one
//user need not know this
unsigned long dPartitionAlloc(unsigned long dp, unsigned long size){
	return dPartitionAllocFirstFit(dp,size);
}

unsigned long dPartitionFree(unsigned long	 dp, unsigned long start){
	myPrintk(0x7, "???");
	return dPartitionFreeFirstFit(dp,start);
}
