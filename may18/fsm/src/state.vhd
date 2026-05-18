-------------------------------------------------------------------------------
--
-- Title       : state_ragister
-- Design      : fsm
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/may18/fsm/src/state_ragister.vhd
-- Generated   : Mon May 18 17:21:47 2026
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
--{entity {state_ragister} architecture {state_ragister}}  

library IEEE;
use IEEE.std_logic_1164.all;


entity state is
	Port( CLK: in std_logic;
	RESET: in std_logic;
	STATE_IN: in std_logic_vector(1 downto 0);
	STATE_OUT: out std_logic_vector(1 downto 0) );
end state;

--}} End of automatically maintained section

architecture BEHAVIORAL of state is
	
begin			  
	process(clk, reset, state_in)
	begin
		if reset='1'then
			state_out <= "00";
		elsif(clk'event and clk='1')then
			state_out <= state_in;	
		end if;
	end process;
			

	-- Enter your statements here --

end BEHAVIORAL;
