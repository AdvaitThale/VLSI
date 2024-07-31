----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.08.2023 21:46:54
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

entity Universal_ShiftReg is
Port ( clk : in STD_LOGIC;
il : in STD_LOGIC;
ir : in STD_LOGIC;
mode : in STD_LOGIC_VECTOR (1 downto 0);
q : out STD_LOGIC_VECTOR (3 downto 0);
i : in STD_LOGIC_VECTOR (3 downto 0);
rst : in STD_LOGIC);
end Universal_ShiftReg;

architecture Behavioral of Universal_ShiftReg is
begin
process(clk,rst)
variable qtmp : std_logic_VECTOR(3 DOWNTO 0);
begin
if rst ='1' then
qtmp:="0000";
elsIF (clk = '1' AND clk' EVENT) THEN
CASE mode IS
WHEN "00" => qtmp := qtmp;
WHEN "01" => qtmp := i;
WHEN "10" => qtmp:=qtmp(2 DOWNTO 0) & ir; --Left Shift
WHEN "11" => qtmp:=il & qtmp(3 DOWNTO 1); -- Right Shift
WHEN OTHERS => NULL;
END CASE;
END IF;
q <= qtmp;
END PROCESS;
END Behavioral;

