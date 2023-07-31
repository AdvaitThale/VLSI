----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.07.2023 12:15:45
-- Design Name: 
-- Module Name: Universal_ShiftReg - Behavioral
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Universal_ShiftReg is
  Port (CLK, LeftIn, RightIn, RST: IN std_logic;
        MODE: IN std_logic_vector (1 downto 0);
        I: IN std_logic_vector (3 downto 0);
        Y: OUT std_logic_vector (3 downto 0));
end Universal_ShiftReg;

architecture Behavioral of Universal_ShiftReg is
begin
process(CLK, RST)
variable Y_TMP: std_logic_vector (3 downto 0);
    begin
    if RST = '1' then
    Y_TMP := "0000";
elsIF(CLK = '1' AND CLK' EVENT) then
    case mode is    
    when "00" => Y_TMP := Y_TMP;
    when "01" => Y_TMP := I;
    when "10" => Y_TMP := Y_TMP(2 downto 0) & RightIn; -- LEFT Shift
    when "11" => Y_TMP := LeftIn & Y_TMP(3 downto 1); -- RIGHT Shift
    when others => null;
    end case;
  end if;
  Y <= Y_TMP;    
end process;
end behavioral;