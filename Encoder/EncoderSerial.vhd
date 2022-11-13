library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library ControlUnit;
use ControlUnit.all;

library flipFlopDPET;
use flipFlopDPET.all;

entity EncoderSerial is

	port(clk : in std_logic;
		  nRst: in std_logic;
		  mIn : in std_logic;
		  mOut: out std_logic_vector(7 downto 0));
		  
end EncoderSerial;

architecture Struct of EncoderSerial is
signal s_mIn, s_clk_alt : std_logic;
signal s_mOut : std_logic_vector(7 downto 0);

signal s_tmp1,s_tmp2, s_xor : std_logic_vector(7 downto 0);


begin
ControlUnit: entity work.ControlUnit(controller)
						port map(clk => clk,
									clk_alt => s_clk_alt,
									nRST => nRst,
									xOut => s_mOut);
					
flipFlopDPET: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => mIn,
									nSet => '1',
									nRst => nRst,
									Q => s_mIn);
--------------------------------------------------------------- 
flipFlopDPET0: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => s_tmp2(0),
									nSet => '1',
									nRst => nRst,
									Q => s_xor(0));
									
flipFlopDPET1: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => s_tmp2(1),
									nSet => '1',
									nRst => nRst,
									Q => s_xor(1));
									
flipFlopDPET2: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => s_tmp2(2),
									nSet => '1',
									nRst => nRst,
									Q => s_xor(2));

flipFlopDPET3: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => s_tmp2(3),
									nSet => '1',
									nRst => nRst,
									Q => s_xor(3));

flipFlopDPET4: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => s_tmp2(4),
									nSet => '1',
									nRst => nRst,
									Q => s_xor(4));

flipFlopDPET5: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => s_tmp2(5),
									nSet => '1',
									nRst => nRst,
									Q => s_xor(5));
									
flipFlopDPET6: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => s_tmp2(6),
									nSet => '1',
									nRst => nRst,
									Q => s_xor(6));									

flipFlopDPET7: entity work.flipFlopDPET(behavior)
						port map(clk => clk,
									d => s_tmp2(7),
									nSet => '1',
									nRst => nRst,
									Q => s_xor(7));		
									
s_tmp1(0) <= s_mIn and s_mOut(0);
s_tmp1(1) <= s_mIn and s_mOut(1);
s_tmp1(2) <= s_mIn and s_mOut(2);
s_tmp1(3) <= s_mIn and s_mOut(3);
s_tmp1(4) <= s_mIn and s_mOut(4);
s_tmp1(5) <= s_mIn and s_mOut(5);
s_tmp1(6) <= s_mIn and s_mOut(6);
s_tmp1(7) <= s_mIn and s_mOut(7);

s_tmp2(0) <= s_tmp1(0) xor s_xor(0);             
s_tmp2(1) <= s_tmp1(1) xor s_xor(1);
s_tmp2(2) <= s_tmp1(2) xor s_xor(2);
s_tmp2(3) <= s_tmp1(3) xor s_xor(3);
s_tmp2(4) <= s_tmp1(4) xor s_xor(4);
s_tmp2(5) <= s_tmp1(5) xor s_xor(5);
s_tmp2(6) <= s_tmp1(6) xor s_xor(6);
s_tmp2(7) <= s_tmp1(7) xor s_xor(7);

-------------------------------------------------------- FlipFlop's com a descodificaçao
flipFlopF0: entity work.flipFlopDPET(behavior)
						port map(clk => s_clk_alt,
									d => s_xor(0),
									nSet => '1',
									nRst => nRst,
									Q => mOut(0));
									
flipFlopF1: entity work.flipFlopDPET(behavior)
						port map(clk => s_clk_alt,
									d => s_xor(1),
									nSet => '1',
									nRst => nRst,
									Q => mOut(1));
																		
flipFlopF2: entity work.flipFlopDPET(behavior)
						port map(clk => s_clk_alt,
									d => s_xor(2),
									nSet => '1',
									nRst => nRst,
									Q => mOut(2));
									
flipFlopF3: entity work.flipFlopDPET(behavior)
						port map(clk => s_clk_alt,
									d => s_xor(3),
									nSet => '1',
									nRst => nRst,
									Q => mOut(3));
																											
flipFlopF4: entity work.flipFlopDPET(behavior)
						port map(clk => s_clk_alt,
									d => s_xor(4),
									nSet => '1',
									nRst => nRst,
									Q => mOut(4));
									
flipFlopF5: entity work.flipFlopDPET(behavior)
						port map(clk => s_clk_alt,
									d => s_xor(5),
									nSet => '1',
									nRst => nRst,
									Q => mOut(5));
									
flipFlopF6: entity work.flipFlopDPET(behavior)
						port map(clk => s_clk_alt,
									d => s_xor(6),
									nSet => '1',
									nRst => nRst,
									Q => mOut(6));
									
flipFlopF7: entity work.flipFlopDPET(behavior)
						port map(clk => s_clk_alt,
									d => s_xor(7),
									nSet => '1',
									nRst => nRst,
									Q => mOut(7));

end Struct;