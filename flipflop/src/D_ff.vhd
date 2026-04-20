-------------------------------------------------------------------------------
--
-- Title       : dff
-- Design      : flipflop
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/flipflop/src/dff.vhd
-- Generated   : Mon Apr 20 17:03:33 2026
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
--{entity {dff} architecture {dff}}

library IEEE;
use IEEE.std_logic_1164.all;

entity dff is
	port(
		data : in STD_LOGIC;
		clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		q : out STD_LOGIC
	);
end dff;

--}} End of automatically maintained section

architecture dff of dff is
begin

	process(clk)
	begin
		if (clk'event and clk = '1') then
			if(reset = '1') then
				q <= '0';
			else
				q <= data;
			end if;
		end if;
	end process;

end dff;
