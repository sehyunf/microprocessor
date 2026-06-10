-- VHDL Model Created from SGE Symbol alu.sym -- Jan  6 21:53:09 1997

library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_misc.all;
   use IEEE.std_logic_arith.all;
--   use IEEE.std_logic_components.all;

entity ALU is
      Port (       A : In    std_logic_vector (7 downto 0);
                   B : In    std_logic_vector (7 downto 0);
                  OP : In    std_logic_vector (2 downto 0);
             ALU_OUT : Out   std_logic_vector (7 downto 0) );
end ALU;

architecture ALU of ALU is

function ADD(A,B : std_logic_vector)
        return std_logic_vector is

  variable CARRY:std_logic;
  variable SUM:std_logic_vector(A'length-1 downto 0) ;

  begin
     CARRY := '0';
     for i in 0 to A'left loop
       SUM(i) := A(i) xor B(i) xor CARRY ;
       CARRY :=( A(i) and B(i) ) or ( A(i) and CARRY ) or ( CARRY and B(i) ) ;
     end loop ;
     return SUM ;
end ADD ;

begin

  process (a, b, op)
    constant  opadd: std_logic_vector := "010";
    constant  opand: std_logic_vector := "011";
    constant  opxor: std_logic_vector := "100";
    constant opload: std_logic_vector := "101";
  begin
    case op is
      when opadd => 
         alu_out <= ADD(a,b);
      when opand =>
         alu_out <= a and b;
      when opxor =>
         alu_out <= a xor b;
      when opload => 
         alu_out <= b;
      when others =>
         alu_out <= b;
    end case;
  end process;

end ALU;

