-------------------------------------------------------------------------------
--
-- Title       : ha
-- Design      : halfadder
-- Author      : seoil
-- Company     : seoil
--
-------------------------------------------------------------------------------
--
-- File        : D:/sehyun/workspace/firstworkspace/src/ha.vhd
-- Generated   : Mon Mar 23 17:59:11 2026
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
--{entity {ha} architecture {ha}}

library IEEE;
use IEEE.std_logic_1164.all;

entity ha is
	port(
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		SUM : out STD_LOGIC;
		Carry : out STD_LOGIC
	);
end ha;

--}} End of automatically maintained section

architecture ha of ha is
begin

	SUM <= A xor B ;
	Carry <= A and B;

end ha;
