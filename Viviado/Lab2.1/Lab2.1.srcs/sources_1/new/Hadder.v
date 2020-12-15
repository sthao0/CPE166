`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 08:42:54 PM
// Design Name: 
// Module Name: Hadder
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

module Hadder(a,b,cout,sum);
input a;
input b;
output cout;
output sum;

assign cout = a&b;
assign sum = a^b;
endmodule

