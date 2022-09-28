.data
out: 
.text
auipc a0,0xfffffffd
addi s2,x0,1
addi s3,x0,2
add s4,x0,x0
addi s5,x0,10	# 10circle
sw s2,0(a0)
sw s2,0x408(x0)
addi a0,a0,4
sw s3,0(a0)
sw s3,0x408(x0)
circle:
addi s6,s3,0
add s3,s2,s3
addi s2,s6,0
addi a0,a0,4
sw s3,0(a0)
sw s3,0x408(x0)
addi s4,s4,1
blt s4,s5,circle
#output:
#lw a0,0(s0)
#li a7,1
#ecall
#addi s0,s0,4
#addi s4,s4,-1
#bne s4,x0,output  
