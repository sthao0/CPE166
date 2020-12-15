`timescale 1ns / 1ns
module muxb(d1, d0, s, y);
input [3:0] d1, d0;
input s;
output [3:0] y;
reg [3:0] y;
always@(d1 or d0 or s)
begin
if (s) y = d1;
else y = d0;
end
endmodule
