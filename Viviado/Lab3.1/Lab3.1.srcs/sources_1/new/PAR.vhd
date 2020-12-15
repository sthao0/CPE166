----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2020 01:59:36 PM
-- Design Name: 
-- Module Name: PAR - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use work.MY_PACK.all;
entity PAR is
port( db: in std_logic_vector(2 downto 0);
pb: out std_logic);
end PAR;
architecture ARCH of PAR is
begin
pb <= PARITY(db);
end ARCH;
