
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Mo is
  port (
    Hi: in std_logic;
    Gi: in std_logic;
    Fi: in std_logic;
    Di: in std_logic;
    Ci: in std_logic;
    Ei: in std_logic;
    Bi: in std_logic;
    Ai: in std_logic;
    Mo: out std_logic);
end Mo;

architecture Behavioral of Mo is
begin
  Mo <= (((Hi XOR Gi) AND (Di XOR Ci)) OR ((Fi XOR Ei) AND (Bi XOR Ai)));
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity n3_input_decoder is
  port (
    y7: in std_logic;
    y6: in std_logic;
    y5: in std_logic;
    y4: in std_logic;
    y3: in std_logic;
    y2: in std_logic;
    y1: in std_logic;
    y0: in std_logic;
    m0_2: out std_logic;
    m0_1: out std_logic;
    m0_0: out std_logic);
end n3_input_decoder;

architecture Behavioral of n3_input_decoder is
begin
  gate0: entity work.Mo
    port map (
      Hi => y7,
      Gi => y6,
      Fi => y5,
      Di => y3,
      Ci => y2,
      Ei => y4,
      Bi => y1,
      Ai => y0,
      Mo => m0_0);
  gate1: entity work.Mo
    port map (
      Hi => y7,
      Gi => y5,
      Fi => y6,
      Di => y3,
      Ci => y1,
      Ei => y4,
      Bi => y2,
      Ai => y0,
      Mo => m0_1);
  gate2: entity work.Mo
    port map (
      Hi => y7,
      Gi => y3,
      Fi => y6,
      Di => y5,
      Ci => y1,
      Ei => y2,
      Bi => y4,
      Ai => y0,
      Mo => m0_2);
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Reed_decoder is
  port (
    y7: in std_logic;
    y6: in std_logic;
    y5: in std_logic;
    y4: in std_logic;
    y3: in std_logic;
    y2: in std_logic;
    y1: in std_logic;
    y0: in std_logic;
    m2: in std_logic;
    m1: in std_logic;
    m0: in std_logic;
    m3_7: out std_logic;
    m3_6: out std_logic;
    m3_5: out std_logic;
    m3_4: out std_logic;
    m3_3: out std_logic;
    m3_2: out std_logic;
    m3_1: out std_logic;
    m3_0: out std_logic);
end Reed_decoder;

architecture Behavioral of Reed_decoder is
  signal s0: std_logic;
  signal s1: std_logic;
  signal s2: std_logic;
begin
  s0 <= ('1' AND m0);
  s1 <= ('1' AND m1);
  s2 <= ('1' AND m2);
  m3_1 <= (y1 XOR s0);
  m3_3 <= ((y3 XOR s0) XOR s1);
  m3_2 <= (y2 XOR s1);
  m3_5 <= ((y5 XOR s0) XOR s2);
  m3_4 <= (y4 XOR s2);
  m3_6 <= ((y6 XOR s1) XOR s2);
  m3_7 <= (((y7 XOR s0) XOR s1) XOR s2);
  m3_0 <= y0;
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity DIG_Add is
  generic ( Bits: integer ); 
  port (
    s: out std_logic_vector((Bits-1) downto 0);
    c_o: out std_logic;
    a: in std_logic_vector((Bits-1) downto 0);
    b: in std_logic_vector((Bits-1) downto 0);
    c_i: in std_logic );
end DIG_Add;

architecture Behavioral of DIG_Add is
   signal temp : std_logic_vector(Bits downto 0);
begin
   temp <= ('0' & a) + b + c_i;

   s    <= temp((Bits-1) downto 0);
   c_o  <= temp(Bits);
end Behavioral;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Full_Adder_4Bit_woci is
  port (
    a_0, b_0, a_1, b_1: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    s_0, s_1: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    Co: out std_logic);
end Full_Adder_4Bit_woci;

architecture Behavioral of Full_Adder_4Bit_woci is
  signal s0: std_logic;
begin
  gate0: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => a_0,
      b => b_0,
      c_i => '0',
      s => s_0,
      c_o => s0);
  gate1: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => a_1,
      b => b_1,
      c_i => s0,
      s => s_1,
      c_o => Co);
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Full_Adder_6Bit is
  port (
    a_0: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    b_0: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    a_1: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    b_1: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    a_2: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    b_2: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    s_0: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    s_1: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    s_2: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    Co: out std_logic);
end Full_Adder_6Bit;

architecture Behavioral of Full_Adder_6Bit is
  signal s0: std_logic;
  signal s1: std_logic;
begin
  gate0: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => a_0,
      b => b_0,
      c_i => '0',
      s => s_0,
      c_o => s0);
  gate1: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => a_1,
      b => b_1,
      c_i => s0,
      s => s_1,
      c_o => s1);
  gate2: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => a_2,
      b => b_2,
      c_i => s1,
      s => s_2,
      c_o => Co);
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;


entity Mayority_voter is
  port (
    m3_0: in std_logic;
    m3_1: in std_logic;
    m3_2: in std_logic;
    m3_3: in std_logic;
    m3_5: in std_logic;
    m3_4: in std_logic;
    m3_7: in std_logic;
    m3_6: in std_logic;
    m3_d: out std_logic;
    m3_c: out std_logic;
    m3_b: out std_logic;
    m3_a: out std_logic;
    m0_3: out std_logic);
end Mayority_voter;

architecture Behavioral of Mayority_voter is
  signal s0: std_logic;
  signal s1: std_logic;
  signal s2: std_logic;
  signal s3: std_logic;
  signal s4: std_logic;
  signal s5: std_logic;
  signal s6: std_logic;
  signal s7: std_logic;
  signal m3_b_temp: std_logic;
  signal m3_a_temp: std_logic;
  signal s8: std_logic;
  signal s9: std_logic;
  signal s10: std_logic;
  signal s11: std_logic;
  signal s12: std_logic;
  signal s13: std_logic;
begin
  gate0: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => m3_7,
      b => '0',
      c_i => m3_6,
      s => s0,
      c_o => s1);
  gate1: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => m3_5,
      b => '0',
      c_i => m3_4,
      s => s2,
      c_o => s3);
  gate2: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => m3_3,
      b => '0',
      c_i => m3_2,
      s => s4,
      c_o => s5);
  gate3: entity work.DIG_Add
    generic map (
      Bits => 1)
    port map (
      a => m3_1,
      b => '0',
      c_i => m3_0,
      s => s6,
      c_o => s7);
  gate4: entity work.Full_Adder_4Bit_woci
    port map (
      a_0 => s0,
      b_0 => s2,
      a_1 => s1,
      b_1 => s3,
      s_0 => s8,
      s_1 => s10,
      Co => s12);
  gate5: entity work.Full_Adder_4Bit_woci
    port map (
      a_0 => s4,
      b_0 => s6,
      a_1 => s5,
      b_1 => s7,
      s_0 => s9,
      s_1 => s11,
      Co => s13);
  gate6: entity work.Full_Adder_6Bit
    port map (
      a_0 => s8,
      b_0 => s9,
      a_1 => s10,
      b_1 => s11,
      a_2 => s12,
      b_2 => s13,
      s_0 => m3_d,
      s_1 => m3_c,
      s_2 => m3_b_temp,
      Co => m3_a_temp);
  m0_3 <= (m3_b_temp OR m3_a_temp);
  m3_b <= m3_b_temp;
  m3_a <= m3_a_temp;
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Validit_error_display is
  port (
    m3_d: in std_logic;
    m3_c: in std_logic;
    m3_b: in std_logic;
    m3_a: in std_logic;
    n2_Errors: out std_logic;
    n1_Error: out std_logic;
    Valid_No_Errors: out std_logic);
end Validit_error_display;

architecture Behavioral of Validit_error_display is
  signal Valid_No_Errors_temp: std_logic;
  signal n1_Error_temp: std_logic;
begin
  Valid_No_Errors_temp <= (NOT m3_d AND (NOT m3_c AND NOT m3_b));
  n1_Error_temp <= ((NOT m3_a AND (m3_c AND m3_d)) OR (NOT m3_a AND (NOT m3_b AND m3_d)));
  n2_Errors <= (NOT n1_Error_temp AND NOT Valid_No_Errors_temp);
  n1_Error <= n1_Error_temp;
  Valid_No_Errors <= Valid_No_Errors_temp;
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

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
    E1: out std_logic;
    E2: out std_logic);
end main;

architecture Behavioral of main is
  signal m2_temp: std_logic;
  signal m1_temp: std_logic;
  signal m0_temp: std_logic;
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
begin
  gate0: entity work.n3_input_decoder
    port map (
      y7 => y7,
      y6 => y6,
      y5 => y5,
      y4 => y4,
      y3 => y3,
      y2 => y2,
      y1 => y1,
      y0 => y0,
      m0_2 => m2_temp,
      m0_1 => m1_temp,
      m0_0 => m0_temp);
  gate1: entity work.Reed_decoder
    port map (
      y7 => y7,
      y6 => y6,
      y5 => y5,
      y4 => y4,
      y3 => y3,
      y2 => y2,
      y1 => y1,
      y0 => y0,
      m2 => m2_temp,
      m1 => m1_temp,
      m0 => m0_temp,
      m3_7 => s0,
      m3_6 => s1,
      m3_5 => s2,
      m3_4 => s3,
      m3_3 => s4,
      m3_2 => s5,
      m3_1 => s6,
      m3_0 => s7);
  gate2: entity work.Mayority_voter
    port map (
      m3_0 => s7,
      m3_1 => s6,
      m3_2 => s5,
      m3_3 => s4,
      m3_5 => s2,
      m3_4 => s3,
      m3_7 => s0,
      m3_6 => s1,
      m3_d => s8,
      m3_c => s9,
      m3_b => s10,
      m3_a => s11,
      m0_3 => m3);
  gate3: entity work.Validit_error_display
    port map (
      m3_d => s8,
      m3_c => s9,
      m3_b => s10,
      m3_a => s11,
      n2_Errors => E1,
      n1_Error => E2,
      Valid_No_Errors => Valid);
  m0 <= m0_temp;
  m1 <= m1_temp;
  m2 <= m2_temp;
end Behavioral;
