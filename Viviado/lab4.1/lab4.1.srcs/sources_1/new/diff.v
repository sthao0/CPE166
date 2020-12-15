`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 06:02:14 PM
// Design Name: 
// Module Name: diff
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


module diff (clk, clr, d, q, ce);
input[3:0] d;
input clk, ce, clr;
output reg[3:0] q;
always@(posedge clr or posedge clk)
begin
 if(clr) q <= 0;
 else if(ce) q <= d;
end 
endmodule
