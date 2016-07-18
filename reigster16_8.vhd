----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:57 07/17/2016 
-- Design Name: 
-- Module Name:    reigster8 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reigster16_8 is
	port (
		in_clk:  in std_logic;
		in_data: in std_logic_vector(15 downto 0);
		out_data: out std_logic_vector(15 downto 0);
		in_select: in std_logic_vector(2 downto 0);
		in_write_eanble: in std_logic
	);
end reigster8;

architecture Behavioral of reigster16_8 is
	component register8
		port (
			in_clk:  in std_logic;
			in_data: in std_logic_vector(15 downto 0);
			out_data: out std_logic_vector(15 downto 0);
			in_write_eanble: in std_logic
		);
	end component;
begin
	process(in_clk)
	begin
		if(rising_edge(in_clk)) then
			out_data <= data;
			
			if(
		end if;
	end process;

end Behavioral;

