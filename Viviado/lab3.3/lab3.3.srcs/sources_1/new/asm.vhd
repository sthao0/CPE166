----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2020 06:43:07 PM
-- Design Name: 
-- Module Name: asm - Behavioral
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

entity asm is
 port( 
        reset, clk, x: in std_logic;
        y1: out std_logic;
        y0,  z: out std_logic_vector(1 downto 0);
        ckcs, ckns: out std_logic_vector (1 downto 0)
        );
end asm;

architecture Behavioral of asm is
    constant s0: std_logic_vector(1 downto 0) := "00";
    constant s1: std_logic_vector(1 downto 0) := "01";
    constant s2: std_logic_vector(1 downto 0) := "10";
    constant s3: std_logic_vector(1 downto 0) := "11";
    
    signal cs, ns: std_logic_vector(1 downto 0);
begin
    ckns <= ns;
    ckcs <= cs;
    
    process(reset, clk) begin
        if(reset = '1') then
            cs <= s0;
        elsif(rising_edge(clk)) then
            cs <= ns;
        end if;
     end process;

    process(cs, x) begin
        case(cs) is
                when s0 =>
                     if(x='1') then
                        ns<=S1;
                     else 
                        ns<= s0;
                     end if;
                     
                when s1 => 
                    if(x='1') then
                        ns<=s1;
                     else 
                        ns<= s2;
                     end if;
               when s2=>
                    if(x='1') then
                        ns<=s1;
                     else 
                        ns<= s3;
                     end if;
              when s3 =>
                    ns <= s0;
                when others =>
                    ns <= s0;
              end case;
        end process;
            y1 <= '1' when (cs = s1) else '0';
            z(0) <= '1' when (cs=s1) and (x ='1') else '0';
            y0(0) <= '1' when (cs=s2) else '0';
            z(1) <= '1' when (cs = s2) and (x='1') else '0';
            y0(1) <= '1' when (cs = s3) else '0';
                    
end Behavioral;
