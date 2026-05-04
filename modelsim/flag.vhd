library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_misc.all;
  use IEEE.std_logic_arith.all;
entity FLAG is
  Port ( ALU_OUT : In    std_logic_vector (7 downto 0);
    CLK : In    std_logic;
    LD : In    std_logic;
    FLAG : Out   std_logic );
end FLAG;

architecture BEHAVIORAL of FLAG is
  function DETECT_ZERO(A: std_logic_vector) return std_logic is
  variable ZERO:std_logic;
    begin 
      ZERO := '1';
      for i in 0 to A'left loop
        ZERO := (NOT A(i)) and ZERO;
    end loop;
    return ZERO;
end DETECT_ZERO;

begin
  process
  begin
    wait until clk='1';
    if LD='1' then
      FLAG <= DETECT_ZERO(ALU_OUT);
    end if;
  end process;
end BEHAVIORAL;
