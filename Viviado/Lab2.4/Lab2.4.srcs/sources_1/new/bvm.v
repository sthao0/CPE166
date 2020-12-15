`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2020 09:49:02 PM
// Design Name: 
// Module Name: bvm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bvm(clk,reset,one,two,five,d,r);
input clk,reset,one,two,five;
output d;
output [2:0] r;
parameter idleState=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7,s8=8,s9=9;
reg [3:0]currentState, nextState;
reg[2:0]r;
reg d;

always@(posedge clk or posedge reset)
begin
    if(reset) currentState <= idleState;
    else currentState <= nextState;
end

always@(currentState or one or two or five or posedge reset)
begin
    case(currentState)
    idleState:
        if(one) nextState =s1;
        else if(two) nextState = s2;
        else if(five) nextState =s5;
        else nextState = idleState;
    s1:
        if(one)nextState = s2;
        else if(two) nextState = s3;
        else if(five) nextState =s6;
        else nextState =s1;
    s2:
        if(one) nextState =s3;
        else if(two) nextState= s4;
        else if(five) nextState =s7;
        else nextState =s2;
    s3:
        if(one) nextState= s4;
        else if(two) nextState=s5;
        else if(two) nextState=s8;
        else nextState= s3;
    s4:
        if(one) nextState = s5;
        else if(two) nextState = s6;
        else if(five) nextState = s9;
        else nextState = s4;
    s5:
        nextState = idleState;
    s6:
        nextState = idleState;
    s7:
        nextState = idleState;
    s8:
        nextState = idleState;
    s9:
        nextState = idleState;
    default: nextState = idleState;
 endcase
 end

always@(currentState or one or two or five)
begin
case(currentState)
idleState: 
if(one)
begin
    d = 0;
    r = 0;
end
else if (two)
begin
    d = 0;
    r = 0;
end
else if (five)
begin
        d = 0; //0
        r = 0;
    end
    else
    begin
        d = 0;
        r = 0;
    end 

s1: if (one)
begin
    d = 0;
    r = 0;
end
else if (two)
begin
    d = 0;
    r = 0;
end
else if (five)
begin
        d = 1; 
        r = 1;
    end
    else
    begin
        d = 0;
        r = 0;
   end

s2: if (one)
begin
    d = 0;
    r = 0;
end
else if (two)
begin
    d = 0;
    r = 0;
end
else if (five)
begin
        d = 1; 
        r = 2;
    end
    else
    begin
        d = 0;
        r = 0;
    end    


s3: if (one)
begin
    d = 0;
    r = 0;
end
else if (two)
begin
    d = 0;
    r = 0;
end
else if (five)
begin
        d = 1; 
        r = 3;
    end
    else
    begin
        d = 0;
        r = 0;
    end    

s4: if (one)
begin
    d = 1;
    r = 0;
end
else if (two)
begin
    d = 1;
    r = 1;
end
else if (five)
begin
        d =1; 
        r = 4;
    end
    else
    begin
        d = 0;
        r = 0;
    end    

s5: 

    begin
        d = 1;
        r = 0;
    end    
   
s6: 

    begin
        d = 1;
        r = 1;
    end    
   
s7: 

    begin
        d = 1;
        r = 2;
    end  

s8: 

    begin
        d = 1;
        r = 3;
    end 

s9: 

    begin
        d = 1;
        r = 4;
    end      
endcase
end

endmodule
