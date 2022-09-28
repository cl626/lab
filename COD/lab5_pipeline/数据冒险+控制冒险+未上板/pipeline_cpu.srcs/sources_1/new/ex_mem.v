`timescale 1ns / 1ps

module ex_mem(  
input clk_cpu,eflush,
input[31:0]     ctrl,aluresult,b1,pce,
input[4:0]      rd,io_we,
output  reg[31:0]    ctrlm,y,bm,pcm,
output  reg[4:0] rdm,
output  reg iom
    );
initial begin rdm<=31;end
initial begin rdm<=31;  bm<=0;end
always@(posedge clk_cpu)    begin
   ctrlm<=ctrl;    y<=aluresult;   bm<=b1;  pcm<=pce; rdm<=rd;  iom<=io_we;  end   
endmodule
