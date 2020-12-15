`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2020 01:47:27 PM
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


module top( clk, reset, address, data, cs, we, oe );
input clk, reset, cs, we, oe;
output [7:0] address;
inout [3:0] data;


mem_fsm g1(.clk(clk), .reset(reset), .address(address), .data(data), .cs(cs), .we(we), .oe(oe));
SRAM g2(.address(address), .data(data), .cs(cs), .we(we), .oe(oe));

endmodule
