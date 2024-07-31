----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.07.2023 14:23:25
-- Design Name: 
-- Module Name: HALFAdder_TB - Behavioral
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


entity HALFAdder_TB is
--  Port ( );
-- Testbench doesnt require port specification
end HALFAdder_TB;

architecture Behavioral of HALFAdder_TB is
component HALFAdder
port(
A:IN std_logic;
B: IN std_logic;
SUM: OUT std_logic;
CARRY: OUT std_logic
);
END component;

--inputs
signal A_signal: std_logic;
signal B_signal: std_logic;
--outputs
signal SUM_signal: std_logic ;
signal CARRY_signal: std_logic ;

begin
uut: HALFAdder port map (
A => A_signal,
B => B_signal,
SUM => SUM_signal,
CARRY => CARRY_signal
);

signal_X: process
begin
A_signal <= '0';
B_signal <= '0';
wait for 10ns;

A_signal <= '0';
B_signal <= '1';
wait for 10ns;

A_signal <= '1';
B_signal <= '0';
wait for 10ns;

A_signal <= '1';
B_signal <= '1';
wait for 10ns;

end process;
end;