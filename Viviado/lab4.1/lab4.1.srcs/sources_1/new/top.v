`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:31:18 PM
// Design Name: 
// Module Name: top
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


module top(sw1, clk, m0, m1, m2, cin, r0, r1, r2);
 input clk, sw1, cin;
 input [3:0] m0, m1, m2;
 output[3:0] r0,r1,r2;
 wire clr;
 wire [1:0] sel;
 wire [2:0] w,s;
 wire [3:0] ce, r0,r1,r2;
 fsm g1(.reset(sw1), .clk(clk), .clr(clr), .w(w), .ce(ce), .sel(sel), .s(s));
dp g2(.m0(m0), .m1(m1), .m2(m2), .cin(cin), .clr(clr), .w(w), .ce(ce), .sel(sel), .s(s),.clk(clk), .r0(r0), .r1(r1), .r2(r2));
endmodule
