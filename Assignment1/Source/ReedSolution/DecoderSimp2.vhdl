-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity DIG_Add is
  generic ( Bits: integer := 1); 
  port (
    s: out std_logic_vector((Bits-1) downto 0);
    c_o: out std_logic;
    a: in std_logic_vector((Bits-1) downto 0);
    b: in std_logic_vector((Bits-1) downto 0);
    c_i: in std_logic_vector );
end DIG_Add;

architecture Behavioral of DIG_Add is
   signal temp : std_logic_vector(Bits downto 0);
begin
   temp <= ('0' & a) or b or c_i;

   s    <= temp((Bits-1) downto 0);
   c_o  <= temp(Bits);
end Behavioral;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- USE ieee.numeric_std.all;

entity main is
  port (
    y7: in std_logic;
    y6: in std_logic;
    y5: in std_logic;
    y4: in std_logic;
    y3: in std_logic;
    y2: in std_logic;
    y1: in std_logic;
    y0: in std_logic;
    m0: out std_logic;
    m1: out std_logic;
    m2: out std_logic;
    m3: out std_logic;
    Valid: out std_logic;
    Error2: out std_logic;
    Error1: out std_logic);
end main;

architecture Behavioral of main is
  signal m0_temp: std_logic;
  signal m2_temp: std_logic;
  signal m1_temp: std_logic;
  signal s0: std_logic;
  signal s1: std_logic;
  signal s2: std_logic;
  signal s3: std_logic;
  signal s4: std_logic;
  signal s5: std_logic;
  signal s6: std_logic;
  signal s7: std_logic;
  signal s8: std_logic;
  signal s9: std_logic;
  signal s10: std_logic;
  signal s11: std_logic;
  signal s12: std_logic;
  signal s13: std_logic;
  signal s14: std_logic;
  signal s15: std_logic;
  signal s16: std_logic;
  signal s17: std_logic;
  signal s18: std_logic;
  signal s19: std_logic;
  signal s20: std_logic;
  signal s21: std_logic;
  signal s22: std_logic;
  signal s23: std_logic;
  signal s24: std_logic;
  signal s25: std_logic;
  signal s26: std_logic;
  signal s27: std_logic;
  signal s28: std_logic;
  signal s29: std_logic;
  signal s30: std_logic;
  signal s31: std_logic;
  signal Valid_temp: std_logic;
  signal Error1_temp: std_logic;
begin
  m0_temp <= (((y7 XOR y6) AND (y3 XOR y2)) OR ((y5 XOR y4) AND (y1 XOR y0)));
  m2_temp <= (((y7 XOR y3) AND (y5 XOR y1)) OR ((y6 XOR y2) AND (y4 XOR y0)));
  m1_temp <= (((y7 XOR y5) AND (y3 XOR y1)) OR ((y6 XOR y4) AND (y2 XOR y0)));
  s0 <= ('1' AND m0_temp);
  s1 <= ('1' AND m1_temp);
  s2 <= ('1' AND m2_temp);
  s3 <= (y1 XOR s0);
  s4 <= ((y3 XOR s0) XOR s1);
  s5 <= (y2 XOR s1);
  s6 <= ((y5 XOR s0) XOR s2);
  s7 <= (y4 XOR s2);
  s8 <= ((y6 XOR s1) XOR s2);
  s9 <= (((y7 XOR s0) XOR s1) XOR s2);
  gate0: entity work.DIG_Add -- Half-Adder1
    generic map (
      Bits => 1)
    port map (
      a => s9,
      b => '0',
      c_i => s8,
      s => s10,
      c_o => s11);
  gate1: entity work.DIG_Add -- Half-Adder2
    generic map (
      Bits => 1)
    port map (
      a => s6,
      b => '0',
      c_i => s7,
      s => s12,
      c_o => s13);
  gate2: entity work.DIG_Add -- Half-Adder3
    generic map (
      Bits => 1)
    port map (
      a => s4,
      b => '0',
      c_i => s5,
      s => s14,
      c_o => s15);
  gate3: entity work.DIG_Add -- Half-Adder4
    generic map (
      Bits => 1)
    port map (
      a => s3,
      b => '0',
      c_i => y0,
      s => s16,
      c_o => s17);
  gate4: entity work.DIG_Add -- FA1
    generic map (
      Bits => 1)
    port map (
      a => s10,
      b => s12,
      c_i => '0',
      s => s18,
      c_o => s19);
  gate5: entity work.DIG_Add -- FA3
    generic map (
      Bits => 1)
    port map (
      a => s14,
      b => s16,
      c_i => '0',
      s => s22,
      c_o => s23);
  gate6: entity work.DIG_Add -- FA2
    generic map (
      Bits => 1)
    port map (
      a => s11,
      b => s13,
      c_i => s19,
      s => s20,
      c_o => s21);
  gate7: entity work.DIG_Add -- FA4
    generic map (
      Bits => 1)
    port map (
      a => s15,
      b => s17,
      c_i => s23,
      s => s24,
      c_o => s25);
  gate8: entity work.DIG_Add -- FA5
    generic map (
      Bits => 1)
    port map (
      a => s18,
      b => s22,
      c_i => '0',
      s => s31,
      c_o => s26);
  gate9: entity work.DIG_Add -- FA6
    generic map (
      Bits => 1)
    port map (
      a => s20,
      b => s24,
      c_i => s26,
      s => s27,
      c_o => s28);
  gate10: entity work.DIG_Add -- FA7
    generic map (
      Bits => 1)
    port map (
      a => s21,
      b => s25,
      c_i => s28,
      s => s29,
      c_o => s30);
  Valid_temp <= (NOT s31 AND (NOT s27 AND NOT s29));
  Error1_temp <= ((NOT s30 AND (s27 AND s31)) OR (NOT s30 AND (NOT s29 AND s31)));
  m3 <= (s29 OR s30);
  Error2 <= (NOT Error1_temp AND NOT Valid_temp);
  m0 <= m0_temp;
  m1 <= m1_temp;
  m2 <= m2_temp;
  Valid <= Valid_temp;
  Error1 <= Error1_temp;
end Behavioral;
