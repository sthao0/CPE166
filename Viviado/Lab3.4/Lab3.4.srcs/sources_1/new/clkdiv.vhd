----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 02:08:55 PM
-- Design Name: 
-- Module Name: clkdiv - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity clkdiv is
 Port (clkin: in std_logic;
 clkout: out std_logic);
end clkdiv;
architecture Behavioral of clkdiv is
 signal cnt: std_logic_vector(3 downto 0) := "0000";
 begin
 process(clkin)
 begin
 if(rising_edge(clkin)) then
 if(cnt = 9) then
 cnt <= (others=>'0');
 clkout <= '1';
 elsif(cnt < 4) then
 cnt <= cnt + 1;
 clkout <= '1';
 else
 cnt <= cnt + 1;
 clkout <= '0';
 end if;
 end if;
 end process;
end Behavioral; 

