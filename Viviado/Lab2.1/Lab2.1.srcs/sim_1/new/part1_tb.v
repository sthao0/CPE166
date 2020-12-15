`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2020 11:15:06 PM
// Design Name: 
// Module Name: part1_tb
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


module part1_tb;
reg    [2:0]x,y;
wire   [5:0]p;

integer i,k;

part1 u1(.x(x),.y(y),.p(p));

initial begin
x=3'b000;
y=3'b000;
for(i=0;i<8;i=i+1)
begin
    x=i;
    #10;
    for(k=0;k<8;k=k+1)
    begin
        y=k;
       #10;
    end
 end
#10 $stop;
end
endmodule
