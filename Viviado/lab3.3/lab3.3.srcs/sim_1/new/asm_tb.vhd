----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2020 02:05:49 PM
-- Design Name: 
-- Module Name: asm_tb - Behavioral
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


entity asm_tb is
end asm_tb;

architecture Behavioral of asm_tb is
component asm
    port(reset, clk, x: in std_logic;
        y1: out std_logic;
        y0,  z: out std_logic_vector(1 downto 0);
        ckcs, ckns: out std_logic_vector (1 downto 0)
        );
end component;
signal reset,clk,x,y1:std_logic;
signal y0,z,ckcs,ckns:std_logic_vector(1 downto 0);

begin
    DUT:asm port map(reset,clk,x,y1,y0,z,ckcs,ckns);
    process
        begin
            clk <='0';
            wait for 5ns;
            clk <='1';
            wait for 5ns;
            end process;
    
   x <= '1', '0' after 10 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80ns, '0' after 120ns, '1' after 160 ns, '0' after 200 ns, '1' after 300 ns, '0' after 350 ns;

Process
Begin
    Reset <= '1';
    Wait for 2 ns;
    Reset <= '0';
    Wait for 400 ns;
    Wait;
End process;

end Behavioral;
