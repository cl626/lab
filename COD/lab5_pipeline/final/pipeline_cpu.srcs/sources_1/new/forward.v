`timescale 1ns / 1ps

module forward(
input clk_cpu,
input[31:0] ir,
input[4:0] rd,rdm,
input id_ex_regwrite,ex_mem_regwrite,
output  reg[1:0] afwd,bfwd
);
initial begin afwd<=0;  bfwd<=0;    end     
always@(posedge clk_cpu)    begin
        begin   if(id_ex_regwrite&&rd==ir[19:15])    afwd<=1;
        else    if(ex_mem_regwrite&&rdm==ir[19:15])    afwd<=2;
        //else  if(mem_wb_regwrite&&rdw==ir[19:15])      afwd<=2;
        else  afwd<=0;  end   
        begin   if(ir[6:0]==7'b0110011|ir[6:0]==7'b1100011|ir[6:0]==7'b0100011) //add/sub/beq/sw,ÓÐrs2
        begin if(id_ex_regwrite&&rd==ir[24:20])     bfwd<=1;   
        else if(ex_mem_regwrite&&rdm==ir[24:20])   bfwd<=2; 
        else bfwd<=0;   end
        else bfwd<=0; end
    end
endmodule
