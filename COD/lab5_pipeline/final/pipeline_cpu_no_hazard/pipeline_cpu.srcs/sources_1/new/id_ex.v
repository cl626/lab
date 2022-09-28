`timescale 1ns / 1ps

module id_ex(
input clk_cpu,fstall,dstall,dflush,eflush,
input[31:0] pcd,rs1,rs2,Imm,ir,
input[3:0]  alucontrol,
input[4:0]  rda,
input jal,branch,alusrc,memwrite,regwrite,
input[1:0]  afwd,bfwd,aluop,regsrc,  
output  reg[31:0]    pce,a,b,imm,ire,ctrl,
output reg[4:0]     rd,
output  reg[3:0]     id_ex_alucontrol
  );
initial begin pce<=0;   a<=0;   b<=0;   imm<=0; ire<=0; ctrl<=0;  rd<=0;    id_ex_alucontrol<=0;    end    
always@(posedge clk_cpu)    begin 
    if(eflush)  begin   pce<=pce;   a<=a;   b<=b;   imm<=imm;   ire<=ire;   ctrl<=0; rd<=rd; id_ex_alucontrol<=id_ex_alucontrol; end
    else    begin pce<=pcd;   a<=rs1;     b<=rs2;     imm<=Imm;   ctrl<={fstall,dstall,dflush,eflush,2'b0,afwd,2'b0,bfwd,1'b0,regwrite,regsrc,3'b0,memwrite,2'b0,jal,branch,3'b0,alusrc,2'b0,aluop};
    rd<=rda;   id_ex_alucontrol<=alucontrol; end     
    end
endmodule
