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
output[31:0]	pc
);

wire	jal,Branch,Alusrc,Memwrite,Regwrite;
//reg     rst_r,rst_2r;
//wire rst_p;	
wire[1:0]	ALUOp,RegSrc;
wire[3:0]	alucontrol;
wire[31:0] 	command,imm,rd1,rd2,rd3,PCout;
reg[31:0] 	PCin;

wire[31:0] read2,writedata,aluresult;
wire    zero;
//always @(posedge clk_cpu) begin
//    rst_r<= rst;
//    rst_2r<=rst_r;        
//end
//assign rst_p=rst_r&~rst_2r;
always@(posedge clk_cpu, posedge rst) begin   
    if(rst) PCin<=32'h00003000;
    else    PCin<=PCout;  end
assign PCout=((Branch&zero)|jal)?(PCin+imm):(PCin+4);
//calculate PCout


single_text_mem im(
  .a(PCin[9:2]),      // input wire [7 : 0] a
  .spo(command)  // output wire [15 : 0] spo
);


//decoder exemplification
cu cuex(.opcode(command[6:0]),	.func3(command[14:12]),	.func7(command[31:25]),		.command(command[31:0]),	.jal(jal),	.Branch	(Branch),	.RegSrc	(RegSrc),	.MemWrite(Memwrite),	.Alusrc(Alusrc),    .Regwrite(Regwrite),	.ALUOp(ALUOp)	);

Imm Immex(.command(command),    .imm(imm));

regfile regfile1(clk_cpu,Regwrite,command[11:7],command[19:15],command[24:20],m_rf_addr,
	writedata,rd1,rd2,rd3);

//分配alu第二个操作数
assign read2=(Alusrc)?imm:rd2;

//alucontrol exemplification
alucontrol alucontrolex(.ALUOp(ALUOp),	.func7(command[31:25]),	.alucontrol(alucontrol));

//ALU exemplification
alu aluex(.alucontrol(alucontrol),	.func3(command[14:12]),	.jal(jal),	.rd1(rd1),	.read2(read2),	.aluresult(aluresult),	.zero(zero)	);

wire[31:0]	readdata1,readdata2;
single_data_mem	dm(aluresult[9:2],rd2[31:0],m_rf_addr,clk_cpu,(Memwrite&(~io_addr[10])),readdata1,readdata2);		

//閫夋嫨rd input
wire[31:0] a;
assign a=(io_addr[10])?io_din:readdata1;
assign writedata=(RegSrc==2'b11)?(PCin+imm):((RegSrc==2'b10)?(PCin+4):((RegSrc==2'b01)?a:((RegSrc==2'b00)?aluresult:0)));	    //各信号有效时可正确输出

assign pc=PCin;
assign rf_data=rd3;
assign m_data=readdata2;        //in_r对应rf/dm内容
assign io_addr=aluresult;
assign io_dout=rd2;
assign io_we=Memwrite&aluresult[10];		//assign io_addr[10]=
endmodule
