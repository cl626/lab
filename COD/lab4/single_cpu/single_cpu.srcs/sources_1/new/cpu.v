`timescale 1ns / 1ps
module cpu(
input 		clk_cpu,rst,
input[7:0] 	m_rf_addr,
input[31:0] io_din,
output[31:0] io_addr,
output[31:0] io_dout,
output io_we,
output[31:0]	rf_data,
output[31:0]	m_data,
output [31:0]	pcin,
output reg [31:0] pc,       //仅pc为寄存器，其余输出信号在cpu中均为端口，在各自的引用模块中为寄存器
output[31:0]  pcd, pce,
output [31:0] ir, imm, mdr,
output [31:0] a, b, y, bm, yw,
output [4:0]  rd, rdm, rdw,
output [31:0] ctrl, ctrlm, ctrlw  
);

wire	jal,Branch,Alusrc,Memwrite,Regwrite;
//reg     rst_r,rst_2r;
//wire rst_p;	
wire[1:0]	ALUOp,RegSrc;
wire[3:0]	alucontrol,id_ex_alucontrol;
wire[31:0] 	rd1,rd2,rd3;

wire[31:0] read1,read2,writedata,aluresult;
wire    zero;

 wire[31:0] command,Imm,ire;        //id_ie阶段指令
 wire iom,iow;          //ex_mem_regfile和mem_wb_regf的io信号、
 wire[31:0] pcm,pcw;
 wire[1:0]  afwd,bfwd;
 wire dflush,eflush, fstall,dstall;
 
 wire[31:0] b1;
always@(posedge clk_cpu, posedge rst) begin   
    if(rst)   pc<=32'h00003000;   
    else  pc<=fstall?pc:pcin;   end
assign pcin=((ctrl[8]&&zero)||ctrl[9])?(pce+imm):(pc+4);
//assign pcin=pc+4;

single_text_mem im(.a(pc[9:2]),     .spo(command));

//decoder exemplification
cu cuex(.opcode(ir[6:0]),	.func3(ir[14:12]),	.func7(ir[31:25]),		.command(ir[31:0]),	.jal(jal),	.Branch	(Branch),	
.RegSrc	(RegSrc),	.MemWrite(Memwrite),	.Alusrc(Alusrc),    .Regwrite(Regwrite),	.ALUOp(ALUOp)	);

Imm Immex(.command(ir),    .imm(Imm));

//regfile regfile1(.clk(clk_cpu), .we(ctrlw[18]), .wa(rdw),  .ra1(ir[19:15]),    .ra2(ir[24:20]),    .ra3(m_rf_addr[4:0]),
//	.wd(writedata),    .rd1(rd1),  .rd2(rd2),  .rd3(rd3)   );  //regfile wa=rdw
regfile regfile1(.clk(clk_cpu), .we(ctrlw[18]), .wa(rdw),  .ra1(ir[19:15]),    .ra2(ir[24:20]),    .ra3(m_rf_addr[4:0]),
	.wd(writedata),    .dstall(dstall),    .rd1(rd1),  .rd2(rd2),  .rd3(rd3)   );  //regfile wa=rdw ,add dstall

//forward分配alu二个操作数
assign read1=(afwd==0)?a:((afwd==1)?y:((afwd==2)?writedata:0));       //改成tem
assign read2=(ctrl[4])?imm:((bfwd==0)?b:((bfwd==1)?y:((bfwd==2)?writedata:0)));       //写入不是mdr,imm写成Imm,纪念一下。。
assign b1=(bfwd==0)?b:((bfwd==1)?y:((bfwd==2)?writedata:0));
//alucontrol exemplification    //置于id周期
alucontrol alucontrolex(.ALUOp(ctrl[1:0]),	.func7(ire[31:25]),	.alucontrol(alucontrol));

//ALU exemplification
alu aluex(.alucontrol(alucontrol),	.func3(ire[14:12]),	.jal(ctrl[9]),	.rd1(read1),	.read2(read2),	.aluresult(aluresult),
	.zero(zero)	);

wire[31:0]	readdata1,readdata2;
single_data_mem	dm(y[9:2],bm[31:0],m_rf_addr,clk_cpu,io_we,readdata1,readdata2);		

wire[31:0] tem;         //第五周期。。
assign tem=(iow)?io_din:mdr;        //io_din/mdr/y      
assign writedata=(ctrlw[17:16]==2'b10)?(pcw+4):((ctrlw[17:16]==2'b01)?tem:((ctrlw[17:16]==2'b00)?yw:0));	    //各信号有效时可正确输出

assign rf_data=rd3;
assign m_data=readdata2;        //in_r对应rf/dm内容
assign io_addr=aluresult;
assign io_dout=b1;
assign io_we=ctrl[12]&&~aluresult[10];		//assign io_addr[10]=

if_id if_id1(.clk_cpu(clk_cpu),.dstall(dstall), .dflush(dflush),    .pc(pc),    .command(command),  .pcd(pcd),  .ir(ir));

//?dflush?
id_ex id_ex1(.clk_cpu(clk_cpu),  .fstall(fstall),   .dstall(dstall),    .dflush(dflush),    .eflush(eflush),  .pcd(pcd), 
 .rs1(rd1),    .rs2(rd2),    .Imm(Imm),    .rda(ir[11:7]),    .ir(ir),  .jal(jal),  .branch(Branch),    .alusrc(Alusrc),
 .memwrite(Memwrite),    .regwrite(Regwrite),    .afwd(afwd),    .bfwd(bfwd),    .aluop(ALUOp),  .regsrc(RegSrc),    .alucontrol(alucontrol),    
.pce(pce),  .a(a),  .b(b),  .imm(imm),  .ire(ire),  .ctrl(ctrl), .rd(rd),       .id_ex_alucontrol(id_ex_alucontrol));//rd=rda=ir[xx]
 
 ex_mem ex_mem1(.clk_cpu(clk_cpu),  .eflush(eflush),    .ctrl(ctrl),    .aluresult(aluresult),  .b1(b1),  .pce(pce),   .rd(rd),    .io_we(io_we),  
 .ctrlm(ctrlm), .y(y),  .bm(bm),    .pcm(pcm),  .rdm(rdm),  .iom(iom)); //b改为b1
 
 mem_wb mem_wb1(.clk_cpu(clk_cpu),  .iom(iom),  .readdata1(readdata1),  .y(y),  .pcm(pcm),  .rdm(rdm),  .ctrlm(ctrlm),
    .mdr(mdr),  .yw(yw),    .rdw(rdw),  .ctrlw(ctrlw),  .iow(iow),   .pcw(pcw));
    
forward forward1(.clk_cpu(clk_cpu), .ir(ir),   .rd(rd),    .rdm(rdm),
.ex_mem_regwrite(ctrlm[18]),    .id_ex_regwrite(ctrl[18]),    .afwd(afwd),    .bfwd(bfwd) );

//hazard_branch hazard_branch1(.clk_cpu(clk_cpu),    .ir(command),     .rd(ir[11:7]),   .id_ex_regsrc(RegSrc),     .branch(ctrl[8]),    .zero(zero),    .fstall(fstall),    .dstall(dstall),    .dflush(dflush),    .eflush(eflush) );    
hazard_branch hazard_branch1(.clk_cpu(clk_cpu),    .ir(ir),     .rd(rd),   .id_ex_regsrc(ctrl[17:16]),     .branch(ctrl[8]), 
   .zero(zero),    .jal(ctrl[9]),   .fstall(fstall),    .dstall(dstall),    .dflush(dflush),    .eflush(eflush) );    //第1个阶段测直接停顿

endmodule