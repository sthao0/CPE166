`timescale 1ns / 1ps
module mem_fsm(clk,reset,address,data,cs,we,oe
    );input clk, reset;
output [3:0] address;
inout [3:0] data;
output cs, we, oe;
reg cs, we, oe;
reg [5:0] address;
reg [3:0] data_reg;
reg [2:0] state;
parameter idle = 3'b000, s1= 3'b001, s2= 3'b010, s3=3'b011;
assign data = data_reg;
always@(posedge clk or posedge reset)
begin
if (reset)
begin
state <= idle;
address <= 0;
end
else
case (state)
idle: begin
state <= s1;
address <= 0;
end
s1: begin
state <= s2;
address <= 0;
end
s2: begin
if(address == 32) begin
state <= s3;
end
else begin
address <= address + 1;
state <= s2;
end
end
s3: begin
if(address == 0) begin
state <= s1;
end
else begin
address <= address - 1;
state <= s3;
end
end
default: begin
state <= idle;
address <= 0;
end
endcase
end
always@(state)
begin
case (state)
idle: begin
cs = 0;
we = 0;
oe = 0;
data_reg = 4'bZZZZ;
end
s1: begin
cs = 1;
we = 1;
oe = 0;
data_reg = 4'b1010;
end
s2: begin
cs = 1;
we = 1;
oe = 0;
data_reg = 4'b1010;
end
s3: begin
cs = 1;
we = 0;
oe = 1;
end
default: begin
cs = 0;
we = 0;
oe = 0;
data_reg = 4'b1010;
end
endcase
end
endmodule