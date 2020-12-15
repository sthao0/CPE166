`timescale 1ns / 1ns
module RCA4 (a, b, cin, cout, sum);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire [2:0] m;
FA h1(.cout(m[0]), .sum(sum[0]), .a(a[0]), .b(b[0]), .cin(cin));
FA h2(.cout(m[1]), .sum(sum[1]), .a(a[1]), .b(b[1]), .cin(m[0]));
FA h3(.cout(m[2]), .sum(sum[2]), .a(a[2]), .b(b[2]), .cin(m[1]));
FA h4(.cout(cout), .sum(sum[3]), .a(a[3]), .b(b[3]), .cin(m[2]));
endmodule
