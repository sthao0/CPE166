----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/13/2020 01:57:49 PM
-- Design Name: 
-- Module Name: PAR_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PAR_tb is
--  Port ( );
end PAR_tb;

architecture Behavioral of PAR_tb is

    component PAR
    port (db: in std_logic_vector(2 downto 0);
          pb: out std_logic);
    end component;
    
    signal db: std_logic_vector(2 downto 0);
    signal pb: std_logic;
begin
    dut : PAR 
    port map (db => db, pb =>pb);
    
    db <= "000", "001" after 5 ns, "010" after 10 ns, "011" after 20 ns, "100" after 30 ns;
        
end Behavioral;
