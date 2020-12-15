`timescale 1ns / 1ps
//module clkdiv10(clkin, clkout);
//input clkin;
//output clkout;
//reg clkout;
//reg [2:0]cnt;
//initial cnt = 0;
//always@(posedge clkin)
//begin
//    if(cnt==3)
//    begin
//        cnt <= 0;
//        clkout <= ~clkout;
        
//    end
//    else 
//    begin
//    cnt <= cnt +1;
    
//    end
//end
//endmodule


module clkdiv10(clkin,clkout);
input clkin;
output clkout;
reg clkout;
reg[2:0] cnt;

initial cnt = 0;
initial clkout = 0;

always@(posedge clkin)
begin
    if(cnt==9)
    begin
        cnt<=0;
        clkout<=1;
    end
    else if(cnt<4)
    begin
        cnt<=cnt+1;
        clkout<=1;
    end
    else 
    begin
        cnt<=cnt+1;
        clkout<=0;
    end
end
endmodule
