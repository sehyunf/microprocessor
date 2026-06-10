-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : adder
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sehyunsWorkspace\adder\compile\fulladder.vhd
-- Generated   : Mon Mar 30 17:49:13 2026
-- From        : c:\My_Designs\sehyunsWorkspace\adder\src\fulladder.bde
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

entity fulladder is
  port(
       Cin : in STD_LOGIC;
       Cout : out STD_LOGIC;
       A : in STD_LOGIC;
       B : in STD_LOGIC;
       SUM : out STD_LOGIC
  );
end fulladder;

architecture fulladder of fulladder is

---- Component declarations -----

component halfadder
  port(
       A : in STD_LOGIC;
       B : in STD_LOGIC;
       SUM : out STD_LOGIC;
       Carry : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET634 : STD_LOGIC;
signal NET638 : STD_LOGIC;
signal NET646 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : halfadder
  port map(
       A => A,
       B => B,
       SUM => NET634,
       Carry => NET638
  );

U2 : halfadder
  port map(
       A => NET634,
       B => Cin,
       SUM => SUM,
       Carry => NET646
  );

Cout <= NET646 or NET638;


end fulladder;
