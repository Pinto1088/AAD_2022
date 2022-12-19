library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Decoder is

	port (yIn  : in  std_logic_vector(7 downto 0);
			msOut: out std_logic_vector(3 downto 0);
			valid: out std_logic);
	
end Decoder;

architecture Struct of Decoder is

	signal c10,c11,c12,c13 : std_logic;
	signal c20,c21,c22,c23 : std_logic;
	signal c30,c31,c32,c33 : std_logic;
	
	signal m0_one,m1_one,m2_one 			: std_logic;
	signal m0_zero,m1_zero,m2_zero      : std_logic;
	signal m0_error,m1_error,m2_error   : std_logic;
	
	signal s_valid        : std_logic;
	signal m_slash,PopOut : std_logic_vector(3 downto 0);
	signal zed,popIn      : std_logic_vector(7 downto 0);
		 
	begin
	
--	c10 <= yIn(7) xor yIn(6);
--	c11 <= yIn(5) xor yIn(4);
--	c12 <= yIn(3) xor yIn(2);
--	c13 <= yIn(1) xor yIn(0);
--	c20 <= yIn(7) xor yIn(5);
--	c21 <= yIn(6) xor yIn(4);
--	c22 <= yIn(3) xor yIn(1);
--	c23 <= yIn(2) xor yIn(0);
--	c30 <= yIn(7) xor yIn(3);
--	c31 <= yIn(6) xor yIn(2);
--	c32 <= yIn(5) xor yIn(1);
--	c33 <= yIn(4) xor yIn(0);

	c10 <= yIn(0) xor yIn(1);
	c11 <= yIn(2) xor yIn(3);
	c12 <= yIn(4) xor yIn(5);
	c13 <= yIn(6) xor yIn(7);
	c20 <= yIn(0) xor yIn(2);
	c21 <= yIn(1) xor yIn(3);
	c22 <= yIn(4) xor yIn(6);
	c23 <= yIn(5) xor yIn(7);
	c30 <= yIn(0) xor yIn(4);
	c31 <= yIn(1) xor yIn(5);
	c32 <= yIn(2) xor yIn(6);
	c33 <= yIn(3) xor yIn(7);
	
	m0_one <= (c13 and c12 and c11) or (c13 and c12 and c10) or (c10 and c11 and c13 ) or (c10 and c11 and c12);
	m1_one <= (c23 and c22 and c21) or (c23 and c22 and c20) or (c20 and c21 and c23 ) or (c20 and c21 and c22);
	m2_one <= (c33 and c32 and c31) or (c33 and c32 and c30) or (c30 and c31 and c33 ) or (c30 and c31 and c32);
	
	m0_zero <= (not c13 and not c12 and not c11) or (not c13 and not c12 and not c10) or (not c10 and not c11 and not c13 ) or (not c10 and not c11 and not c12);
	m1_zero <= (not c23 and not c22 and not c21) or (not c23 and not c22 and not c20) or (not c20 and not c21 and not c23 ) or (not c20 and not c21 and not c22);
	m2_zero <= (not c33 and not c32 and not c31) or (not c33 and not c32 and not c30) or (not c30 and not c31 and not c33 ) or (not c30 and not c31 and not c32);
	
	m0_error <= not (m0_one or m0_zero);
	m1_error <= not (m1_one or m1_zero);
	m2_error <= not (m2_one or m2_zero);
	s_valid <= not (m0_error or m1_error or m2_error);
	
	m_slash(0) <= m0_one and s_valid;
	m_slash(1) <= m1_one and s_valid;
	m_slash(2) <= m2_one and s_valid;
	m_slash(3) <= '0';
	
	valid <= s_valid;
	
	partial_decoder: entity work.Encoder(Struct)
						  port map( mIn  => m_slash,
									   xOut => zed);
									
									  
	popIn(7) <= zed(7) xor yIn(7);
	popIn(6) <= zed(6) xor yIn(6); 
	popIn(5) <= zed(5) xor yIn(5);
	popIn(4) <= zed(4) xor yIn(4);
	popIn(3) <= zed(3) xor yIn(3);
	popIn(2) <= zed(2) xor yIn(2);
	popIn(1) <= zed(1) xor yIn(1);
	popIn(0) <= zed(0) xor yIn(0);
	
	popCounter8: entity work.popCounter_8bitParallelOpt(structure) 
					 port map( d => popIn,
								  c => popOut);
									
								 
--	msOut(3) <= (popOut(3) xor popOut(2)) and s_valid;
--	msOut(2) <= m_slash(2);
--	msOut(1) <= m_slash(1);
--	msOut(0) <= m_slash(0);
	
	msOut(0) <= (popOut(3) xor popOut(2)) and s_valid;
	msOut(1) <= m_slash(2);
	msOut(2) <= m_slash(1);
	msOut(3) <= m_slash(0);
										  	
end Struct;