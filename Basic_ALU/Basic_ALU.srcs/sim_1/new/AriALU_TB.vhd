----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.07.2023 15:17:11
-- Design Name: 
-- Module Name: AriALU_TB - Behavioral
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

entity AriALU_TB is
end AriALU_TB;

architecture Behavioral of AriALU_TB is
component AriALU
port(
      A : in STD_LOGIC_VECTOR (3 downto 0);
      B : in STD_LOGIC_VECTOR (3 downto 0);
      SEL : in STD_LOGIC_VECTOR (2 downto 0);
      C : out STD_LOGIC_VECTOR  (3 downto 0)
);
END component;

--inputs--
signal A : std_logic_vector (3 downto 0):= (others => '0');
signal B :  STD_LOGIC_VECTOR (3 downto 0):= (others => '0');
signal SEL : STD_LOGIC_VECTOR (2 downto 0):= (others => '0');
--outputs
signal C : STD_LOGIC_VECTOR (3 downto 0);

begin
uut: AriALU port map(
    A => A,
    B => B,
    SEL => SEL,
    C => C
);

process
begin
A <= "1100" after 1 ns;
B <= "0011" after 1 ns;
wait for 100 ns;
sel<="000";
wait for 100 ns;
sel<="001";
wait for 100 ns;
sel<="010";
wait for 100 ns;
sel<="011";
wait for 100 ns;
sel<="100";
wait for 100 ns;
sel<="101";
wait for 100 ns;
sel<="110";
wait for 100 ns;
sel<="111";
wait for 100 ns;
end process;
end;

