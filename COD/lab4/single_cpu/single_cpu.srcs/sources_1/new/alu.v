`timescale 1ns/1ps
module alu	( 
input rst,
input[3:0]	alucontrol,
input[2:0] 	func3,
input jal,
input[31:0] 	rd1,read2,
output 	reg[31:0]	aluresult,
output 	reg zero	
);
reg[31:0] symbol;
/*initial begin zero<=0; end      //data need 
always@(*)	begin
	if(alucontrol==4'b0010)	//ld&sd
		aluresult<=rd1+read2; 
	else    
	if(alucontrol==4'b0110)	begin aluresult<=rd1-read2;    
	if(func3==3'b000)	zero=(rd1==read2);	// always produce zero, used only when Branch==1
	else  if(func3==3'b100) begin symbol=rd1-read2;	zero=symbol[31];	end	//to most subtraction,the judgement is correct	£¨2£©
    else zero<=0;  
	end    
	else zero<=0;
	end
endmodule*/
initial begin zero<=0; end      //data need 
always@(*)	begin
	if(alucontrol==4'b0010)	//ld&sd
		aluresult<=rd1+read2; 
	else    
	if(alucontrol==4'b0110)	begin aluresult<=rd1-read2;    
	if(func3==3'b000)	zero=(rd1==read2);	// always produce zero, used only when Branch==1
	else  if(func3==3'b100) begin symbol<=rd1-read2;	zero=symbol[31];	end	//to most subtraction,the judgement is correct	£¨2£©
    else zero<=0;  
	end    
	//else if(alucontrol==4'b1111)   zero<=1; 
	else zero<=0;
	end
endmodule