----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.07.2023 15:00:11
-- Design Name: 
-- Module Name: AriALU - Behavioral
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity AriALU is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           C : out STD_LOGIC_VECTOR  (3 downto 0));
end AriALU;

architecture Behavioral of AriALU is
begin
process (A, B ,SEL) is

begin
case SEL is
when "000" => C <= A AND B;
when "001" => C <= A OR B;
when "010" => C <= A XOR B;
when "011" => C <= A NAND B;
when "100" => C <= A NOR B;
when "101" => C <= A+B;
when "110" => C <= A-B;
when others => C <= A;

end case;
end process;
end Behavioral;
