`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 01:14:28 PM
// Design Name: 
// Module Name: 2bcd
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


module Fbcd(clk,s,y);
input clk,s;
output [3:0]y; 
wire clkd,clky;
clkdiv10 g1(.clkin(clk), .clkout(clkd));
mux2to1 g2(.d0(clk), .d1(clkd),.s(s),.y(clky)); 
bcd g3(.clk(clky), .dout(y));




endmodule
