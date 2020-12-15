module SRAM (address, data, cs, we, oe);
input cs, we, oe;
input [5:0] address;
inout [7:0] data;
reg [7:0] data_out;
reg [7:0] mem [0:1023];
assign data = (cs && oe && !we) ? data_out : 8'bzzzzzzzz;
always @ (cs or we or data or address)
if (cs && we)
mem [address] = data;
always @ (cs or we or data or address or data)
begin
if (cs && !we && oe)
data_out = mem[address];
end
endmodule