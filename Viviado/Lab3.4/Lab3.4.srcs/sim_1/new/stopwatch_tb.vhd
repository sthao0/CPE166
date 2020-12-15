----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 06:39:54 PM
-- Design Name: 
-- Module Name: stopwatch_tb - Behavioral
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
entity stopwatch_tb is
end stopwatch_tb;
architecture Behavioral of stopwatch_tb is
 component stopwatch
 port (start, stop, clk, reset: in std_logic;
 y0, y1, y2: out std_logic_vector(3 downto 0));
 end component;
 signal start, stop, clk, reset: std_logic;
 signal y0, y1, y2: std_logic_vector(3 downto 0);
 begin
 DUT: stopwatch port map(start, stop, clk, reset, y0, y1, y2);
 process
 begin
 clk <= '0';
 wait for 1 ns;
 clk <= '1';
 wait for 1 ns;
 end process;

 process
 begin
 start <= '0'; -- initailize start
 stop <= '0'; -- initialize stop
 reset <= '1'; -- initialize outputs
 wait for 5 ns;
 reset <= '0';
 stop <= '1';
 wait for 20 ns;
 stop <= '0'; 
 start <= '1';
 wait for 100 ns;
 reset <= '1';
 wait for 20 ns;
 reset <= '0';
 --wait for 800 ns;
 wait;
 end process;
end Behavioral; 