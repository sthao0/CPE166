----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/13/2020 06:26:17 PM
-- Design Name: 
-- Module Name: hamming_tb - Behavioral
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

entity hamming_tb is
--  Port ( );
end hamming_tb;

architecture Behavioral of hamming_tb is

    component hamming
    port (D3: in std_logic; 
          D5: in std_logic;
          D6: in std_logic;
          D7: in std_logic;
          DOUT: out std_logic_vector);
    end component;
    
    signal D3: std_logic;
    signal D5 : std_logic;
    signal D6 : std_logic;
    signal D7 : std_logic;
    Signal DOUT : std_logic_vector (7 downto 1);
    
begin
    dut: hamming port map(
        D3 => D3,
        D5 => D5,
        D6 => D6,
        D7 => D7,
        DOUT => DOUT);

stimuli : process
begin
    D3 <= '0';
    D5 <= '0';
    D6 <= '0';
    D7 <= '0';
    wait for 10ns;
    D3 <= '1';
    D5 <= '0';
    D6 <= '0';
    D7 <= '0';
    wait for 10ns;
    D3 <= '0';
    D5 <= '1';
    D6 <= '0';
    D7 <= '0';
    wait for 10ns;
    D3 <= '0';
    D5 <= '0';
    D6 <= '1';
    D7 <= '0';
    wait for 10ns;
    D3 <= '0';
    D5 <= '0';
    D6 <= '0';
    D7 <= '1';
    wait for 10ns;
    D3 <= '0';
    D5 <= '0';
    D6 <= '1';
    D7 <= '1';
    wait for 10ns;
    D3 <= '0';
    D5 <= '1';
    D6 <= '0';
    D7 <= '1';
    wait for 10ns;
    D3 <= '1';
    D5 <= '0';
    D6 <= '0';
    D7 <= '1';
    wait for 10ns;
    D3 <= '0';
    D5 <= '1';
    D6 <= '1';
    D7 <= '0';
    wait for 10ns;
    D3 <= '1';
    D5 <= '0';
    D6 <= '1';
    D7 <= '0';
    wait for 10ns;
    D3 <= '1';
    D5 <= '1';
    D6 <= '0';
    D7 <= '0';
    wait for 10ns;
    D3 <= '1';
    D5 <= '1';
    D6 <= '1';
    D7 <= '1';
    wait for 10ns;
    wait;
    end process;
    
end Behavioral;
