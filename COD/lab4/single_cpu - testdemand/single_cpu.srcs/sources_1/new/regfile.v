`timescale 1ns/1ps
module regfile(
	wire clk,we,
	wire[4:0] wa,ra1,ra2,ra3,
	wire[31:0] wd,
	output reg [31:0] rd1,rd2,rd3
);
integer	i=0;
reg[31:0]	REG_FILE[31:0];
	initial 
	begin 
		for(i=0;i<32;i=i+1)
			REG_FILE[i]<=0;
			end
	always@(posedge clk)
	begin
		if(we&(wa!=5'b0))     //reg[0]==0
		REG_FILE[wa]<=wd;
		end
	always@(*)
	begin
		rd1<=REG_FILE[ra1];
		rd2<=REG_FILE[ra2];
		rd3<=REG_FILE[ra3];
		end
endmodule