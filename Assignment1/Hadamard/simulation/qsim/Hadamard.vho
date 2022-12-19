-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/13/2022 21:36:55"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Decoder IS
    PORT (
	yIn : IN std_logic_vector(7 DOWNTO 0);
	msOut : OUT std_logic_vector(3 DOWNTO 0);
	valid : OUT std_logic
	);
END Decoder;

ARCHITECTURE structure OF Decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_yIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_msOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL \msOut[0]~output_o\ : std_logic;
SIGNAL \msOut[1]~output_o\ : std_logic;
SIGNAL \msOut[2]~output_o\ : std_logic;
SIGNAL \msOut[3]~output_o\ : std_logic;
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \yIn[2]~input_o\ : std_logic;
SIGNAL \yIn[3]~input_o\ : std_logic;
SIGNAL \c11~combout\ : std_logic;
SIGNAL \yIn[6]~input_o\ : std_logic;
SIGNAL \yIn[7]~input_o\ : std_logic;
SIGNAL \c13~combout\ : std_logic;
SIGNAL \yIn[0]~input_o\ : std_logic;
SIGNAL \yIn[1]~input_o\ : std_logic;
SIGNAL \c10~combout\ : std_logic;
SIGNAL \yIn[4]~input_o\ : std_logic;
SIGNAL \yIn[5]~input_o\ : std_logic;
SIGNAL \c12~combout\ : std_logic;
SIGNAL \s_valid~0_combout\ : std_logic;
SIGNAL \c31~combout\ : std_logic;
SIGNAL \c33~combout\ : std_logic;
SIGNAL \c30~combout\ : std_logic;
SIGNAL \c32~combout\ : std_logic;
SIGNAL \s_valid~1_combout\ : std_logic;
SIGNAL \c21~combout\ : std_logic;
SIGNAL \c23~combout\ : std_logic;
SIGNAL \c20~combout\ : std_logic;
SIGNAL \c22~combout\ : std_logic;
SIGNAL \s_valid~2_combout\ : std_logic;
SIGNAL \s_valid~3_combout\ : std_logic;
SIGNAL \m0_one~0_combout\ : std_logic;
SIGNAL \m_slash[0]~0_combout\ : std_logic;
SIGNAL \m2_one~0_combout\ : std_logic;
SIGNAL \popCounter8|hA02|and20|y~combout\ : std_logic;
SIGNAL \popCounter8|fA11|fA0|xor20|y~combout\ : std_logic;
SIGNAL \s_valid~4_combout\ : std_logic;
SIGNAL \popCounter8|fA20|hA0|and20|y~combout\ : std_logic;
SIGNAL \m1_one~0_combout\ : std_logic;
SIGNAL \m_slash[1]~1_combout\ : std_logic;
SIGNAL \popCounter8|fA10|fA0|xor21|y~0_combout\ : std_logic;
SIGNAL \popCounter8|fA10|fA0|xor21|y~1_combout\ : std_logic;
SIGNAL \popCounter8|fA10|fA0|xor21|y~2_combout\ : std_logic;
SIGNAL \popCounter8|fA10|fA0|xor21|y~3_combout\ : std_logic;
SIGNAL \popCounter8|fA20|fA10|or20|y~0_combout\ : std_logic;
SIGNAL \popCounter8|hA01|and20|y~combout\ : std_logic;
SIGNAL \popCounter8|fA10|fA0|and20|y~combout\ : std_logic;
SIGNAL \popCounter8|fA11|fA0|and20|y~combout\ : std_logic;
SIGNAL \msOut~0_combout\ : std_logic;
SIGNAL \partial_decoder|xOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL m_slash : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_msOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_valid~3_combout\ : std_logic;

BEGIN

ww_yIn <= yIn;
msOut <= ww_msOut;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_msOut~0_combout\ <= NOT \msOut~0_combout\;
\ALT_INV_s_valid~3_combout\ <= NOT \s_valid~3_combout\;

\msOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_msOut~0_combout\,
	devoe => ww_devoe,
	o => \msOut[0]~output_o\);

\msOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => m_slash(2),
	devoe => ww_devoe,
	o => \msOut[1]~output_o\);

\msOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_slash[1]~1_combout\,
	devoe => ww_devoe,
	o => \msOut[2]~output_o\);

\msOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_slash[0]~0_combout\,
	devoe => ww_devoe,
	o => \msOut[3]~output_o\);

\valid~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_valid~3_combout\,
	devoe => ww_devoe,
	o => \valid~output_o\);

\yIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(2),
	o => \yIn[2]~input_o\);

\yIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(3),
	o => \yIn[3]~input_o\);

c11 : cycloneiv_lcell_comb
-- Equation(s):
-- \c11~combout\ = \yIn[2]~input_o\ $ (\yIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[2]~input_o\,
	datad => \yIn[3]~input_o\,
	combout => \c11~combout\);

\yIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(6),
	o => \yIn[6]~input_o\);

\yIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(7),
	o => \yIn[7]~input_o\);

c13 : cycloneiv_lcell_comb
-- Equation(s):
-- \c13~combout\ = \yIn[6]~input_o\ $ (\yIn[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[6]~input_o\,
	datad => \yIn[7]~input_o\,
	combout => \c13~combout\);

\yIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(0),
	o => \yIn[0]~input_o\);

\yIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(1),
	o => \yIn[1]~input_o\);

c10 : cycloneiv_lcell_comb
-- Equation(s):
-- \c10~combout\ = \yIn[0]~input_o\ $ (\yIn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[0]~input_o\,
	datad => \yIn[1]~input_o\,
	combout => \c10~combout\);

\yIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(4),
	o => \yIn[4]~input_o\);

\yIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(5),
	o => \yIn[5]~input_o\);

c12 : cycloneiv_lcell_comb
-- Equation(s):
-- \c12~combout\ = \yIn[4]~input_o\ $ (\yIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[4]~input_o\,
	datad => \yIn[5]~input_o\,
	combout => \c12~combout\);

\s_valid~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~0_combout\ = (\c11~combout\ & ((\c13~combout\ & (!\c10~combout\ & !\c12~combout\)) # (!\c13~combout\ & (\c10~combout\ $ (\c12~combout\))))) # (!\c11~combout\ & ((\c13~combout\ & (\c10~combout\ $ (\c12~combout\))) # (!\c13~combout\ & 
-- (\c10~combout\ & \c12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11~combout\,
	datab => \c13~combout\,
	datac => \c10~combout\,
	datad => \c12~combout\,
	combout => \s_valid~0_combout\);

c31 : cycloneiv_lcell_comb
-- Equation(s):
-- \c31~combout\ = \yIn[1]~input_o\ $ (\yIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[1]~input_o\,
	datad => \yIn[5]~input_o\,
	combout => \c31~combout\);

c33 : cycloneiv_lcell_comb
-- Equation(s):
-- \c33~combout\ = \yIn[3]~input_o\ $ (\yIn[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[3]~input_o\,
	datad => \yIn[7]~input_o\,
	combout => \c33~combout\);

c30 : cycloneiv_lcell_comb
-- Equation(s):
-- \c30~combout\ = \yIn[0]~input_o\ $ (\yIn[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[0]~input_o\,
	datad => \yIn[4]~input_o\,
	combout => \c30~combout\);

c32 : cycloneiv_lcell_comb
-- Equation(s):
-- \c32~combout\ = \yIn[2]~input_o\ $ (\yIn[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[2]~input_o\,
	datad => \yIn[6]~input_o\,
	combout => \c32~combout\);

\s_valid~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~1_combout\ = (\c31~combout\ & ((\c33~combout\ & (!\c30~combout\ & !\c32~combout\)) # (!\c33~combout\ & (\c30~combout\ $ (\c32~combout\))))) # (!\c31~combout\ & ((\c33~combout\ & (\c30~combout\ $ (\c32~combout\))) # (!\c33~combout\ & 
-- (\c30~combout\ & \c32~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c31~combout\,
	datab => \c33~combout\,
	datac => \c30~combout\,
	datad => \c32~combout\,
	combout => \s_valid~1_combout\);

c21 : cycloneiv_lcell_comb
-- Equation(s):
-- \c21~combout\ = \yIn[3]~input_o\ $ (\yIn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[3]~input_o\,
	datad => \yIn[1]~input_o\,
	combout => \c21~combout\);

c23 : cycloneiv_lcell_comb
-- Equation(s):
-- \c23~combout\ = \yIn[7]~input_o\ $ (\yIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[7]~input_o\,
	datad => \yIn[5]~input_o\,
	combout => \c23~combout\);

c20 : cycloneiv_lcell_comb
-- Equation(s):
-- \c20~combout\ = \yIn[2]~input_o\ $ (\yIn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[2]~input_o\,
	datad => \yIn[0]~input_o\,
	combout => \c20~combout\);

c22 : cycloneiv_lcell_comb
-- Equation(s):
-- \c22~combout\ = \yIn[6]~input_o\ $ (\yIn[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[6]~input_o\,
	datad => \yIn[4]~input_o\,
	combout => \c22~combout\);

\s_valid~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~2_combout\ = (\c21~combout\ & ((\c23~combout\ & (!\c20~combout\ & !\c22~combout\)) # (!\c23~combout\ & (\c20~combout\ $ (\c22~combout\))))) # (!\c21~combout\ & ((\c23~combout\ & (\c20~combout\ $ (\c22~combout\))) # (!\c23~combout\ & 
-- (\c20~combout\ & \c22~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c21~combout\,
	datab => \c23~combout\,
	datac => \c20~combout\,
	datad => \c22~combout\,
	combout => \s_valid~2_combout\);

\s_valid~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~3_combout\ = (\s_valid~0_combout\) # ((\s_valid~1_combout\) # (\s_valid~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_valid~0_combout\,
	datab => \s_valid~1_combout\,
	datac => \s_valid~2_combout\,
	combout => \s_valid~3_combout\);

\m0_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_one~0_combout\ = (\c11~combout\ & ((\c13~combout\ & ((\c10~combout\) # (\c12~combout\))) # (!\c13~combout\ & (\c10~combout\ & \c12~combout\)))) # (!\c11~combout\ & (\c13~combout\ & (\c10~combout\ & \c12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c11~combout\,
	datab => \c13~combout\,
	datac => \c10~combout\,
	datad => \c12~combout\,
	combout => \m0_one~0_combout\);

\m_slash[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_slash[0]~0_combout\ = (\m0_one~0_combout\ & (!\s_valid~0_combout\ & (!\s_valid~1_combout\ & !\s_valid~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0_one~0_combout\,
	datab => \s_valid~0_combout\,
	datac => \s_valid~1_combout\,
	datad => \s_valid~2_combout\,
	combout => \m_slash[0]~0_combout\);

\m2_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_one~0_combout\ = (\c31~combout\ & ((\c33~combout\ & ((\c30~combout\) # (\c32~combout\))) # (!\c33~combout\ & (\c30~combout\ & \c32~combout\)))) # (!\c31~combout\ & (\c33~combout\ & (\c30~combout\ & \c32~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c31~combout\,
	datab => \c33~combout\,
	datac => \c30~combout\,
	datad => \c32~combout\,
	combout => \m2_one~0_combout\);

\m_slash[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- m_slash(2) = (\m2_one~0_combout\ & (!\s_valid~0_combout\ & (!\s_valid~1_combout\ & !\s_valid~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2_one~0_combout\,
	datab => \s_valid~0_combout\,
	datac => \s_valid~1_combout\,
	datad => \s_valid~2_combout\,
	combout => m_slash(2));

\popCounter8|hA02|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|hA02|and20|y~combout\ = (\yIn[4]~input_o\ & ((m_slash(2) $ (\m_slash[0]~0_combout\)) # (!\yIn[5]~input_o\))) # (!\yIn[4]~input_o\ & ((\yIn[5]~input_o\) # (m_slash(2) $ (!\m_slash[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_slash(2),
	datab => \m_slash[0]~0_combout\,
	datac => \yIn[4]~input_o\,
	datad => \yIn[5]~input_o\,
	combout => \popCounter8|hA02|and20|y~combout\);

\popCounter8|fA11|fA0|xor20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA11|fA0|xor20|y~combout\ = \popCounter8|hA02|and20|y~combout\ $ (((\yIn[6]~input_o\ & ((\m_slash[0]~0_combout\) # (!\yIn[7]~input_o\))) # (!\yIn[6]~input_o\ & ((\yIn[7]~input_o\) # (!\m_slash[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[6]~input_o\,
	datab => \yIn[7]~input_o\,
	datac => \m_slash[0]~0_combout\,
	datad => \popCounter8|hA02|and20|y~combout\,
	combout => \popCounter8|fA11|fA0|xor20|y~combout\);

\s_valid~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~4_combout\ = (\yIn[6]~input_o\ & (!\yIn[7]~input_o\ & (\yIn[4]~input_o\ $ (\yIn[5]~input_o\)))) # (!\yIn[6]~input_o\ & (\yIn[7]~input_o\ & (\yIn[4]~input_o\ $ (\yIn[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[6]~input_o\,
	datab => \yIn[7]~input_o\,
	datac => \yIn[4]~input_o\,
	datad => \yIn[5]~input_o\,
	combout => \s_valid~4_combout\);

\popCounter8|fA20|hA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA20|hA0|and20|y~combout\ = (\c13~combout\ & (!\c12~combout\ & (\c10~combout\ $ (\c11~combout\)))) # (!\c13~combout\ & (\c12~combout\ & (\c10~combout\ $ (\c11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c13~combout\,
	datab => \c12~combout\,
	datac => \c10~combout\,
	datad => \c11~combout\,
	combout => \popCounter8|fA20|hA0|and20|y~combout\);

\m1_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_one~0_combout\ = (\c21~combout\ & ((\c23~combout\ & ((\c20~combout\) # (\c22~combout\))) # (!\c23~combout\ & (\c20~combout\ & \c22~combout\)))) # (!\c21~combout\ & (\c23~combout\ & (\c20~combout\ & \c22~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c21~combout\,
	datab => \c23~combout\,
	datac => \c20~combout\,
	datad => \c22~combout\,
	combout => \m1_one~0_combout\);

\m_slash[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_slash[1]~1_combout\ = (\m1_one~0_combout\ & (!\s_valid~0_combout\ & (!\s_valid~1_combout\ & !\s_valid~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_one~0_combout\,
	datab => \s_valid~0_combout\,
	datac => \s_valid~1_combout\,
	datad => \s_valid~2_combout\,
	combout => \m_slash[1]~1_combout\);

\popCounter8|fA10|fA0|xor21|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA10|fA0|xor21|y~0_combout\ = \m_slash[0]~0_combout\ $ (\m_slash[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_slash[0]~0_combout\,
	datab => \m_slash[1]~1_combout\,
	combout => \popCounter8|fA10|fA0|xor21|y~0_combout\);

\popCounter8|fA10|fA0|xor21|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA10|fA0|xor21|y~1_combout\ = \yIn[3]~input_o\ $ (\yIn[0]~input_o\ $ (\yIn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[3]~input_o\,
	datab => \yIn[0]~input_o\,
	datac => \yIn[1]~input_o\,
	combout => \popCounter8|fA10|fA0|xor21|y~1_combout\);

\popCounter8|fA10|fA0|xor21|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA10|fA0|xor21|y~2_combout\ = (\yIn[0]~input_o\ & ((\yIn[1]~input_o\ & ((!m_slash(2)))) # (!\yIn[1]~input_o\ & (\yIn[3]~input_o\)))) # (!\yIn[0]~input_o\ & ((\yIn[1]~input_o\ & (\yIn[3]~input_o\)) # (!\yIn[1]~input_o\ & ((m_slash(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[3]~input_o\,
	datab => \yIn[0]~input_o\,
	datac => \yIn[1]~input_o\,
	datad => m_slash(2),
	combout => \popCounter8|fA10|fA0|xor21|y~2_combout\);

\popCounter8|fA10|fA0|xor21|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA10|fA0|xor21|y~3_combout\ = \popCounter8|fA10|fA0|xor21|y~2_combout\ $ (((\yIn[2]~input_o\ & (!\popCounter8|fA10|fA0|xor21|y~0_combout\ & !\popCounter8|fA10|fA0|xor21|y~1_combout\)) # (!\yIn[2]~input_o\ & 
-- ((!\popCounter8|fA10|fA0|xor21|y~1_combout\) # (!\popCounter8|fA10|fA0|xor21|y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[2]~input_o\,
	datab => \popCounter8|fA10|fA0|xor21|y~0_combout\,
	datac => \popCounter8|fA10|fA0|xor21|y~1_combout\,
	datad => \popCounter8|fA10|fA0|xor21|y~2_combout\,
	combout => \popCounter8|fA10|fA0|xor21|y~3_combout\);

\popCounter8|fA20|fA10|or20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA20|fA10|or20|y~0_combout\ = (\popCounter8|fA20|hA0|and20|y~combout\ & ((\popCounter8|fA11|fA0|xor20|y~combout\ $ (\s_valid~4_combout\)) # (!\popCounter8|fA10|fA0|xor21|y~3_combout\))) # (!\popCounter8|fA20|hA0|and20|y~combout\ & 
-- (!\popCounter8|fA10|fA0|xor21|y~3_combout\ & (\popCounter8|fA11|fA0|xor20|y~combout\ $ (\s_valid~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter8|fA11|fA0|xor20|y~combout\,
	datab => \s_valid~4_combout\,
	datac => \popCounter8|fA20|hA0|and20|y~combout\,
	datad => \popCounter8|fA10|fA0|xor21|y~3_combout\,
	combout => \popCounter8|fA20|fA10|or20|y~0_combout\);

\popCounter8|hA01|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|hA01|and20|y~combout\ = (\yIn[2]~input_o\ & (\yIn[3]~input_o\ & (\m_slash[0]~0_combout\ $ (!\m_slash[1]~1_combout\)))) # (!\yIn[2]~input_o\ & (!\yIn[3]~input_o\ & (\m_slash[0]~0_combout\ $ (\m_slash[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[2]~input_o\,
	datab => \yIn[3]~input_o\,
	datac => \m_slash[0]~0_combout\,
	datad => \m_slash[1]~1_combout\,
	combout => \popCounter8|hA01|and20|y~combout\);

\partial_decoder|xOut[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \partial_decoder|xOut\(1) = m_slash(2) $ (\m_slash[0]~0_combout\ $ (\m_slash[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_slash(2),
	datab => \m_slash[0]~0_combout\,
	datac => \m_slash[1]~1_combout\,
	combout => \partial_decoder|xOut\(1));

\popCounter8|fA10|fA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA10|fA0|and20|y~combout\ = (\popCounter8|hA01|and20|y~combout\ & ((\yIn[0]~input_o\ & (\yIn[1]~input_o\ & !\partial_decoder|xOut\(1))) # (!\yIn[0]~input_o\ & (!\yIn[1]~input_o\ & \partial_decoder|xOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter8|hA01|and20|y~combout\,
	datab => \yIn[0]~input_o\,
	datac => \yIn[1]~input_o\,
	datad => \partial_decoder|xOut\(1),
	combout => \popCounter8|fA10|fA0|and20|y~combout\);

\popCounter8|fA11|fA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA11|fA0|and20|y~combout\ = (\popCounter8|hA02|and20|y~combout\) # ((\m_slash[0]~0_combout\ & ((\yIn[6]~input_o\) # (\yIn[7]~input_o\))) # (!\m_slash[0]~0_combout\ & ((!\yIn[7]~input_o\) # (!\yIn[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter8|hA02|and20|y~combout\,
	datab => \m_slash[0]~0_combout\,
	datac => \yIn[6]~input_o\,
	datad => \yIn[7]~input_o\,
	combout => \popCounter8|fA11|fA0|and20|y~combout\);

\msOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \msOut~0_combout\ = (\s_valid~3_combout\) # (\popCounter8|fA20|fA10|or20|y~0_combout\ $ (((!\popCounter8|fA10|fA0|and20|y~combout\ & \popCounter8|fA11|fA0|and20|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_valid~3_combout\,
	datab => \popCounter8|fA20|fA10|or20|y~0_combout\,
	datac => \popCounter8|fA10|fA0|and20|y~combout\,
	datad => \popCounter8|fA11|fA0|and20|y~combout\,
	combout => \msOut~0_combout\);

ww_msOut(0) <= \msOut[0]~output_o\;

ww_msOut(1) <= \msOut[1]~output_o\;

ww_msOut(2) <= \msOut[2]~output_o\;

ww_msOut(3) <= \msOut[3]~output_o\;

ww_valid <= \valid~output_o\;
END structure;


