`timescale 1ns / 1ps

module forward(
input clk_cpu,
input[31:0] ir,
input[4:0] rd,rdm,rdw,
input ex_mem_regwrite,mem_wb_regwrite,
output  reg[1:0] afwd,bfwd
);
always@(*)    begin
    if(ir[6:0]==7'b0110011|ir[6:0]==7'b1100011|ir[6:0]==7'b0100011)   begin     begin//∫¨rs2÷∏¡Ó
        if(ex_mem_regwrite&&rdm==ir[19:15])    afwd<=1;
        else if(ex_mem_regwrite&&rdm==ir[24:20])     bfwd<=1;   end begin
        if(mem_wb_regwrite&&rdw==ir[19:15])      afwd<=2;
        else if(mem_wb_regwrite&&rdw==ir[24:20])   bfwd<=2; end  end
     else if(ir[6:0]==7'b0010011|ir[6:0]==7'b1101111|ir[6:0]==7'b0000011)   begin
        if(ex_mem_regwrite&&rdm==ir[19:15])    afwd<=1;
        if(mem_wb_regwrite&&rdw==ir[19:15])      afwd<=2;    end        
    end
endmodule
