-------------------------------------------------------------------------------
--
-- Title       : program_counter
-- Design      : pc
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/program/pc/src/program_counter.vhd
-- Generated   : Mon May 11 17:53:31 2026
-- From        : Interface description file
-- By          : ItfToHdl ver. 1.0
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--    and may be overwritten
--{entity {program_counter} architecture {program_counter}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity program_counter is
	port(
		clk : in STD_LOGIC;
		inc_pc : in STD_LOGIC;
		id_pc : in STD_LOGIC;
		reset : in STD_LOGIC;
		pc_in : in STD_LOGIC_VECTOR(4 downto 0);
		pc_out : out STD_LOGIC_VECTOR(4 downto 0)
	);
end program_counter;

architecture BEHAVIORAL of program_counter is
signal pc_out_reg : std_logic_vector (4 downto 0); 
begin
    process(clk, inc_pc, id_pc, pc_in, reset)
	begin
		if reset='1' then
			pc_out_reg <= "00000";
		elsif (clk'event and clk='1') then
			if inc_pc ='1' then
				pc_out_reg <= pc_out_reg + "00001";
			elsif id_pc = '1' then
				pc_out_reg <= pc_in;
			end if;
		end if;
    end process;											
    	pc_out <= pc_out_reg;

end BEHAVIORAL;
