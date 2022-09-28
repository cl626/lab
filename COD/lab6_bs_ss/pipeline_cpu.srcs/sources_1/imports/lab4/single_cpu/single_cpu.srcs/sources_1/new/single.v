`timescale 1ns / 1ps
module pipeline(
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
//流水线寄存器值
wire[31:0]	pc;
wire [31:0] pcin, pcd, pce;
wire [31:0] ir, imm, mdr;
wire [31:0] a, b, y, bm, yw;
wire [4:0]  rd, rdm, rdw;
wire [31:0] ctrl, ctrlm, ctrlw;

//pdu exemplification
pdu pduex(	.clk(clk),	.rst(rst),	.run(run),	.step(step),	.clk_cpu(clk_cpu),	.valid(valid),	.in(in),	.check(check),	.out0(out0),	.an(an),	.seg(seg),	.ready(ready),	
.io_addr(io_addr[7:0]),	.io_dout(io_dout), .io_we(io_we),	.io_din(io_din),	.m_rf_addr(m_rf_addr),	.rf_data(rf_data),	.m_data(m_data),	.pcin(pcin),    .pc(pc),   .pcd(pcd),  
.pce(pce),  .ir(ir),    .imm(imm),  .mdr(mdr),  .a(a),  .b(b),  .y(y),  .bm(bm),    .yw(yw),    .rd(rd),    .rdm(rdm),  .rdw(rdw),  .ctrl(ctrl),    .ctrlm(ctrlm),  .ctrlw(ctrlw)   );	

//cpu exemplification 
cpu cpuex(
.clk_cpu(clk_cpu),	.rst(rst),	.m_rf_addr(m_rf_addr),	.io_din(io_din),	.io_addr(io_addr),	.io_dout(io_dout),	.io_we(io_we),	.rf_data(rf_data),	.m_data(m_data),	.pcin(pcin), .pc(pc),  .pcd(pcd),  
.pce(pce),  .ir(ir),   .imm(imm),  .mdr(mdr),  .a(a),  .b(b),  .y(y),  .bm(bm),    .yw(yw),    .rd(rd),    .rdm(rdm),  .rdw(rdw),  .ctrl(ctrl),    .ctrlm(ctrlm),  .ctrlw(ctrlw));

endmodule 
