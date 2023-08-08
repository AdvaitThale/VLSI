----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.08.2023 21:48:55
-- Design Name: 
-- Module Name: Universal_ShiftReg_TB - Behavioral
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

entity Universal_ShiftReg_TB is
end Universal_ShiftReg_TB;

architecture Behavioral of Universal_ShiftReg_TB is
COMPONENT Universal_ShiftReg
PORT(
clk : IN std_logic;
il : IN std_logic;
ir : IN std_logic;
mode : IN std_logic_vector(1 downto 0);
q : OUT std_logic_vector(3 downto 0);
i : IN std_logic_vector(3 downto 0);
rst : IN std_logic
);
END COMPONENT;

--Inputs
signal clk : std_logic := '0';
signal il : std_logic := '0';
signal ir : std_logic := '0';
signal mode : std_logic_vector(1 downto 0) := (others => '0');
signal i : std_logic_vector(3 downto 0) := (others => '0');
signal rst : std_logic := '0';
--Outputs
signal q : std_logic_vector(3 downto 0);
constant clk_period : time := 10 ns;

BEGIN
uut: Universal_ShiftReg PORT MAP (
clk => clk,
il => il,
ir => ir,
mode => mode,
q => q,
i => i,
rst => rst
);

process(clk, rst)
begin
rst <= '0';
rst <= '1' after 70 ns;
clk <= not clk after 20 ns;
end process;

process
begin
i <= "1010";
wait for 100 ns;
mode <= "00";
wait for 100 ns;
mode <= "01";
wait for 100 ns;
mode <= "10";
wait for 100 ns;
ir <= '1';
wait for 100 ns;
mode <= "11";
wait for 100 ns;
il <= '1';
wait for 100 ns;
end process;
END;
