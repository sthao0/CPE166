`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2020 09:53:07 PM
// Design Name: 
// Module Name: bvm_tb
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

module bvm_tb();
reg clk, reset, one, two, five;
wire d;
wire [2:0] r;
abvm u1(.clk(clk), .reset(reset), .one(one), .two(two), .five(five), .d(d), .r(r));
initial clk =0;
always #2 clk = ~clk;
initial begin
 reset = 1;one =0;two = 0;five =0;
    
    #5 reset = 0; one =1;two =0; five=0;
    #5 one =0; two =0; five =1;
    #5 reset =1; one =0; two =0; five =0;
    #5 reset = 0; one =1; two=0; five=0;
    #5 one =0; two =1; five =0;
    #5 one =0; two = 0; five = 1;
    #5 $stop;
 end
endmodule

