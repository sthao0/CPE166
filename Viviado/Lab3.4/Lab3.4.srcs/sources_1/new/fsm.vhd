----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 02:08:33 PM
-- Design Name: 
-- Module Name: fsm - Behavioral
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
entity fsm is
 Port (clk, start, stop, reset: in std_logic;
 en: out std_logic);
end fsm;
architecture Behavioral of fsm is
 constant S0: std_logic_vector(1 downto 0) := "00"; -- idle
 constant S1: std_logic_vector(1 downto 0) := "01"; -- running
 signal cs, ns: std_logic_vector(1 downto 0);
 begin
 process(reset, clk)
 begin
 if(reset = '1') then
 cs <= S0;
 elsif (rising_edge(clk)) then
 cs <= ns;
 end if;
 end process;
 process(cs, start, stop)
 begin
 case(cs) is
 when S0 => if (start='1') then
 ns <= S1;
 else
 ns <= S0;
 end if;
 when S1 => if (stop='1') then
 ns <= S0;
 else
 ns <= S1;
 end if;
 when others => ns <= S0;
 end case;
 end process;
 en <= '1' when (cs = S1 and start = '1') else '0';
end Behavioral; 
