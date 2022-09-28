`timescale 1ns / 1ps
module alucontrol(
input [1:0] ALUOp,
input [2:0] func3,
input [6:0] func7,
output reg[3:0] alucontrol
);
always@(*)	begin
	case(ALUOp)
	2'b00:	begin   if(func3==3'b000)   alucontrol=4'b0010;	//addi,lw,sw command
	       else if(func3==3'b001)   alucontrol<=4'b0000;       //slli
	       else if(func3==3'b101)   alucontrol<=4'b0001;    end    //srli
	2'b01:	alucontrol=4'b0110;	//beq,blt=sub
	2'b10:	begin case(func7)		//add,sub function
			7'b0000000:	alucontrol=4'b0010;
			7'b0100000:	alucontrol=4'b0110;
			endcase	end
	default:	alucontrol=4'b1111;		//jal,jalr,auipc ,这些进行alu也可以。。
	endcase
	end
endmodule
