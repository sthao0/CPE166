`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 01:27:48 PM
// Design Name: 
// Module Name: 2bcd_tb
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

module Fbcd_tb;
reg clk,s;
wire [3:0]y;

Fbcd uut(clk, s, y);

integer i;
initial clk = 0;
always #1 clk = ~clk;

initial begin 
 for (i=0; i<64; i=i+1)
    begin
    {s} = i;
    #100;
    end
#100 $stop;
 
end
endmodule
