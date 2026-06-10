library IEEE;
   	use IEEE.std_logic_1164.all;
   	use IEEE.std_logic_misc.all;
   	use IEEE.std_logic_arith.all;			
entity IR is
	Port (	CLK : In	std_logic;
			IR_IN : In	std_logic_vector (7 downto 0);
			LD : In    std_logic;
			IR_OUT : Out   std_logic_vector (7 downto 0) );
end IR;

architecture BEHAVIORAL of IR is
   	begin
   	process 
   	begin
    	wait until clk ='1';
 		if LD='1' then
        	IR_OUT <= IR_IN;
     	end if;
  	end process;
end BEHAVIORAL;
