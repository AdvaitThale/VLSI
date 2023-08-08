----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.08.2023 15:10:38
-- Design Name: 
-- Module Name: FIFO_TB - Behavioral
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


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.ALL;

ENTITY FIFO_TB IS
END FIFO_TB;

ARCHITECTURE behavior OF FIFO_TB IS 
	COMPONENT FIFO
	PORT(
		clk : IN std_logic;
		enr : IN std_logic;
		enw : IN std_logic;
		datain : IN std_logic_vector(3 downto 0);          
		dataout : OUT std_logic_vector(3 downto 0);
		empty : OUT std_logic;
		full : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL clk :  std_logic := '0';
	SIGNAL enr :  std_logic := '0';
	SIGNAL enw :  std_logic := '0';
	SIGNAL datain :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL dataout :  std_logic_vector(3 downto 0);
	SIGNAL empty :  std_logic;
	SIGNAL full :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: FIFO PORT MAP(
		clk => clk,
		enr => enr,
		enw => enw,
		dataout => dataout,
		datain => datain,
		empty => empty,
		full => full
	);

	process(clk)
	begin
	clk <= not clk after 20ns;
	end process; 
	process
	begin
	enr <= '1' after 50ns;
	enw <= '1'; 
	datain <="1010"; wait for 25ns;
	datain <="1101"; wait for 25ns;	
	datain <="1100"; wait for 25ns;
	datain <="0001"; wait for 25ns;
	datain <="0010"; wait for 25ns;
	datain <="0100"; wait for 25ns;
	datain <="1000"; wait for 25ns;
	datain <="1100"; wait for 25ns;	
	end process;
END;
