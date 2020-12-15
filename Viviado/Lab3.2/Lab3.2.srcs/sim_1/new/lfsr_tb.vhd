----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2020 06:41:40 PM
-- Design Name: 
-- Module Name: lfsr_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


Library ieee;
Use ieee.std_logic_1164.all;
Entity lfsr_tb is
End lfsr_tb;
Architecture tb of lfsr_tb is
signal clk, reset: std_logic;
signal Q: std_logic_vector (4 downto 0);
component lfsr
Port ( reset, clk: in std_logic;
Q: out std_logic_vector (4 downto 0) );
End component;
Begin
uut: lfsr port map(reset, clk, Q);
Process
Begin
Clk <= '0';
Wait for 5 ns;
Clk <= '1';
Wait for 5 ns;
End process;
Process
Begin
Reset <= '1';
Wait for 2 ns;
Reset <= '0';
Wait for 200 ns;
Wait;
End process;
End tb;