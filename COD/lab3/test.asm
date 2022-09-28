.data
out: .word 0xff
in: .word 0

.text
# test 10 command
black:
auipc a0,0xffffd	#test auipc
addi x1,x0,1
sw x1, 0(a0)		#test sw
sw x1,0x408(x0)
light:
addi t0,x0,4	#test addi
sw t0, 0(a0)
sw x1,0x408(x0)
lw t0, 4(a0)	#test lw:black
sw t0, 0(a0)	
add t3, t0, x0	#test add:light
sw t3,0(a0)
addi t3,x0,2	
addi t4,x0,4
sub t5,t4,t3
sw t5,0(a0)	#test sub: dm[3004]=2;
blt t4,t3,light #test blt						
addi t4,x0,2
addi t5,x0,3
beq t4,t5,black	#test beq ;

#test io_out0,ready,io_out1,io_din,valid
addi x5,x0,63
sw x5,0x400(x0)	#io_dout=x1[4:0]=31
sw x5,0x404(x0)	#io_dout=x1[0]=1
sw x5,0x408(x0)	#io_dout=x1=63
lw x5,0x40c(x0)	#x5!=DM[40ch],=io_din=27'b0,in
sw x5,0x410(x0)	#x5!=DM[410h],=io_din=31'b0,valid
#改变0x400的值，
addi x6,x0,15
sw x6,0x40c(x0)	#io_dout=DM[40c],但out0=out0!=io_dout
		#存储器也不可查看，地址太大

jal light	#test jal
jalr s2, 4(a0)	#test jalr 
sw s2, 0(a0)
