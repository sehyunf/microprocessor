-- VHDL Model Created from SGE Symbol control_logic.sym -- Feb 21 08:22:43 2001

library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_misc.all;
   use IEEE.std_logic_arith.all;


entity CONTROL_LOGIC is
      Port (      OP : In    std_logic_vector (2 downto 0);
              PSTATE : In    std_logic_vector (1 downto 0);
                ZERO : In    std_logic;
             DOUT_EN : Out   std_logic;
                 INC : Out   std_logic;
              LD_ACC : Out   std_logic;
               LD_IR : Out   std_logic;
              LD_MDR : Out   std_logic;
               LD_PC : Out   std_logic;
              NSTATE : Out   std_logic_vector (1 downto 0);
                  RD : Out   std_logic;
                 SEL : Out   std_logic;
                  WR : Out   std_logic );
end CONTROL_LOGIC;

architecture BEHAVIORAL of CONTROL_LOGIC is	

begin
   process(PSTATE, OP, ZERO)
   	begin

		   if pstate="00" then -- Instruction Fetch
			   rd <='1';
			   wr <='0';
			   ld_ir<='1';
			   sel<='0';
			   inc<='0';
			   ld_acc<='0';
			   ld_pc<='0' ;
			   dout_en<='0';
			   ld_mdr<='0';
			   nstate<="01";
		   elsif pstate="01" then  -- Instruction Decode
			   rd <='0';
			   wr <='0';
			   ld_ir<='0';
			   sel<='0';
			   inc<='0';
			   ld_acc<='0';
			   ld_pc<='0' ;
			   dout_en<='0';
			   ld_mdr<='0';
			   nstate<="10";			   
		   elsif pstate="10" then  -- Memory Read
			   case op is
				   when "000" => 
				   -- Halt
				   		rd <='0';
			       		wr <='0';
			       		ld_ir<='0';
		     	   		sel<='0';
	    	 	   		inc<='0';
		    	   		ld_acc<='0';
		    	   		ld_pc<='0';
		    	   		dout_en<='0';
		    	   		ld_mdr<='0';
			       		nstate<="00";
				   	when "001" =>
				   -- Skip-if-zero
					    rd <='0';
			       		wr <='0';
			       		ld_ir<='0';
		     	   		sel<='1';
	    	 	   		inc<='1';
		    	   		ld_acc<='0';
		    	   		ld_pc<='0';
		    	   		dout_en<='0';
		    	   		ld_mdr<='0';
			       		nstate<="11";   
				   when "010"|"011"|"100"|"101" => 
				   -- 010 : add, 011 : and, 100 : xor, 101 : Load
				   		rd <='1';
			       		wr <='0';
			       		ld_ir<='0';
		     	   		sel<='1';
	    	 	   		inc<='1';
		    	   		ld_acc<='0';
		    	   		ld_pc<='0';
		    	   		dout_en<='0';
		    	   		ld_mdr<='1';
			       		nstate<="11";
				   
				   when "110" =>
				   -- Store	 
				   		rd <='0';
			       		wr <='1';
			       		ld_ir<='0';
		     	   		sel<='1';
	    	 	   		inc<='1';
		    	   		ld_acc<='0';
		    	   		ld_pc<='0';
		    	   		dout_en<='1';
		    	   		ld_mdr<='0';
			       		nstate<="00";
				   when "111" =>
				   -- Jump 
				   		rd <='0';
			       		wr <='0';
			       		ld_ir<='0';
		     	   		sel<='1';
	    	 	   		inc<='0';
		    	   		ld_acc<='0';
		    	   		ld_pc<='1';
		    	   		dout_en<='0';
		    	   		ld_mdr<='0';
			       		nstate<="00"; 
					when others => 
						rd <='0';
			       		wr <='0';
			       		ld_ir<='0';
		     	   		sel<='0';
	    	 	   		inc<='0';
		    	   		ld_acc<='0';
		    	   		ld_pc<='0';
		    	   		dout_en<='0';
		    	   		ld_mdr<='0';
			       		nstate<="00";
						   
			   end case;
		   else	 -- Execution
			   case op is
				   when "001" =>
				   -- Skip-if-zero
					    rd <='0';
			       		wr <='0';
			       		ld_ir<='0';
		     	   		sel<='1';
	    	 	   		ld_acc<='0';
		    	   		ld_pc<='0';
		    	   		dout_en<='0';
		    	   		ld_mdr<='0';
			       		nstate<="00";   
						if zero='1' then inc <= '1';
						else inc <='0';
						end if;
						
					when "010"|"011"|"100"|"101" =>
					-- 010 : add, 011 : and, 100 : xor, 101 : Load
						rd <='0';
			       		wr <='0';
			       		ld_ir<='0';
		     	   		sel<='1';
	    	 	   		inc<='0';
		    	   		ld_acc<='1';
		    	   		ld_pc<='0';
		    	   		dout_en<='0';
		    	   		ld_mdr<='0';
			       		nstate<="00";
						if zero='1' then inc <= '0';
						else inc <='0';
						end if;
					
				 	when others => 
					 	rd <='0';
			       		wr <='0';
			       		ld_ir<='0';
		     	   		sel<='0';
	    	 	   		inc<='0';
		    	   		ld_acc<='0';
		    	   		ld_pc<='0';
		    	   		dout_en<='0';
		    	   		ld_mdr<='0';
			       		nstate<="00";
						if zero='1' then inc <= '0';
						else inc <='0';
						end if;

			   end case;
		   end if;
		   
   	end process;


end BEHAVIORAL;

