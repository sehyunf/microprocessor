library IEEE;
	use IEEE.std_logic_1164.all; 
	use IEEE.std_logic_arith.all;
	use IEEE.std_logic_unsigned.all; 
entity SYNC_COUNT is
	Port(	clk : In    std_logic;
			reset : In    std_logic;
			output : out   std_logic_vector (3 downto 0));
end SYNC_COUNT;
architecture BEHAVIORAL of SYNC_COUNT is
signal pc_out_reg : std_logic_vector (3 downto 0); 
begin
	process(clk, reset) 
		begin    
			if reset='1' then
				pc_out_reg <= "0000";
			elsif (clk'event and clk='1') then  
				pc_out_reg <=pc_out_reg + "0001";
			end if;
	end process;
	output <= pc_out_reg;
end BEHAVIORAL;