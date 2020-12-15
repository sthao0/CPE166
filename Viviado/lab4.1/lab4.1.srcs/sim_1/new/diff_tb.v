`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:02:50 PM
// Design Name: 
// Module Name: diff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module diff_tb;
reg[3:0] d;
reg clk, clr, ce;
wire[3:0] q;
diff u1(clk, clr, d, q, ce);
initial clk = 0;
always #10 clk = ~clk;
initial begin
 clr = 1; d = 1; ce = 1;
 #20 clr = 0;
 #20 ce = 0;
 #40 $stop;
end 
endmodule
