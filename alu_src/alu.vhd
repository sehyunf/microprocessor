-------------------------------------------------------------------------------
--
-- Title       : alu
-- Design      : alu
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/ALU/alu/src/alu.vhd
-- Generated   : Mon Apr  6 18:01:43 2026
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
--{entity {alu} architecture {alu}}
			   
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;	
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity alu is
	port(
		A : in STD_LOGIC_VECTOR(7 downto 0);
		B : in STD_LOGIC_VECTOR(7 downto 0);
		op : in STD_LOGIC_VECTOR(2 downto 0);
		alu_out : out STD_LOGIC_VECTOR(7 downto 0)
	);
end alu;



architecture alu of alu is
begin

with op select
	alu_out <= A + B when "010",
		A and B when "011",
		A xor B when "100",
		B when "101",
		B when others;

end alu;
