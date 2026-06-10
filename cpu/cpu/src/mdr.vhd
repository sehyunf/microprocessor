library IEEE;
   	use IEEE.std_logic_1164.all;
   	use IEEE.std_logic_misc.all;
   	use IEEE.std_logic_arith.all;		
entity MDR is
      Port (     CLK : In    std_logic;
                  LD : In    std_logic;
              MDR_IN : In    std_logic_vector (7 downto 0);
             MDR_OUT : Out   std_logic_vector (7 downto 0) );
end MDR;								
architecture BEHAVIORAL of MDR is		
   	begin							  
   		process 
   		begin
    	  	wait until clk ='1';
      		if LD='1' then
         		MDR_OUT <= MDR_IN;
      		end if;
   		end process;
end BEHAVIORAL;


