-------------------------------------------------------------------------------
--
-- Title       : four
-- Design      : four
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/Easy4BitAdder/four/src/four.vhd
-- Generated   : Mon Apr  6 17:49:28 2026
-- From        : Interface description file
-- By          : ItfToHdl ver. 1.0
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--    and may be overwritten
--{entity {four} architecture {four}}

library IEEE;
use IEEE.std_logic_1164.all;	 
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity four is
	port(
		A : in STD_LOGIC_VECTOR(3 downto 0);
		B : in STD_LOGIC_VECTOR(3 downto 0);
		SUM : out STD_LOGIC_VECTOR(3 downto 0)
	);
end four;

--}} End of automatically maintained section

architecture four of four is
begin
	
SUM <= A + B;

end four;
