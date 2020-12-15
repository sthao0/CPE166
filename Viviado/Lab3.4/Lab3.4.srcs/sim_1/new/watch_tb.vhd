----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 06:36:53 PM
-- Design Name: 
-- Module Name: watch_tb - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;
entity watch_tb is
end watch_tb;
architecture Behavioral of watch_tb is
 component watch
 port (en, clk, reset: in std_logic;
 y0, y1, y2: out std_logic_vector(3 downto 0));
 end component;
 signal en, clk, reset: std_logic;
 signal y0, y1, y2: std_logic_vector(3 downto 0);
 begin
 DUT: watch port map(en, clk, reset, y0, y1, y2);
 process
 begin
 clk <= '0';
 wait for 1 ns;
 clk <= '1';
 wait for 1 ns;
 end process;

 process
 begin
 en <= '0'; -- start watch in idle state
 reset <= '1'; -- initialize reset
 wait for 5 ns;
 reset <= '0';
 en <= '1';
 wait for 5 ns;
 reset <= '1';
 wait for 5 ns;
 reset <= '0';
 wait for 5 ns;
 en <= '0';
 wait for 5 ns;
 en <= '1';
 wait for 5 ns;
 en <= '0';
 wait;
 end process;
end Behavioral; 