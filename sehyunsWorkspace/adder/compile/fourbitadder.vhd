-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : adder
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sehyunsWorkspace\adder\compile\fourbitadder.vhd
-- Generated   : Mon Mar 30 18:05:39 2026
-- From        : c:\My_Designs\sehyunsWorkspace\adder\src\fourbitadder.bde
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

entity fourbitadder is
  port(
       A1 : in STD_LOGIC;
       A0 : in STD_LOGIC;
       A2 : in STD_LOGIC;
       A3 : in STD_LOGIC;
       B0 : in STD_LOGIC;
       B1 : in STD_LOGIC;
       B2 : in STD_LOGIC;
       B3 : in STD_LOGIC;
       Cin : in STD_LOGIC;
       Cout : out STD_LOGIC;
       SUM0 : out STD_LOGIC;
       SUM1 : out STD_LOGIC;
       SUM2 : out STD_LOGIC;
       SUM3 : out STD_LOGIC
  );
end fourbitadder;

architecture fourbitadder of fourbitadder is

---- Component declarations -----

component fulladder
  port(
       Cin : in STD_LOGIC;
       Cout : out STD_LOGIC;
       A : in STD_LOGIC;
       B : in STD_LOGIC;
       SUM : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET649 : STD_LOGIC;
signal NET677 : STD_LOGIC;
signal NET689 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : fulladder
  port map(
       Cin => Cin,
       Cout => NET649,
       A => A1,
       B => B0,
       SUM => SUM0
  );

U2 : fulladder
  port map(
       Cin => NET649,
       Cout => NET677,
       A => A0,
       B => B1,
       SUM => SUM1
  );

U3 : fulladder
  port map(
       Cin => NET677,
       Cout => NET689,
       A => A2,
       B => B2,
       SUM => SUM2
  );

U4 : fulladder
  port map(
       Cin => NET689,
       Cout => Cout,
       A => A3,
       B => B3,
       SUM => SUM3
  );


end fourbitadder;
