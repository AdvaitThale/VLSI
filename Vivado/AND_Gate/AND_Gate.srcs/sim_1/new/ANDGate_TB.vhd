----------------------------------------------------------------------------------
-- College: Marathwada Mitra Mandal's College of Engineering, Pune 
-- Engineer: Advait Thale
-- 
-- Create Date: 23.07.2023 19:36:10
-- Design Name: 
-- Module Name: ANDGate_TB - Behavioral
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


entity ANDGate_TB is
--  Port ( );
--  Remains Empty for Testbench
end ANDGate_TB;

architecture Behavioral of ANDGate_TB is

component ANDGate
port(
A: IN std_logic;
B: IN std_logic;
Y: OUT std_logic
);
end component;

--INPUTS--
signal A: std_logic := '1';
signal B: std_logic := '1';

--OUTPUTS--
signal Y: std_logic;

begin
uut:ANDGate port map(
A=>A,
B=>B,
Y=>Y
);
process(A,B)

begin
A <= not A after 110 ns;
B <= not B after 120 ns;
end process;
end;
