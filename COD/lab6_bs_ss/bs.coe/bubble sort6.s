#This example shows an implementation of the Bubble sort algotirhm in the 
# 10 designed number.
#printf(a[0]~a[9])
#for(i=9;i>=1;i--)
#for(j=0;j<=i-1;j++)
#if a[j]<a[j+1]
# swap
#.data 
#str1: .string "the sorted result is"
.text
load:
#	li x20,33
#	sw x20,36(x0)	#data[36]=19	
#	li x20 ,32
#	sw x20,32(x0)
#	li x20 ,53
#	sw x20,28(x0)
#	li x20 ,64
#	sw x20,24(x0)
#	li x20 ,74
#	sw x20,20(x0)
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
	addi x21,x0,0
initial:	#x20=x22;x21=x23;x11=x21
	addi x22 ,x0 ,16		#x20=&a[8]		T
	addi x23 ,x0 ,0			#x21=&a[0]	T
com:			
	beq x23 ,x22 deci		#case j==9,dec i
rei:						
	addi x24 ,x23 ,4		#x24=j+1 T
	lw x25 ,0(x23)			#x25=a[j]	T
	lw x26 ,0(x24)			#x26=a[j+1]	T
	blt  x26 ,x25 ,swap		#make sure a[j+1]>a[j], a circle transfer the biggest to the end
rej:							
	addi x23 ,x23 ,4		#j++	T
	j  com				#to test if j < i
swap:	
	sw x25 ,0(x24)			#x25=a[j+1];
	sw x26 ,0(x23)			#x26=a[j];
	addi x21,x21,1
	j rej				#return j++ section
deci: 						
	addi x22 ,x22 ,-4		#i++
	beq x22,x0,print2		
	addi x23 ,x0 ,0			#j=0
	j	rei			# to --j	T
print2:	lw x1,0(x0)
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
