-------------------------------------------------------------------------------
--
-- Title       : pc
-- Design      : pc
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/program/pc/src/D-ff.vhd
-- Generated   : Mon May 11 17:20:53 2026
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
--{entity {pc} architecture {pc}}

library IEEE;
use IEEE.std_logic_1164.all;

entity pc is
	port(
		clk : in STD_LOGIC;
		D : in STD_LOGIC;
		nq : out STD_LOGIC;
		q : out STD_LOGIC;
		reset : in STD_LOGIC
	);
end pc;

--}} End of automatically maintained section

architecture pc of pc is
begin
   	process(clk, reset)
	begin
	if(reset='1') then
		q<='0';
		nq<='1';
	elsif(clk'event and clk='0') then
		q<=d;
		nq<=not(d);
	end if;
	end process;
end pc;
