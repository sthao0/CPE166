----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 06:35:04 PM
-- Design Name: 
-- Module Name: fsm_tb - Behavioral
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
entity fsm_tb is
end fsm_tb;
architecture Behavioral of fsm_tb is
 component fsm
 port (clk, start, stop, reset: in std_logic;
 en: out std_logic);
 end component;
 signal clk, start, stop, reset, en: std_logic;
 begin
 DUT: fsm port map(clk, start, stop, reset, en);
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
 reset <= '1';
 wait for 5 ns; 
 reset <= '0';
 stop <= '1'; -- S0
 wait for 5 ns;
 stop <= '0';
 start <= '1'; -- S1
 wait for 5 ns;
 start <= '0';
 stop <= '1'; -- S0
 wait for 5 ns;
 wait;
 end process;
end Behavioral;

