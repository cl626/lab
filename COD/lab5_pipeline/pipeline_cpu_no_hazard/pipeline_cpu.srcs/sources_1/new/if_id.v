`timescale 1ns / 1ps

module if_id(
input clk_cpu,dstall,dflush,
input[31:0] pc,
input[31:0] command,
output  reg[31:0] pcd,
output  reg[31:0] ir,
output  reg[4:0] rs1,rs2
    );
always@(posedge clk_cpu)    begin
    if(dflush)  begin pcd<=pcd; ir<=32'h0000007e;rs1<=0;rs2<=0; end
    else    begin  if(dstall)  begin   pcd<=pcd;   ir<=ir;  rs1<=rs1;   rs2<=rs2;   end
    else    begin   pcd<=pc;   ir<=command; rs1<=command[19:15];    rs2<=command[24:20];    end  end
    end
endmodule
