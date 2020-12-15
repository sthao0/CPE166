----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 01:44:23 PM
-- Design Name: 
-- Module Name: watch - Behavioral
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
entity watch is
 Port (en, clk, reset: in std_logic;
 y0, y1, y2: out std_logic_vector(3 downto 0));
end watch;
architecture Behavioral of watch is
 signal y0_reg: std_logic_vector(3 downto 0);
 signal y1_reg: std_logic_vector(3 downto 0);
 signal y2_reg: std_logic_vector(3 downto 0);
 begin
 process(clk, reset)
 begin
 if(reset = '1') then
 y0_reg <= (others=>'0');
 y1_reg <= (others=>'0');
 y2_reg <= (others=>'0');
 elsif rising_edge(clk) then
 if(y0_reg = 9) then
 y0_reg <= (others=>'0');
 elsif(en = '1') then
 y0_reg <= y0_reg + 1;
 end if;
 if(y0_reg = 9) then
 if(y1_reg = 9) then
 y1_reg <= (others=>'0');
 else
 y1_reg <= y1_reg + 1;
 end if;
 end if;
 if(y0_reg = 9 and y1_reg = 9) then
 if(y2_reg = 9) then
 y2_reg <= (others=>'0');
 else
 y2_reg <= y2_reg + 1; 
 end if;
 end if;
 end if;
 end process;
 y0 <= y0_reg when (en = '1') or (reset = '1');
 y1 <= y1_reg when (en = '1') or (reset = '1');
 y2 <= y2_reg when (en = '1') or (reset = '1');
end Behavioral;