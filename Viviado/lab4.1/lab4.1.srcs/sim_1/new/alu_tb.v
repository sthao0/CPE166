`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:07:41 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;
reg[3:0] a, b;
reg[2:0] s;
reg cin;
wire[3:0] y;
alu u1(a, b, s, cin, y);
initial begin
 s = 0; a = 1; b = 2; cin = 1;
 #10 s = 1; a = 1; b = 0; cin = 1;
 #10 s = 2; a = 1; b = 0; cin = 1;
 #10 s = 3; a = 1; b = 0; cin = 1;
 #10 s = 4; a = 1; b = 0; cin = 1;
 #10 s = 5; a = 1; b = 0; cin = 1;
 #10 s = 6; a = 1; b = 0; cin = 1;
 #10 s = 7; a = 1; b = 0; cin = 1;
 #10 $stop; 
 end
endmodule
