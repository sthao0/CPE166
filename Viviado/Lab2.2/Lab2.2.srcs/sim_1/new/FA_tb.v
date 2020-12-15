module FA_tb;
reg a, b, cin;
wire cout, sum;
FA u1 ( a, b, cin, cout, sum );
initial begin
{a, b, cin} = 3'b000;
#10 {a, b, cin} = 3'b001;
#10 {a, b, cin} = 3'b010;
#10 {a, b, cin} = 3'b011;
#10 {a, b, cin} = 4;
#10 {a, b, cin} = 5;
#10 {a, b, cin} = 6;
#10 {a, b, cin} = 7;
#10 $stop;
end
initial $monitor($time, "ns, a=%b, b=%b, cin = %b, cout=%b, sum=%b", a, b, cin, cout, sum);
endmodule