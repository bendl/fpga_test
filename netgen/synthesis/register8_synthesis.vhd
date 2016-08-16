--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: register8_synthesis.vhd
-- /___/   /\     Timestamp: Tue Aug 16 19:49:14 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm register8 -w -dir netgen/synthesis -ofmt vhdl -sim register8.ngc register8_synthesis.vhd 
-- Device	: xc6slx9-3-ftg256
-- Input file	: register8.ngc
-- Output file	: E:\Projects\counter\CounterApp\netgen\synthesis\register8_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: register8
-- Xilinx	: E:\Apps\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity register8 is
  port (
    in_clk : in STD_LOGIC := 'X'; 
    in_enable : in STD_LOGIC := 'X'; 
    in_mode : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    in_data : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    out_data : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end register8;

architecture Structure of register8 is
  signal out_data_15_OBUF_0 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => out_data_15_OBUF_0
    );
  out_data_15_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(15)
    );
  out_data_14_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(14)
    );
  out_data_13_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(13)
    );
  out_data_12_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(12)
    );
  out_data_11_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(11)
    );
  out_data_10_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(10)
    );
  out_data_9_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(9)
    );
  out_data_8_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(8)
    );
  out_data_7_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(7)
    );
  out_data_6_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(6)
    );
  out_data_5_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(5)
    );
  out_data_4_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(4)
    );
  out_data_3_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(3)
    );
  out_data_2_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(2)
    );
  out_data_1_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(1)
    );
  out_data_0_OBUF : OBUF
    port map (
      I => out_data_15_OBUF_0,
      O => out_data(0)
    );

end Structure;

