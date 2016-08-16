----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:45:33 07/16/2016 
-- Design Name: 
-- Module Name:    clk_2hz - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_2hz is
	port (
		CLK50: in std_logic;
		CLK_OUT: out std_logic
	);
end clk_2hz;

architecture Behavioral of clk_2hz is
	signal counter: std_logic_vector(20 downto 0);
	signal clk_state: std_logic := '0';
begin

	ScalerProcess: process(CLK50)
	begin
		if(rising_edge(CLK50)) then
			if(counter >= "100110001001011010000") then 
				counter <= (others => '0');
			else
			
				CLK_OUT <= NOT(clk_state);
				counter <= counter + 1;
			end if;
		end if;
	end process;


end Behavioral;

