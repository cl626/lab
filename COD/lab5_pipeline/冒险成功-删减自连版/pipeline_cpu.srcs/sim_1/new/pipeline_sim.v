`timescale 1ns / 1ps

module pipeline_sim(    );
reg clk,step,rst,run,valid;
wire ready;
wire[1:0] check;
reg[4:0]   in;
wire[4:0] out0;
wire[2:0]   an;
wire[3:0]   seg;
initial begin clk=0;forever #5 clk=~clk;end
initial begin rst=1; run=1;step=0;valid=0;in=0; #15 rst=0;end
pipeline  pipeline1(
    .clk(clk), 
    .step(step),
    .rst(rst),
    .run(run),
    .valid(valid),
    .in(in),
    .ready(ready),
    .check(check),
    .out0(out0),
    .an(an),
	.seg(seg)
);
endmodule
