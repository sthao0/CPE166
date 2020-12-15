`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 11:55:40 AM
// Design Name: 
// Module Name: mux_tb
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

module mux_tb;
    // Declaring Inputs
    reg d0;
    reg d1;
    reg s;

    // Declaring Outputs
    wire y;

    // Instantiate the Unit Under Test (UUT)
    mux2to1 uut(.d0(d0), .d1(d1), .s(s),.y(y));

    initial begin
        // Apply Inputs
        d0 = 0;
        d1 = 0;
        s = 0;
        // Wait 100 ns
        #100;
        
        //Similarly apply Inputs and wait for 100 ns
        d0 = 0;      d1 = 0;      s = 1;      #100;
        d0 = 0;      d1 = 1;      s = 0;      #100;
        d0 = 0;      d1 = 1;      s = 1;      #100;
        d0 = 1;      d1 = 0;      s = 0;      #100;
        d0 = 1;      d1 = 0;      s = 1;      #100;
        d0 = 1;      d1 = 1;      s = 0;      #100;
        d0 = 1;      d1 = 1;      s = 1;      #100;
    end
      
endmodule
