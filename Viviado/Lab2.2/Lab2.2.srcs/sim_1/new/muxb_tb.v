`timescale 1ns / 1ns
module muxb_tb;
reg [3:0] d1,d0;
reg s;
wire [3:0] y;
muxb k1(d1, d0, s, y);
initial begin
d1 = 4'b0000; d0 = 4'b0000; s= 0;
#10 d1 = 4'b0001; d0 = 4'b0000; s= 0;
#10 d1 = 4'b0001; d0 = 4'b0010; s= 0;
#10 d1 = 4'b1001; d0 = 4'b0000; s= 1;
#10 d1 = 4'b1001; d0 = 4'b1000; s= 1;
#10 d1 = 4'b0001; d0 = 4'b1100; s= 1;
#10 $stop;
end
initial $monitor($time, "ns, d1=%b, d0=%b, s = %b, y= %b", d1, d0, s, y);
endmodule