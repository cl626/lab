`timescale 1ns / 1ps
module cu(
	input[6:0]	opcode,
	input[2:0]	func3,
	input[6:0]	func7,
	input[31:0] command,
	output reg[1:0] ALUOp,
	output reg Alusrc,
	output reg jal,
	output	reg Branch,
	output	reg[1:0] RegSrc,
	output reg MemWrite,
	output	reg Regwrite
    );
	//opcode decode
	initial begin ALUOp<=0;   Alusrc<=0;   jal<=0; Branch<=0;  RegSrc<=0;  MemWrite<=0;    Regwrite<=0;    end //开始ctrl[8],ctrl[9]没有初值，必须赋值
    always @(*) 
    begin
        case(opcode)	
		7'b0010011:		//ADDI，slli,slri
			begin
			jal=0;
			Branch=0;
			RegSrc=2'b00;		//rd=alureuslt
			MemWrite=0;
			Alusrc=1;
			Regwrite=1;
			ALUOp=2'b00;		//addi rd,rs1,imm 
			end
		7'b0110011:	begin	//ADD,SUB
			jal=0;
			Branch=0;
			RegSrc=2'b00;
			MemWrite=0;
			Alusrc=0;
			Regwrite=1;
			ALUOp=2'b10;
			end
		7'b0010111:	begin	//AUIPC
			jal=0;
			Branch=0;
			RegSrc=2'b11;			//RegSrc=0x11,writedata=PCin+Imm
			MemWrite=0;
			Alusrc=1'bx;
			Regwrite=1;
			ALUOp=2'bxx;		
			end
		7'b1101111:		//JAL
			begin
			jal=1;
			Branch=0;
			RegSrc=2'b10;		//rd=PCadd
			MemWrite=0;
			Alusrc=1'b0;
			Regwrite=1;
			ALUOp=2'bxx;
			end
		7'b1100111:		//JALR
			begin
			jal=1;
			Branch=0;
			RegSrc=2'b10;
			MemWrite=0;
			Alusrc=1;
			Regwrite=1;
			ALUOp=2'bxx;
			end
		7'b1100011:	begin	//BEG&BLT
			jal=1'b0;
			Branch=1;
			RegSrc=2'bxx;		//don't need rd
			MemWrite=0;
			Alusrc=0;
			Regwrite=0;
			ALUOp=2'b01;
			end
		7'b0000011: 	begin	//LW
			jal=0;
			Branch=0;
			RegSrc=2'b01;		//wd=DM
			MemWrite=0;
			Alusrc=1;		//Alusrc=1,	rs2=Imm
			Regwrite=1;
			ALUOp=2'b00;
			end
		7'b0100011: 	begin	//sw
			jal=0;
			Branch=0;
			RegSrc=2'bxx;	//don't need rd	
			MemWrite=1;
			Alusrc=1;		
			Regwrite=0;      
			ALUOp=2'b00; 
			end
		7'b1111111:   begin     //若为dflush==1时输出指令，则将控制信号全部置为0
		    jal=0;
			Branch=0;
			RegSrc=2'bxx;	
			MemWrite=0;
			Alusrc=0;		
			Regwrite=0;
			ALUOp=2'b00;
			end
			default: begin 
			jal=0;
			Branch=0;
			RegSrc=2'b0;	//don't need rd	
			MemWrite=0;
			Alusrc=0;		
			Regwrite=0;
			ALUOp=2'b00;
			end
		endcase
		end
endmodule