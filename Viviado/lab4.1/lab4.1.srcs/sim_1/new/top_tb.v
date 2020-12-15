`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 08:18:06 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb;
 reg[3:0] m0,m1,m2,ce;
 reg[2:0] w,s;
 reg[1:0] sel;
 reg sw1, clk, clr, cin;
 wire [3:0] r0,r1,r2;
 top utt(sw1, clk, m0, m1, m2, cin, r0, r1, r2);
 initial
 begin
 sw1= 1;
 clr =1'b1; w= 3'b000; ce= 4'b0000; sel=2'b00; s = 3'b000; clk = 1'b0; m2 = 4'b0000;
m0=4'b0000; m1= 4'b0000;
 cin = 1;
 end
 always #1 clk =~clk;
 initial begin
 #10; sw1 = 0;
 #8; clr = 1'b0;
 #2; ce = 4'b0011; sel = 2'b00; s= 3'b010;
 #2; ce = 4'b1011;
 #2; ce = 4'b0011; sel = 2'b01; s= 3'b001;
 #2; ce = 4'b1011;
 #2; ce = 4'b0100; w= 3'b100;
 #2; w= 3'b000; ce = 4'b0000; sel =2'b00; s = 3'b00;
 #10;
 #8; $stop;
 end
endmodule 
