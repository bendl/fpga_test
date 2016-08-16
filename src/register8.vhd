----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:35:16 08/15/2016 
-- Design Name: 
-- Module Name:    register8 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register8 is
    Port ( 	in_clk : in std_logic;
				in_enable : in  STD_LOGIC;
				in_mode : in  std_logic_vector(2 downto 0);
				in_data : in  STD_LOGIC_VECTOR (15 downto 0);
				out_data : out  STD_LOGIC_VECTOR (15 downto 0));
end register8;

architecture Behavioral of register8 is

	type t_mode is (
		mode_wait,
		mode_read,
		mode_write,
		mode_busy);
		
	signal m_mode : t_mode;

	signal m_saved_data : std_logic_vector(15 downto 0) := X"2222";

begin

	main: process(in_clk, in_mode)
	begin
		if rising_edge(in_clk) and in_enable = '1' then
		
			case in_mode is
				when "000" => -- wait
					report "Wait";
					out_data <= X"0000";
				when "001" => -- read
					report "Read1";
					out_data <= m_saved_data;
				when "010" => -- write
					report "Write0";
					m_saved_data <= in_data;
					out_data <= m_saved_data;
				when "011" => -- busy
				when others =>
			end case;
			
		end if;--end rising_edge
	end process;

end Behavioral;

