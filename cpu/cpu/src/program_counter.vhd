library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity program_counter is
	port(
		CLK : in STD_LOGIC;
		inc_pc : in STD_LOGIC;
		ld_pc : in STD_LOGIC;
		RESET : in STD_LOGIC;
		pc_in : in STD_LOGIC_VECTOR(4 downto 0);
		pc_out : out STD_LOGIC_VECTOR(4 downto 0)
	);
end program_counter;

architecture BEHAVIORAL of program_counter is
signal pc_out_reg : std_logic_vector (4 downto 0); 
begin
    process(CLK, inc_pc, ld_pc, pc_in, RESET)
	begin
		if RESET='1' then
			pc_out_reg <= "00000";
		elsif (CLK'event and CLK='1') then
			if inc_pc ='1' then
				pc_out_reg <= pc_out_reg + "00001";
			elsif ld_pc = '1' then
				pc_out_reg <= pc_in;
			end if;
		end if;
    end process;											
    	pc_out <= pc_out_reg;

end BEHAVIORAL;
