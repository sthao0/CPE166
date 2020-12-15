----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2020 01:54:01 PM
-- Design Name: 
-- Module Name: MY_PACK - Behavioral
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
package MY_PACK is
function PARITY (D : std_logic_vector) -- declaration of function
return std_logic;
end MY_PACK;
package body MY_PACK is
function PARITY (D : std_logic_vector) -- implementation of function inside the package body
return std_logic is
variable TMP : std_logic;
begin
TMP := D(0);
for J in 1 to D'high loop
TMP := TMP xor D(J);
end loop; -- works for any size of D
return TMP;
end PARITY; -- even parity
end MY_PACK;
