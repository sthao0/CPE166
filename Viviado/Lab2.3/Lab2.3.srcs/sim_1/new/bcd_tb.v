`timescale 1ns/1ps
module bcd_tb();
reg clk;
wire [3:0] dout;

bcd uut(clk, dout);

initial begin 
clk=0;
forever #5 clk=~clk;
end

endmodule

