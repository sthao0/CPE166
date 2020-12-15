`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:06:16 PM
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb;
reg[3:0] d0, d1, d2, d3;
reg[1:0] sel;
wire[3:0] y;
mux4to1 u1(d0, d1, d2, d3, sel, y);
initial begin
 d0 = 0; d1 = 1; d2 = 2; d3 = 3; sel = 2'b00;
 #10 d0 = 0; d1 = 1; d2 = 2; d3 = 3; sel = 2'b01;
 #10 d0 = 0; d1 = 1; d2 = 2; d3 = 3; sel = 2'b10;
 #10 d0 = 0; d1 = 1; d2 = 2; d3 = 3; sel = 2'b11;
 #10 $stop;
end 
endmodule
