-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : cpu
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\cpu\cpu\compile\cpu.vhd
-- Generated   : Wed Jun 10 17:06:37 2026
-- From        : C:\My_Designs\cpu\cpu\src\cpu.bde
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity cpu is
  port(
       CLK : in STD_LOGIC;
       RESET : in STD_LOGIC;
       RD : out STD_LOGIC;
       WR : out STD_LOGIC;
       MEM_ADDR : out STD_LOGIC_VECTOR(4 downto 0);
       MEM_DATA : inout STD_LOGIC_VECTOR(7 downto 0)
  );
end cpu;

architecture cpu of cpu is

---- Component declarations -----

component ACC
  port(
       ACC_IN : in STD_LOGIC_VECTOR(7 downto 0);
       CLK : in STD_LOGIC;
       LD : in STD_LOGIC;
       RESET : in STD_LOGIC;
       ACC_OUT : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component alu
  port(
       A : in STD_LOGIC_VECTOR(7 downto 0);
       B : in STD_LOGIC_VECTOR(7 downto 0);
       op : in STD_LOGIC_VECTOR(2 downto 0);
       alu_out : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component BI
  port(
       BUF_IN : in STD_LOGIC_VECTOR(7 downto 0);
       EN : in STD_LOGIC;
       BID_BUS : inout STD_LOGIC_VECTOR(7 downto 0);
       BUF_OUT : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component CONTROL_LOGIC
  port(
       OP : in STD_LOGIC_VECTOR(2 downto 0);
       PSTATE : in STD_LOGIC_VECTOR(1 downto 0);
       ZERO : in STD_LOGIC;
       DOUT_EN : out STD_LOGIC;
       INC : out STD_LOGIC;
       LD_ACC : out STD_LOGIC;
       LD_IR : out STD_LOGIC;
       LD_MDR : out STD_LOGIC;
       LD_PC : out STD_LOGIC;
       NSTATE : out STD_LOGIC_VECTOR(1 downto 0);
       RD : out STD_LOGIC;
       SEL : out STD_LOGIC;
       WR : out STD_LOGIC
  );
end component;
component FLAG
  port(
       ALU_OUT : in STD_LOGIC_VECTOR(7 downto 0);
       CLK : in STD_LOGIC;
       LD : in STD_LOGIC;
       FLAG : out STD_LOGIC
  );
end component;
component IR
  port(
       CLK : in STD_LOGIC;
       IR_IN : in STD_LOGIC_VECTOR(7 downto 0);
       LD : in STD_LOGIC;
       IR_OUT : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component MDR
  port(
       CLK : in STD_LOGIC;
       LD : in STD_LOGIC;
       MDR_IN : in STD_LOGIC_VECTOR(7 downto 0);
       MDR_OUT : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component mux
  port(
       A : in STD_LOGIC_VECTOR(4 downto 0);
       B : in STD_LOGIC_VECTOR(4 downto 0);
       sel : in STD_LOGIC;
       MUX_OUT : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;
component program_counter
  port(
       CLK : in STD_LOGIC;
       inc_pc : in STD_LOGIC;
       ld_pc : in STD_LOGIC;
       RESET : in STD_LOGIC;
       pc_in : in STD_LOGIC_VECTOR(4 downto 0);
       pc_out : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;
component state
  port(
       CLK : in STD_LOGIC;
       RESET : in STD_LOGIC;
       STATE_IN : in STD_LOGIC_VECTOR(1 downto 0);
       STATE_OUT : out STD_LOGIC_VECTOR(1 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET769 : STD_LOGIC;
signal NET794 : STD_LOGIC;
signal NET823 : STD_LOGIC;
signal NET831 : STD_LOGIC;
signal NET853 : STD_LOGIC;
signal NET870 : STD_LOGIC;
signal NET894 : STD_LOGIC;
signal NET910 : STD_LOGIC;
signal data : STD_LOGIC_VECTOR(7 downto 0);
signal data661 : STD_LOGIC_VECTOR(7 downto 0);
signal data685 : STD_LOGIC_VECTOR(7 downto 0);
signal data728 : STD_LOGIC_VECTOR(4 downto 0);
signal data815 : STD_LOGIC_VECTOR(1 downto 0);
signal data856 : STD_LOGIC_VECTOR(7 downto 0);
signal data882 : STD_LOGIC_VECTOR(1 downto 0);
signal data968 : STD_LOGIC_VECTOR(7 downto 0);

begin

----  Component instantiations  ----

U1 : MDR
  port map(
       CLK => CLK,
       LD => NET894,
       MDR_IN => data685,
       MDR_OUT => data968
  );

U10 : mux
  port map(
       A => data728,
       B(4) => data(4),
       B(3) => data(3),
       B(2) => data(2),
       B(1) => data(1),
       B(0) => data(0),
       sel => NET769,
       MUX_OUT => MEM_ADDR
  );

U2 : IR
  port map(
       CLK => CLK,
       IR_IN => data685,
       LD => NET870,
       IR_OUT => data
  );

U3 : BI
  port map(
       BUF_IN => data856,
       EN => NET794,
       BID_BUS => MEM_DATA,
       BUF_OUT => data685
  );

U4 : alu
  port map(
       A => data856,
       B => data968,
       op(2) => data(7),
       op(1) => data(6),
       op(0) => data(5),
       alu_out => data661
  );

U5 : ACC
  port map(
       ACC_IN => data661,
       CLK => CLK,
       LD => NET853,
       RESET => RESET,
       ACC_OUT => data856
  );

U6 : FLAG
  port map(
       ALU_OUT => data661,
       CLK => CLK,
       LD => NET853,
       FLAG => NET823
  );

U7 : CONTROL_LOGIC
  port map(
       OP(2) => data(7),
       OP(1) => data(6),
       OP(0) => data(5),
       PSTATE => data815,
       ZERO => NET823,
       DOUT_EN => NET794,
       INC => NET831,
       LD_ACC => NET853,
       LD_IR => NET870,
       LD_MDR => NET894,
       LD_PC => NET910,
       NSTATE => data882,
       RD => RD,
       SEL => NET769,
       WR => WR
  );

U8 : state
  port map(
       CLK => CLK,
       RESET => RESET,
       STATE_IN => data882,
       STATE_OUT => data815
  );

U9 : program_counter
  port map(
       CLK => CLK,
       inc_pc => NET831,
       ld_pc => NET910,
       RESET => RESET,
       pc_in(4) => data(4),
       pc_in(3) => data(3),
       pc_in(2) => data(2),
       pc_in(1) => data(1),
       pc_in(0) => data(0),
       pc_out => data728
  );


end cpu;
