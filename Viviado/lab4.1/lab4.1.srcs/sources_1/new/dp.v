`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:10:17 PM
// Design Name: 
// Module Name: dp
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


module dp(m0, m1, m2, cin, clr, w, ce, sel, s, clk, r0, r1, r2);
 input clk, clr, cin;
 input[3:0] m0,m1,m2,ce;
 input[2:0] w, s;
 input[1:0] sel;
 output[3:0] r0, r1, r2;

 wire [3:0] y0, y1, y2, y3, a, b;

 mux2to1 g1(.d0(m0),.d1(a), .s(w[0]), .y(y0));
 mux2to1 g2(.d0(m1),.d1(a), .s(w[1]), .y(y1));
 mux2to1 g3(.d0(m2),.d1(a), .s(w[2]), .y(y2));

 diff d1(.clk(clk), .clr(clr), .ce(ce[0]),.d(y0),.q(r0));
 diff d2(.clk(clk), .clr(clr), .ce(ce[1]),.d(y1),.q(r1));
 diff d3(.clk(clk), .clr(clr), .ce(ce[2]),.d(y2),.q(r2));
 diff d4(.clk(clk), .clr(clr), .ce(ce[3]),.d(y3),.q(a));

 mux4to1 g4(.d0(r0),.d1(r1),.d2(r2),.d3(4'b0000),.sel(sel),.y(b));

 alu a1(.a(a),.b(b),.s(s),.cin(cin),.y(y3)); 
endmodule
