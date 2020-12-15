`timescale 1ns / 1ps
module HA_tb;
reg a, b;
wire cout, sum;
HA u1 ( .a(a), .b(b), .cout(cout), .sum(sum) );
initial begin
{a, b} = 2'b00;
#10
{a, b} = 2'b01;
#10
{a, b} = 2'b10;
#10
{a, b} = 2'b11;
#10
$stop;
end
initial $monitor($time, "ns, a=%b, b=%b, cout=%b, sum=%b", a, b, cout, sum);
endmodule