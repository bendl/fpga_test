--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:57:07 08/15/2016
-- Design Name:   
-- Module Name:   E:/Projects/counter/CounterApp/test/tb_register8.vhd
-- Project Name:  CounterApp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register8
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb_register8 IS
END tb_register8;
 
ARCHITECTURE behavior OF tb_register8 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register8
    PORT(
         in_clk : IN  std_logic;
         in_enable : IN  std_logic;
         in_mode : IN  std_logic_vector(2 downto 0);
         in_data : IN  std_logic_vector(15 downto 0);
         out_data : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_clk : std_logic := '0';
   signal in_enable : std_logic := '0';
   signal in_mode : std_logic_vector(2 downto 0) := (others => '0');
   signal in_data : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal out_data : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant in_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register8 PORT MAP (
          in_clk => in_clk,
          in_enable => in_enable,
          in_mode => in_mode,
          in_data => in_data,
          out_data => out_data
        );

   -- Clock process definitions
   in_clk_process :process
   begin
		in_clk <= '0';
		wait for in_clk_period/2;
		in_clk <= '1';
		wait for in_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for in_clk_period*10;

      -- insert stimulus here 
		
		in_mode <= "000";
		in_enable <= '1';
      wait for in_clk_period;
		
		in_mode <= "010";
		in_data <= X"FAB1";
      wait for in_clk_period;
		
		in_mode <= "001";
      wait for in_clk_period;
      wait for in_clk_period;
		
		in_mode <= "010";
		in_data <= X"BBBB";
      wait for in_clk_period;

      wait;
   end process;

END;
