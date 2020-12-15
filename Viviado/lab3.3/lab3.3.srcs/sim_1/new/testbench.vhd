----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2020 06:05:41 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
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


library IEEE;
use IEEE.std_logic_1164.all;
entity testbench is
end testbench;
architecture tb of testbench is
component chart
port ( reset, clk, x: in std_logic;
y, z, w: out std_logic;
ckcs, ckns: out std_logic_vector (1 downto 0));
end component;
signal reset, clk, x, y, z, w: std_logic;
signal cs, ns: std_logic_vector (1 downto 0);
begin
--DUT: chart port map(reset, clk, x, y, z, w, cs, ns);
--    process
--        begin
--            clk <='0';
--            wait for 5ns;
--            clk <='1';
--            wait for 5ns;
--            end process;
    
--   x <= '1', '0' after 10 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80ns, '0' after 120ns, '1' after 160 ns, '0' after 200 ns, '1' after 300 ns, '0' after 350 ns;
--Process
--Begin
--Reset <= '1';
--Wait for 2 ns;
--Reset <= '0';
--Wait for 400 ns;
--Wait;
--End process;
End tb;
