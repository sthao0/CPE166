`timescale 1ns / 1ps
module FA( a, b, cin, cout, sum);
input a, b, cin;
output cout, sum;
wire m, n, p;
HA g1 (.cout(n), .sum(m), .a(a), .b(b) );
HA g2 (.cout(p), .sum(sum), .a(cin), .b(m) );
assign cout = p | n;
endmodule
