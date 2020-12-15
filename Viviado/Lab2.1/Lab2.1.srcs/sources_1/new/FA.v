`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2020 07:30:33 PM
// Design Name: 
// Module Name: FA
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


module FA(a,b,cin,cout,sum);
input a,b, cin;
output cout,sum;
wire m,n,p;
Hadder g1(.a(a),.b(b),.cout(n),.sum(m));
Hadder g2(.a(cin),.b(m),.cout(p),.sum(sum));

assign cout = p|n;

endmodule

