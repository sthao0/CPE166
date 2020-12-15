----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2020 04:24:52 PM
-- Design Name: 
-- Module Name: lfsr - Behavioral
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
Entity lfsr is
Port ( reset, clk: in std_logic;
Q: out std_logic_vector (4 downto 0) );
End lfsr;
Architecture beh of lfsr is
Signal m: std_logic_vector (4 downto 0);
Begin
Process(reset, clk)
Begin
If ( reset = '1') then
m <= ( 0=> '1', others =>'0'); --- value of "0001"
elsif (rising_edge(clk) ) then
m(4 downto 1) <= m(3 downto 0);
m(0) <= m(1) xor m(4);
end if;
end process;
Q <= m;
end beh;