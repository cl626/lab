`timescale 1ns / 1ps

module mem_wb(
input clk_cpu,iom,
input[31:0] readdata1,y,ctrlm,pcm,
input[4:0]  rdm,
output  reg [31:0]   ctrlw,mdr,yw,pcw,
output  reg [4:0]  rdw,
output  reg iow
);
always@(posedge clk_cpu)    begin
    ctrlw<=ctrlm;   mdr<=readdata1; yw<=y;  pcw<=pcm;   rdw<=rdm;   iow<=iom;   pcw<=pcm;
    end
endmodule
