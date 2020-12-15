`timescale 1ns / 1ps
module clkdiv10_tb;
reg clkin;
wire clkout;
integer k;
clkdiv10 uut ( clkin, clkout );
initial clkin = 0;
always #2 clkin = ~ clkin;
initial begin
 k=0;
 while( k != 50 )
 begin
 @(clkin);
 $display($time, " ns, k=%d, clkout=%b", k, clkout);
 k = k + 1;
 end
 #5 $stop;
end
endmodule
