library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity clkdiv_tb is
end clkdiv_tb;
architecture Behavioral of clkdiv_tb is
 component clkdiv
 port(clkin: in std_logic;
 clkout: out std_logic);
 end component;
 signal clkin, clkout: std_logic;
 begin
 DUT: clkdiv port map(clkin, clkout);
 clocking: process
 begin
 clkin <= '0';
 wait for 10 ns;
 clkin <= '1';
 wait for 10 ns;
 end process;
end Behavioral; 