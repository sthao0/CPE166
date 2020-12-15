`timescale 1ns/1ps

module bcd(clk,dout);

input clk;
output [3:0] dout;

reg [3:0] dout,cnt;

initial
dout=0;
initial
cnt=0;
always @(posedge clk)
begin
if(dout==9) //condition to end count
begin
    dout<=0;
end

else
begin
    cnt<=cnt+1;
    dout=dout+1;
end
end
endmodule