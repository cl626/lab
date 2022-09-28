`timescale 1ns / 1ps

module ex_mem(  
input clk_cpu,eflush,
input[31:0]     ctrl,aluresult,b,pce,
input[4:0]      rd,io_we,
output  reg[31:0]    ctrlm,y,bm,pcm,
output  reg[4:0] rdm,
output  reg iom
    );
always@(posedge clk_cpu)    begin
    if(eflush)  ctrlm<=0;
    else   begin  ctrlm<=ctrl;    y<=aluresult;   bm<=b;  pcm<=pce; rdm<=rd;    iom<=io_we;  end   
    end
endmodule
