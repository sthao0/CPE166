`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2020 02:51:20 PM
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


module top_tb();
reg clk, reset;
wire [5:0] address;
wire [3:0] data;
top uut(.clk(clk),.reset(reset),.address(address),.data(data));
always begin
#5 clk = ~clk;
end
initial begin
clk = 0;
#20 reset = 1;
#20 reset = 0;
#1000 $stop;
end
endmodule
