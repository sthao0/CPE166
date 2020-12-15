`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:11:46 PM
// Design Name: 
// Module Name: fsm
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


module fsm(clk, reset, clr, w, ce, sel, s);
 input clk, reset;
 output reg  clr;
 output reg [2:0] w, s;
 output reg [1:0] sel;
 output reg [3:0] ce;

 reg [2:0] cs, ns;
 parameter s0=0, s1=1, s2=2, s3=3, s4=4, s5=5;

 always@(posedge clk or posedge reset) begin

 if( reset ) begin
 cs <= s0;
 end else begin
 cs <= ns;
 end

 end

 always@(cs) begin

 case(cs)
 s0 : begin
 clr = 1'b1;
 w = 3'b000;
 s = 3'b000;
 sel = 2'b00;
 ce = 4'b0000;
 ns <= s1;
 end

 s1 : begin
 clr = 1'b0;
 w = 3'b101;
 s = 3'b000;
 sel = 2'b00;
 ce = 4'b0111;
 ns <= s2;
 end
 s2 : begin
 clr = 1'b0;
 w = 3'b100;
 s = 3'b010;
 sel = 2'b11;
 ce = 4'b1000;
 ns <= s3;
 end

 s3 : begin
 clr = 1'b0;
 w = 3'b100;
 s = 3'b001;
 sel = 2'b10;
 ce = 4'b1000;
 ns <= s4;
 end

 s4 : begin
 clr = 1'b0;
 w = 3'b000;
 s = 3'b000;
 sel = 2'b00;
 ce = 4'b0100;
 ns <= s5;
 end

 s5 : begin
 clr = 1'b0;
 w = 3'b000;
 s = 3'b000;
 sel = 2'b00;
 ce = 4'b0000;
 ns <= s5;
 end
 default : ns = s0;
 endcase
 end 
endmodule
