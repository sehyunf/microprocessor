-------------------------------------------------------------------------------
--
-- Title       : halfadder
-- Design      : adder
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/sehyunsWorkspace/adder/src/halfadder.vhd
-- Generated   : Mon Mar 30 17:30:36 2026
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
--{entity {halfadder} architecture {halfadder}}

library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder is
	port(
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		SUM : out STD_LOGIC;
		Carry : out STD_LOGIC
	);
end halfadder;

--}} End of automatically maintained section

architecture halfadder of halfadder is
begin
	
-- dataflow describtion	--
SUM <= A xor B;
Carry <= A and B;
	

end halfadder;
