----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.07.2023 16:16:46
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
    component shiftregister
    port(
         CLK : IN std_logic;
         LeftIn : IN std_logic;
         RightIn : IN std_logic;
         RST : IN std_logic;
         MODE : IN std_logic_vector (1 downto 0);
         I : IN std_logic_vector (3 downto 0);
         Q : OUT std_logic_vector (3 downto 0));
         end component;
         
     --INPUTS
     signal CLK : std_logic := '0';
     signal LeftIn : std_logic := '0';
     signal RightIn : std_logic := '0';
     signal RST : std_logic := '0';
     signal MODE : std_logic_vector(1 downto 0) := (others => '0');
     signal I : std_logic_vector(3 downto 0) := (others => '0');
     
     --OUTPUTS
     signal Q : std_logic_vector(3 downto 0);
begin
    uut: shiftregister port map(
    CLK => CLK,
    LeftIn => LeftIn,
    RightIn => RightIn,
    RST => RST,
    MODE => MODE,
    I => I,
    Q => Q);
    
process(CLK, RST)
begin
RST <= '1';
RST <= '0' after 50ns;
CLK <= not CLK after 10ns;
end process;

process
    begin
        I <= "1010"; 
        wait for 100ns;
        MODE <= "00"; 
        wait for 100ns;
        MODE <= "01"; 
        wait for 100ns;
        MODE <="10";
        wait for 100ns;
        RightIn <= '1'; 
        wait for 100ns;
        MODE <="11"; 
        wait for 100ns;
        LeftIn <= '1';
        wait for 100ns;
end process;
end Behavioral;
