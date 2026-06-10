-- VHDL Model Created from SGE Symbol pc_logic.sym -- Feb 21 08:23:09 2001

library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_misc.all;
   use IEEE.std_logic_arith.all;
   use IEEE.std_logic_unsigned.all;

    
entity PC_LOGIC is
      Port (     CLK : In    std_logic;
              INC_PC : In    std_logic;
               LD_PC : In    std_logic;
               PC_IN : In    std_logic_vector (4 downto 0);
               RESET : In    std_logic;
              PC_OUT : Out   std_logic_vector (4 downto 0) );
end PC_LOGIC;

architecture BEHAVIORAL of PC_LOGIC is

signal pc_out_reg : std_logic_vector (4 downto 0); 

begin
   	process(clk, inc_pc, ld_pc, pc_in, reset) 
	   
	   begin    
		   if reset='1' then
			   pc_out_reg <= "00000";
		   elsif (clk'event and clk='1') then  
			   if inc_pc ='1' then
				   pc_out_reg <=pc_out_reg + "00001";
			   elsif ld_pc = '1' then
				   pc_out_reg <= pc_in;
			   end if;
		   end if;			 

   	end process;

	   pc_out <= pc_out_reg;	  

end BEHAVIORAL;
