library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ControlUnit is
port(	clk     : in  std_logic;
		clk_alt : out std_logic;
		nRST : in  std_logic;
		xOut : out std_logic_vector(7 downto 0));
			
end ControlUnit;

architecture controller of ControlUnit is

type states is(s_rst, s_0, s_1, s_2, s_3);
signal Pstate, Nstate: states;
begin

process(clk)
begin

if(rising_edge(clk)) then
	
	if(nRST = '0') then
	Pstate <= s_rst;
	else
	Pstate <= Nstate;
	end if;
	
end if;
end process;

process(Pstate)
begin

xOut <= "00000000";

case Pstate is	
	when s_rst =>
	xOut <= "00000000";
	clk_alt <= '0';
	Nstate <= S_0;
	
	when s_0 =>
	xOut <= "01010101";
	clk_alt <= '0';
	Nstate <= S_1;
	
	when s_1 =>
	xOut <= "00110011";
	clk_alt <= '0';
	Nstate <= S_2;
	
	when s_2 =>
	xOut <= "00001111";
	clk_alt <= '0';
	Nstate <= S_3;
	
	
	when s_3 =>
	xOut <= "11111111";
	clk_alt <= '1';
	Nstate <= s_rst;
	
	
	end case;
	
end process;
end controller;