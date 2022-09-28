#public static int[]  insertionSort(int[] arr){
#    if(arr == null || arr.length <= 1){
#        return arr;
#    }
#    //希尔排序  升序
#    for (int d = arr.length / 2;d>0;d /= 2){ //d：增量  7   3   1
#        for (int i = d; i < arr.length; i++){ 
#            //i:代表即将插入的元素角标，作为每一组比较数据的最后一个元素角标 
#            //j:代表与i同一组的数组元素角标
#            for (int j = i-d; j>=0; j-=d){ //在此处-d 为了避免下面数组角标越界
#                if (arr[j] > arr[j + d]) {// j+d 代表即将插入的元素所在的角标
#                    //符合条件，插入元素（交换位置）
#                    int temp = arr[j];
#                    arr[j] = arr[j + d];
#                    arr[j + d] = temp;
#                }
#            }
#       } 
#    }
#    return arr;
#}
load:	addi x31,x0,10		#x31=number of integer
	li x20,33
	sw x20,36(x0)	#data[36]=19	
	li x20 ,32
	sw x20,32(x0)
	li x20 ,53
	sw x20,28(x0)
	li x20 ,64
	sw x20,24(x0)
	li x20 ,74
	sw x20,20(x0)
	li x20 ,92
	sw x20,16(x0)
	li x20 ,91
	sw x20,12(x0)
	li x20 ,23
	sw x20,8(x0)
	li x20,52
	sw x20,4(x0)
	li x20 ,63
	sw x20,0(x0)	#data[0]=00
	add x30,x0,x31			#x30=x31
	addi x21,x0,0			#x21 records swap times
step1:	srli x30,x30,1			#d=arr.length/2=d/2
	beq  x30,x0,print	
	
	sub  x29,x30,x1			
step2:	addi x29,x29,1			#begin,i=x29=d,	i++		
	beq  x29,x31,step1		#if(i==arr.length)	d=d/2;
	
	sub  x28,x29,x30,		#j=x28=i-d
step3:	blt  x28,x0,step2		#j<0, i++
	
step4:	add x27,x28,x30			#w=x27=j+d
	slli x27,x27,2
	slli x28,x28,2
	lw x25,0(x28)			#x25=a[j]
	lw x26,0(x27)			#x26=a[j+d]

	blt x26,x25,swap		#if a[j+d]<a[j],swap
step5:	srli x27,x27,2
	srli x28,x28,2
	sub  x28,x28,x30		#j=j-d
	j step3				
	
swap:	
	sw x25 ,0(x27)			#a[j+d]=x25;
	sw x26 ,0(x28)			#a[j]=x26;
	addi x21,x21,1
	j step5				#return j++ section

print:	lw x1,0(x0)
	lw x2,4(x0)
	lw x3,8(x0)
	lw x4,12(x0)
	lw x5,16(x0)
	lw x6,20(x0)
	lw x7,24(x0)
	lw x8,28(x0)
	lw x9,32(x0)
	lw x10,36(x0)
	lw x11,40(x0)
	lw x12,44(x0)
	lw x13,48(x0)
	lw x14,52(x0)
	lw x15,56(x0)
	lw x16,60(x0)
	lw x17,64(x0)
	lw x18,68(x0)
	lw x19,72(x0)
	lw x20,76(x0)
stall: 	j stall
