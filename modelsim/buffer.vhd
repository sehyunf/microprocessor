library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;

entity BI_BUF is
  Port (  BUF_IN : In    std_logic_vector (7 downto 0);
    EN : In    std_logic;
    BID_BUS : InOut std_logic_vector (7 downto 0);
    BUF_OUT : Out   std_logic_vector (7 downto 0) );
end BI_BUF;

architecture BEHAVIORAL of BI_BUF is
  begin
  process (en, buf_in, bid_bus)
    begin
    if en='1' then
      bid_bus <= buf_in;
      buf_out <= buf_in;
    else
      bid_bus <= "ZZZZZZZZ";
      buf_out <= bid_bus;
    end if;
  end process;
end BEHAVIORAL;