`timescale 1ns / 1ps
module CSA8_tb;
reg cin;
reg [7:0] a,b;
wire cout;
wire [7:0] sum;
CSA8 u1(a, b, cin, cout, sa, sb, sum);
initial begin
cin = 0; a = 8; b = 42;
#10;
cin = 1; a = 12; b = 42;
#10;
cin = 0; a = 8; b = 42;
#10;
cin = 1; a = 9; b = 42;
#10;
cin = 0; a = 15; b = 42;
#10;
cin = 0; a = 16; b = 42;
#10;
cin = 0; a = 17; b = 42;
#10 $stop;
end
endmodule