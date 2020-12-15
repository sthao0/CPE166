`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:05:03 PM
// Design Name: 
// Module Name: mux2to1_tb
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


module mux2to1_tb;
reg[3:0] d0, d1;
reg s;
wire[3:0] y;
mux2to1 u1(d0, d1, s, y); 
initial begin
 d1 = 0; d0 = 0; s = 0;
 #10 d1 = 0; d0 = 0; s = 1;
 #10 d1 = 0; d0 = 1; s = 0;
 #10 d1 = 0; d0 = 1; s = 1;
 #10 d1 = 1; d0 = 0; s = 0;
 #10 d1 = 1; d0 = 0; s = 1;
 #10 d1 = 1; d0 = 1; s = 0;
 #10 d1 = 1; d0 = 1; s = 1;
 #10 $stop;
end 
endmodule
