----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2023 14:14:32
-- Design Name: 
-- Module Name: BitCounter - Behavioral
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

entity bitcounter is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end bitcounter;

architecture Behavioral of bitcounter is
signal tmp: std_logic_vector(3 downto 0);
begin
    process (Clk, CLR)
        begin
	if (CLR='1') then
	     tmp <= "0000";
	elsif (Clk'event and Clk='1') then
	     tmp <= tmp + 1;
	     if(tmp="1111") then
	     tmp <= tmp - 1;
--	     until tmp="0000"
	     end if;
	end if;
     end process;
Q <= tmp;
end Behavioral;
