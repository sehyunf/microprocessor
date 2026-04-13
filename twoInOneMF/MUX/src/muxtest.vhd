-------------------------------------------------------------------------------
--
-- Title       : muxtest
-- Design      : MUX
-- Author      : PC
-- Company     : sehyun
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/twoInOneMF/MUX/src/muxtest.vhd
-- Generated   : Mon Apr 13 17:36:50 2026
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
--{entity {muxtest} architecture {muxtest}}

library IEEE;
use IEEE.std_logic_1164.all;


entity muxtest is
end muxtest;

--}} End of automatically maintained section

architecture muxtest of muxtest is	

signal x1, x2, y1: STD_LOGIC_vector( 4 downto 0);
signal sel1: STD_logic;

component mux 
	port(
		A : in STD_LOGIC_VECTOR( 4 downto 0);
		B : in STD_LOGIC_VECTOR( 4 downto 0);
		sel : in STD_LOGIC;					 
		MUX_OUT : out STD_LOGIC_VECTOR( 4 downto 0)
	);
end component;

begin

	m1: mux port map (x1, x2, sel1, y1);
	sel1 <= '0', '1' after 50 ns, '0' after 100 ns,		--sel은 처음에 0이었다가 50ns뒤에 1로 바뀐다 100ns가 지나면 0으로 바뀐다 125ns가 지나면 1이 된다--
	'1' after 125 ns;
	x1 <= "10000", "01010" after 25 ns, "00001" after 50 ns,
	"01101" after 75 ns, "11111" after 100 ns;
	x2 <= "00101", "10101" after 25 ns, "00000" after 50 ns,
	"01011" after 75 ns, "00100" after 100 ns;


end muxtest;
