`timescale 1ns / 1ps
module Imm(
input[31:0] command,
input[2:0]  func3,
output reg[31:0] imm
);
initial begin imm<=0; end       //data??Ҫ
always@(*)	begin
	case(command[6:0])
//	7'b0010011:	imm={20'b0,command[31:20]};		//ADDI
	7'b0010011:	begin if(func3==3'b000)    imm=command[31]?{20'hfffff,command[31:20]}:{20'b0,command[31:20]};		//ADDI
	                   else if(func3==3'b001||func3==3'b101)  imm={27'b0,command[24:20]};       end         
	7'b0010111:	imm={command[31:12],12'b0};	//AUIPC
	7'b1101111:	imm=command[31]?{12'b111111111111,command[19:12],command[20],command[30:21],1'b0}:{12'b0,command[19:12],command[20],command[30:21],1'b0};	//JAL
	7'b1100111:	imm=command[31]?{20'hfffff,command[30:20],1'b0}:{20'b0,command[30:20],1'b0};		//JALR
	7'b1100011:	imm=command[31]?{20'hfffff,command[7],command[30:25],command[11:8],1'b0}:{20'h00000,command[7],command[30:25],command[11:8],1'b0};		//BEQ&BLT
	7'b0000011:	imm={20'b0,command[31:20]};		//LW
	7'b0100011:	imm={20'b0,command[31:25],command[11:7]};
	endcase
	end
endmodule
