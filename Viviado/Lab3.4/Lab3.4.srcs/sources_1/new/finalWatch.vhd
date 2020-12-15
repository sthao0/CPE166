----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2020 01:23:02 PM
-- Design Name: 
-- Module Name: finalWatch - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity stopwatch is
 Port (start, stop, clk, reset: in std_logic;
 y0, y1, y2: out std_logic_vector(3 downto 0));
end stopwatch;
architecture Behavioral of stopwatch is
 signal en, clk2: std_logic;
 component clkdiv
 port (clkin: in std_logic;
 clkout: out std_logic);
 end component;
 component fsm
 port (clk, start, stop, reset: in std_logic;
 en: out std_logic);
 end component;
 component watch
 port (en, clk, reset: in std_logic;
 y0, y1, y2: out std_logic_vector(3 downto 0));
 end component; 