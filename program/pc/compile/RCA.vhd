-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : pc
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\program\pc\compile\RCA.vhd
-- Generated   : Mon May 11 17:34:06 2026
-- From        : c:\My_Designs\program\pc\src\RCA.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;

entity RCA is
  port(
       clk : in STD_LOGIC;
       reset : in STD_LOGIC;
       output0 : out STD_LOGIC;
       output1 : out STD_LOGIC;
       output2 : out STD_LOGIC;
       output3 : out STD_LOGIC
  );
end RCA;

architecture RCA of RCA is

---- Component declarations -----

component pc
  port(
       clk : in STD_LOGIC;
       D : in STD_LOGIC;
       nq : out STD_LOGIC;
       q : out STD_LOGIC;
       reset : in STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET639 : STD_LOGIC;
signal NET657 : STD_LOGIC;
signal NET667 : STD_LOGIC;
signal NET675 : STD_LOGIC;
signal NET695 : STD_LOGIC;
signal NET705 : STD_LOGIC;
signal NET743 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : pc
  port map(
       clk => clk,
       D => NET639,
       nq => NET639,
       q => NET743,
       reset => NET743
  );

U2 : pc
  port map(
       clk => NET743,
       D => NET657,
       nq => NET657,
       q => NET667,
       reset => NET743
  );

U3 : pc
  port map(
       clk => NET667,
       D => NET675,
       nq => NET675,
       q => NET705,
       reset => NET743
  );

U4 : pc
  port map(
       clk => NET705,
       D => NET695,
       nq => NET695,
       q => output3,
       reset => NET743
  );

NET743 <= NET743;

NET667 <= NET667;

NET705 <= NET705;


---- Terminal assignment ----

    -- Inputs terminals
	NET743 <= reset;

    -- Output\buffer terminals
	output0 <= NET743;
	output1 <= NET667;
	output2 <= NET705;


end RCA;
