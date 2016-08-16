--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:03:00 07/18/2016
-- Design Name:   
-- Module Name:   E:/Projects/counter/CounterApp/test/tb_clk_2hz.vhd
-- Project Name:  CounterApp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clk_2hz
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
--USE ieee.numeric_std.ALL;
 
ENTITY tb_clk_2hz IS
END tb_clk_2hz;
 
ARCHITECTURE behavior OF tb_clk_2hz IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_2hz
    PORT(
         CLK50 : IN  std_logic;
         CLK_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK50 : std_logic := '0';

 	--Outputs
   signal CLK_OUT : std_logic;

   -- Clock period definitions
   constant CLK50_period : time := 10 ns;
   constant CLK_OUT_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk_2hz PORT MAP (
          CLK50 => CLK50,
          CLK_OUT => CLK_OUT
        );

   -- Clock process definitions
   CLK50_process :process
   begin
		CLK50 <= '0';
		wait for CLK50_period/2;
		CLK50 <= '1';
		wait for CLK50_period/2;
   end process; 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK50_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
