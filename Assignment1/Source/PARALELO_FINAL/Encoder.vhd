library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Encoder is

	port (mIn : in  std_logic_vector(3 downto 0);
			xOut: out std_logic_vector(7 downto 0));
			
end Encoder;

architecture Struct of Encoder is

	signal s0,s1,s2,s3,s4,s5,s6,s7 : std_logic;
	begin
	
	process (mIn)
	begin
	
--	s0 <=  mIn(3);
--	s1 <=  mIn(3) xor mIn(0);
--	s2 <=  mIn(3) xor mIn(1);
--	s3 <=  mIn(0) xor s2; 
--	s4 <=  mIn(3) xor mIn(2);
--	s5 <=  mIn(2) xor s1;
--	s6 <=  mIn(1) xor s4;
--	s7 <=  mIn(0) xor s6;
	
	s0 <=  mIn(0);
	s1 <=  mIn(0) xor mIn(3);
	s2 <=  mIn(0) xor mIn(2);
	s3 <=  mIn(3) xor s2; 
	s4 <=  mIn(0) xor mIn(1);
	s5 <=  mIn(1) xor s1;
	s6 <=  mIn(2) xor s4;
	s7 <=  mIn(3) xor s6;
	
	end process;
	
--	xOut(0) <= s0;
--	xOut(1) <= s1;
--	xOut(2) <= s2;
--	xOut(3) <= s3;
--	xOut(4) <= s4;
--	xOut(5) <= s5;
--	xOut(6) <= s6;
--	xOut(7) <= s7;
	
	xOut(7) <= s0;
	xOut(6) <= s1;
	xOut(5) <= s2;
	xOut(4) <= s3;
	xOut(3) <= s4;
	xOut(2) <= s5;
	xOut(1) <= s6;
	xOut(0) <= s7;

end Struct;