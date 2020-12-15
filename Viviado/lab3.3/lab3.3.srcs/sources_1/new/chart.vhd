----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2020 06:04:20 PM
-- Design Name: 
-- Module Name: chart - Behavioral
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
entity chart is
port ( reset, clk, x: in std_logic;
y, z, w: out std_logic ;
ckcs, ckns: out std_logic_vector (1 downto 0));
end chart;
architecture beh of chart is
constant M0: std_logic_vector(1 downto 0) := "00";
constant M1: std_logic_vector(1 downto 0) := "01";
constant M2: std_logic_vector(1 downto 0) := "10";
constant M3: std_logic_vector(1 downto 0) := "11";
signal cs, ns: std_logic_vector (1 downto 0);
begin
ckcs <= cs;
ckns <= ns;
process(reset, clk)
begin
If ( reset = '1') then
cs <= M0;
elsif (rising_edge(clk) ) then
cs <= ns;
end if;
end process;
process(cs, x)
begin
case (cs) is
when M0 => if (x='1') then
ns <= M0;
else
ns <= M1;
end if;
when M1 => if (x='1') then
ns <= M2;
else
ns <= M1;
end if;
when M2 => if (x= '0') then
ns <= M0;
else
ns <= M3;
end if;
when M3 => ns <= M1;
when others=> ns <= M0;
end case;
end process;
y <= '1' when ( cs = M1 ) else '0';
z <= '1' when ( cs = M3 ) else '0';
w <= '1' when ( ( cs = M2 ) and ( x= '1' ) ) else '0';
end beh;

