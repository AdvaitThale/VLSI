----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.07.2023 14:17:33
-- Design Name: 
-- Module Name: HALFAdder - Behavioral
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

entity HALFAdder is
port(
A: IN std_logic;
B: IN std_logic;
SUM: OUT std_logic;
CARRY: OUT std_logic
);
end HALFAdder;

architecture Behavioral of HALFAdder is

begin
SUM <= (A XOR B);
CARRY <= (A AND B);

end Behavioral;
