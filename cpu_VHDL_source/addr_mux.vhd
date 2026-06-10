-- VHDL Model Created from SGE Symbol addr_mux.sym -- Jan  6 21:52:01 1997

library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_misc.all;
   use IEEE.std_logic_arith.all;
--   use IEEE.std_logic_components.all;

entity ADDR_MUX is
      Port (       A : In    std_logic_vector (4 downto 0);
                   B : In    std_logic_vector (4 downto 0);
                 SEL : In    std_logic;
             MUX_OUT : Out   std_logic_vector (4 downto 0) );
end ADDR_MUX;

architecture BEHAVIORAL of ADDR_MUX is

   begin

   process (a, b, sel)
   begin
     if sel = '1' then
       mux_out <= b;
     else
       mux_out <= a;
     end if;
  end process;

end BEHAVIORAL;

