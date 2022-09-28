`timescale 1ns / 1ps

module if_id(
input clk_cpu,dstall,dflush,
input[31:0] pc,
input[31:0] command,
output  reg[31:0] pcd,
output  reg[31:0] ir
    );
initial begin pcd<=32'h00003000;    end
always@(posedge clk_cpu)    begin
    if(dflush)  begin pcd<=pcd; ir<=32'h0000007f; end
else    begin  if(dstall==0)  begin   pcd<=pc;   ir<=command; end   end
    end
endmodule
