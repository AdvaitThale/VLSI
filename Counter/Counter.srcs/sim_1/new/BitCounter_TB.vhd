LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY bitcounter_test IS
END bitcounter_test;
 
ARCHITECTURE behavior OF bitcounter_test IS 
    COMPONENT bitcounter
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
  -- signal reset: std_logic:='0';
 	--Outputs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
 --  constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bitcounter PORT MAP (
          clk => clk,
          clr => clr,
          q => q
        );

   -- Clock process definitions
  clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;



-- Stimulus process
stim_proc: process
begin        
   -- hold reset state for 100 ns.
     clr <= '1';
   wait for 20 ns;    
    clr <= '0';
   wait;
end process;

END;
