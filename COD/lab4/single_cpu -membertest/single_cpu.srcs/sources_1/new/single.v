`timescale 1ns / 1ps
module single(
input clk,
input step,
input   rst,run,valid,
input[4:0]  in,
output  ready,
output[1:0] check,
output[4:0] out0,
output[2:0] an,
output[3:0]	seg
);

wire   clk_cpu ;
wire[7:0] 	m_rf_addr;
wire[31:0] io_din;
wire[31:0] io_addr;
wire[31:0] io_dout;
wire io_we;
wire[31:0]	rf_data;
wire[31:0]	m_data;
wire[31:0]	pc;

//pdu exemplification
pdu_1cycle pduex(	.clk(clk),	.rst(rst),	.run(run),	.step(step),	.clk_cpu(clk_cpu),	.valid(valid),	.in(in),	.check(check),	.out0(out0),	.an(an),	.seg(seg),	.ready(ready),	.io_addr(io_addr[7:0]),	.io_dout(io_dout), .io_we(io_we),	.io_din(io_din),	.m_rf_addr(m_rf_addr),	.rf_data(rf_data),	.m_data(m_data),	.pc(pc));	

//cpu exemplification 
cpu cpuex(
.clk_cpu(clk_cpu),	.rst(rst),	.m_rf_addr(m_rf_addr),	.io_din(io_din),	.io_addr(io_addr),	.io_dout(io_dout),	.io_we(io_we),	.rf_data(rf_data),	.m_data(m_data),	.pc(pc));

endmodule 
