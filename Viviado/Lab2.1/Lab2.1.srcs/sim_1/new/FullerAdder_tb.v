`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 08:46:37 PM
// Design Name: 
// Module Name: FullerAdder_tb
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


module FullerAdder_tb;
reg    a,b,cin;
wire   cout,sum;
FullerAdder u1(.a(a),.b(b),.cin(cin),.cout(cout),.sum(sum));

initial begin
a= 0;
b=0;
cin=0;
#10;
a=0;
b=0;
cin=1;
#10;
a=0;
b=1;
cin=0;
#10;
a=0;
b=1;
cin=1;
#10;
a=1;
b=0;
cin=0;
#10;
a=1;
b=0;
cin=1;
#10;
a=1;
b=1;
cin=0;
#10;
a=1;
b=1;
cin=1;

#10 $stop;

end

endmodule

