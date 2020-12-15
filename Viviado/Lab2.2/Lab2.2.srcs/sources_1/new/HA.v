`timescale 1ns / 1ps
module HA( a, b, cout, sum);
input a, b;
output cout, sum;
assign cout = a & b;
assign sum = a ^ b;
// xor g1 (sum, a, b);
// and g2 (cout, a, b);
endmodule