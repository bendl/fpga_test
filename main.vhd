----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:50:09 07/16/2016 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
	port (
		CLK50: in std_logic;
		RESET: in std_logic;
		LED: out std_logic_vector(7 downto 0);
		
		PORTB5: out std_logic
	);
end main;

architecture Behavioral of main is
	signal COUNTER: std_logic_vector(7 downto 0);
	signal PRESCALER: std_logic_vector(24 downto 0);
	
	signal pwr: std_logic := '0';
begin

	CounterProcess: process(RESET, CLK50)
	begin
		if rising_edge(CLK50) then
		
			if RESET = '1' then
				PRESCALER <= (others => '0');
				COUNTER <= (others => '0');
			else	
				if PRESCALER < "111001001110000111000000" then
					PRESCALER <= PRESCALER + 1;
				else
					PRESCALER <= (others => '0');
					COUNTER <= COUNTER + 1;
					
					pwr <= NOT(pwr);
				end if;
			end if;
			
		end if;
	end process;
	
	LED(6 downto 0) <= COUNTER(6 downto 0);
	LED(7) <= pwr;
	PORTB5 <= pwr;

end Behavioral;

