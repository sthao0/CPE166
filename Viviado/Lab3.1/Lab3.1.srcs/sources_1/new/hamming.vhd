----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/13/2020 02:01:41 PM
-- Design Name: 
-- Module Name: hamming - Behavioral
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

entity hamming is
	port (
		D3 : in std_logic;
		D5 : in std_logic;
		D6 : in std_logic;
		D7 : in std_logic;
		DOUT : out std_logic_vector (7 downto 1)
	     	);
end hamming;

architecture Behavior of hamming is
signal P1, P2, P4 : std_logic;
begin
	P1 <= D3 xor D5 xor D7;
	P2 <= D3 xor D6 xor D7;
	P4 <= D5 xor D6 xor D7;

	DOUT <= D7 & D6 & D5 & P4 & D3 & P2 & P1;

end Behavior;