`timescale 1ns / 1ps

module hazard_branch(
input clk_cpu,
input[31:0] ir,
input[4:0] rd,
input  id_ex_regsrc,branch,zero,
output reg fstall,dstall,dflush,eflush
);
initial begin fstall<=0; dstall<=0; dflush<=0;  eflush<=0;  end
 always@(*)   begin 
    if(branch&&zero)    begin fstall<=0;    dstall<=0;  dflush<=1;    eflush<=1;  end 
    else  begin 
        if(ir[6:0]==7'b0110011|ir[6:0]==7'b1100011|ir[6:0]==7'b0100011)    begin 
        if((id_ex_regsrc==2'b01)&&(rd==ir[19:15]|rd==ir[24:20]))    
            begin   fstall<=1;   dstall<=1;    dflush<=0;  eflush<=1;   end       //stall  
        else begin fstall<=0;  dstall<=0;  dflush<=0;   eflush<=0;  end     end
 else if(ir[6:0]==7'b0010011|ir[6:0]==7'b1101111|ir[6:0]==7'b0000011)   begin   //addi或jal或lw
    if((id_ex_regsrc==2'b01)&&(rd==ir[19:15]))     
        begin   fstall<=1;   dstall<=1;  dflush<=0;  eflush<=1; end       //stall  
    else begin fstall<=0;  dstall<=0;  dflush<=0;   eflush<=0;  end     end  
    else begin fstall<=0;  dstall<=0;  dflush<=0;  eflush<=0;   end    
 end end //以下输出dflush,eflush信号
endmodule