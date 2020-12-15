`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2020 11:14:28 PM
// Design Name: 
// Module Name: part1
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


module part1(x,y,p);
input [2:0]x,y;
output [5:0]p;

wire[5:0]cin;
wire[1:0]sum;
wire[5:0]p;
wire[8:0]q;

assign q[0]=x[0]&y[0];
assign q[1]=x[1]&y[0];
assign q[2]=x[2]&y[0];
assign q[3]=x[0]&y[1];
assign q[4]=x[1]&y[1];
assign q[5]=x[2]&y[1];
assign q[6]=x[0]&y[2];
assign q[7]=x[1]&y[2];
assign q[8]=x[2]&y[2];

assign p[0]=q[0];
Hadder ha1(.a(q[3]),.b(q[1]), .cout(cin[0]), .sum(p[1]));
FullerAdder fa1(.a(q[4]),.b(q[2]),.cin(cin[0]),.cout(cin[1]),.sum(sum[0]));
Hadder ha2(.a(q[5]),.b(cin[1]), .cout(cin[2]), .sum(sum[1]));
Hadder ha3(.a(q[6]),.b(sum[0]), .cout(cin[3]), .sum(p[2]));
FullerAdder fa2(.a(sum[1]),.b(q[7]),.cin(cin[3]),.cout(cin[4]),.sum(p[3]));
FullerAdder fa3(.a(cin[2]),.b(q[8]),.cin(cin[4]),.cout(p[5]),.sum(p[4]));

endmodule

