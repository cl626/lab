`timescale 1ns / 1ps

module branch(
input clk_cpu,
input branch,zero,
output reg[1:0] dflush,eflush
);
always@(posedge clk_cpu)    begin
if(branch&&zero)  begin dflush<=1; eflush<=1;  end
else begin dflush<=0;   eflush<=0;     end
end
endmodule