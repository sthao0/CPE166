`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:12:35 PM
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb;
reg clk, reset;
wire clr;
wire [1:0] sel;
wire [2:0] w, s;
wire [3:0] ce;
fsm uut(clk, reset, clr, ce, w, s, sel);
always
begin
#5 clk = ~clk;
end
initial
begin
clk = 0;
#2 reset = 1;
#10 reset = 0;
#150
$stop;
end 
endmodule
