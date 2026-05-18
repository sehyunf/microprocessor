library IEEE;
use IEEE.std_logic_1164.all;
entity state_machine is
port ( clock : in  std_logic;  
	reset : in  std_logic;
	control : in  std_logic;
	Y : out std_logic_vector(1 downto 0));
end state_machine;

architecture behav of state_machine is
type state is (ST0, ST1, ST2, ST3);
signal current_state : state;
signal next_state : state;
begin
com : process (control, current_state)
	begin
		case current_state is
			when ST0 => next_state <= ST1;
			when ST1 => 
				if (control = '1') then next_state <= ST2;
				else next_state <= ST3;
				end if;
			when ST2 => next_state <= ST3;
			when ST3 => next_state <= ST0;
			when OTHERS => next_state <= ST0;
		end case;
	end process com;
seq : process (clock, reset)
	begin
		if (reset = '1') then
			current_state <= ST0;
		elsif clock'event and clock = '1' then
			current_state <= next_state;
		end if;
	end process seq;
with current_state select
	Y <= "00" when ST0,
 		"01" when ST1,
 		"10" when ST2,
 		"11" when ST3,
 		"00" when OTHERS;
end behav;