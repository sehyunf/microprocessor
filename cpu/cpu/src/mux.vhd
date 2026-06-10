-------------------------------------------------------------------------------
--
-- Title       : mux
-- Design      : MUX
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/twoInOneMF/MUX/src/mux.vhd
-- Generated   : Mon Apr 13 17:27:52 2026
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
--{entity {mux} architecture {mux}}

library IEEE;
	use IEEE.std_logic_1164.all;

entity mux is
	port(
		A : in STD_LOGIC_VECTOR( 4 downto 0);
		B : in STD_LOGIC_VECTOR( 4 downto 0);
		sel : in STD_LOGIC;					 
		MUX_OUT : out STD_LOGIC_VECTOR( 4 downto 0)
	);
end mux;

--}} End of automatically maintained section

architecture mux of mux is
begin
	process(sel, A, B)
	begin
		if sel = '1' then
			MUX_OUT <= A;
		else
			MUX_OUT <= B;
		end if;
	end process;

end mux;
