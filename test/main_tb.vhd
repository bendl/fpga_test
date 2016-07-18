--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:27:06 07/16/2016
-- Design Name:   
-- Module Name:   E:/Projects/counter/CounterApp/test/main_tb.vhd
-- Project Name:  CounterApp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
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
 
ENTITY main_tb IS
END main_tb;
 
ARCHITECTURE behavior OF main_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         CLK50 : IN  std_logic;
         RESET : IN  std_logic;
         LED : OUT  std_logic_vector(7 downto 0);
         PORTB5 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK50 : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal LED : std_logic_vector(7 downto 0);
   signal PORTB5 : std_logic;

   -- Clock period definitions
   constant CLK50_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          CLK50 => CLK50,
          RESET => RESET,
          LED => LED,
          PORTB5 => PORTB5
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
