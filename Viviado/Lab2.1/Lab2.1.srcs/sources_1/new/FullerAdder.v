`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 08:41:40 PM
// Design Name: 
// Module Name: FullerAdder
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


module FullerAdder(a,b,cin,cout,sum);
input a,b,cin;
output cout,sum;
wire m,n,p;
Hadder g1(.a(a),.b(b),.cout(n),.sum(m));
Hadder g2(.a(cin),.b(m),.cout(p),.sum(sum));

assign cout = p|n;

endmodule
