-- VHDL Model Created from SGE Symbol state.sym -- Jan  6 22:12:33 1997

library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_misc.all;
   use IEEE.std_logic_arith.all;
--   use IEEE.std_logic_components.all;

entity STATE is
      Port (     CLK : In    std_logic;
               RESET : In    std_logic;
             STATE_IN : In    std_logic_vector (1 downto 0);
             STATE_OUT : Out   std_logic_vector (1 downto 0) );
end STATE;

architecture BEHAVIORAL of STATE is

   begin

   process (clk, reset, state_in)
   begin
		if reset='1' then
			state_out <= "00";
		elsif (clk'event and clk='1') then
			state_out <= state_in;
		end if;
   end process;

end BEHAVIORAL;
