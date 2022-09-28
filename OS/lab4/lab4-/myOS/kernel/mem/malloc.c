#include "../../include/mem.h"
extern unsigned long _end;

unsigned long malloc(unsigned long size){
	//本函数需要实现！！！
    //调用实现的dPartition或者是ePartition的alloc
    return dPartitionAlloc(pMemHandler,size);
    //return eFPartitionAlloc(pMemHandler);
}

unsigned long free(unsigned long start){
	//本函数需要实现！！！

    //调用实现的dPartition或者是ePartition的free
    return dPartitionFree(pMemHandler,start);
    //return eFPartitionFree(pMemHandler,start);
}