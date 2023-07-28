
----------------------------------------------------------------------------------
-- College: Marathwada Mitra Mandal's College of Engineering, Pune 
-- Engineer: Advait Thale
-- 
-- Create Date: 23.07.2023 19:03:12
-- Design Name: Basic AND Gate
-- Module Name: ANDGate - Behavioral
-- Project Name: AND_Gate
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

entity ANDGate is
port(
A: IN std_logic;
B: IN std_logic;
Y: OUT std_logic
);
end ANDGate;

architecture Behavioral of ANDGate is

begin
Y <= A AND B;
end Behavioral;
