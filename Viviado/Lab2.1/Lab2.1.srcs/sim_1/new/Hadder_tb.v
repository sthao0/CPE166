`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 08:43:35 PM
// Design Name: 
// Module Name: Hadder_tb
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


module Hadder_tb;
reg    a,b;
wire   cout,sum;
Hadder g1(.a(a),.b(b),.cout(cout),.sum(sum));

initial
begin
a=0;
b=0;

#10;
a=1;
b=0;

#10;
a=0;
b=1;

#10;
a=1;
b=1;

#10 $stop;

    
end
endmodule

