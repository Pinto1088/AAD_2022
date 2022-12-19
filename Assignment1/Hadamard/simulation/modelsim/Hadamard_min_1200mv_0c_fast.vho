-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/08/2022 12:06:29"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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

-- Design Ports Information
-- msOut[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msOut[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msOut[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msOut[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yIn[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yIn[7]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yIn[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yIn[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yIn[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yIn[5]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yIn[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yIn[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \yIn[5]~input_o\ : std_logic;
SIGNAL \yIn[7]~input_o\ : std_logic;
SIGNAL \c23~combout\ : std_logic;
SIGNAL \yIn[1]~input_o\ : std_logic;
SIGNAL \yIn[3]~input_o\ : std_logic;
SIGNAL \c21~combout\ : std_logic;
SIGNAL \yIn[6]~input_o\ : std_logic;
SIGNAL \yIn[4]~input_o\ : std_logic;
SIGNAL \c22~combout\ : std_logic;
SIGNAL \yIn[0]~input_o\ : std_logic;
SIGNAL \yIn[2]~input_o\ : std_logic;
SIGNAL \c20~combout\ : std_logic;
SIGNAL \s_valid~2_combout\ : std_logic;
SIGNAL \c33~combout\ : std_logic;
SIGNAL \c32~combout\ : std_logic;
SIGNAL \c30~combout\ : std_logic;
SIGNAL \c31~combout\ : std_logic;
SIGNAL \s_valid~1_combout\ : std_logic;
SIGNAL \c12~0_combout\ : std_logic;
SIGNAL \c13~0_combout\ : std_logic;
SIGNAL \c10~0_combout\ : std_logic;
SIGNAL \c11~0_combout\ : std_logic;
SIGNAL \m0_one~0_combout\ : std_logic;
SIGNAL \s_valid~0_combout\ : std_logic;
SIGNAL \m1_one~0_combout\ : std_logic;
SIGNAL \m2_one~0_combout\ : std_logic;
SIGNAL \popCounter8|hA02|and20|y~combout\ : std_logic;
SIGNAL \popIn[7]~0_combout\ : std_logic;
SIGNAL \popCounter8|fA11|fA0|and20|y~combout\ : std_logic;
SIGNAL \popCounter8|fA10|fA0|xor21|y~0_combout\ : std_logic;
SIGNAL \popCounter8|hA01|and20|y~combout\ : std_logic;
SIGNAL \popCounter8|fA10|fA0|xor21|y~combout\ : std_logic;
SIGNAL \popCounter8|fA11|fA0|xor20|y~combout\ : std_logic;
SIGNAL \popCounter8|fA20|hA0|and20|y~combout\ : std_logic;
SIGNAL \popCounter8|fA11|hA0|and20|y~combout\ : std_logic;
SIGNAL \popCounter8|fA20|fA10|or20|y~0_combout\ : std_logic;
SIGNAL \s_valid~3_combout\ : std_logic;
SIGNAL \popCounter8|fA10|fA0|and20|y~combout\ : std_logic;
SIGNAL \msOut~0_combout\ : std_logic;
SIGNAL \partial_decoder|xOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL m_slash : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_s_valid~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_yIn <= yIn;
msOut <= ww_msOut;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s_valid~3_combout\ <= NOT \s_valid~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X22_Y0_N2
\msOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => m_slash(0),
	devoe => ww_devoe,
	o => \msOut[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\msOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => m_slash(1),
	devoe => ww_devoe,
	o => \msOut[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\msOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => m_slash(2),
	devoe => ww_devoe,
	o => \msOut[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\msOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msOut~0_combout\,
	devoe => ww_devoe,
	o => \msOut[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOIBUF_X26_Y0_N8
\yIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(5),
	o => \yIn[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\yIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(7),
	o => \yIn[7]~input_o\);

-- Location: LCCOMB_X25_Y4_N30
c23 : cycloneiv_lcell_comb
-- Equation(s):
-- \c23~combout\ = \yIn[5]~input_o\ $ (\yIn[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[5]~input_o\,
	datac => \yIn[7]~input_o\,
	combout => \c23~combout\);

-- Location: IOIBUF_X29_Y0_N8
\yIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(1),
	o => \yIn[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\yIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(3),
	o => \yIn[3]~input_o\);

-- Location: LCCOMB_X25_Y4_N20
c21 : cycloneiv_lcell_comb
-- Equation(s):
-- \c21~combout\ = \yIn[1]~input_o\ $ (\yIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yIn[1]~input_o\,
	datac => \yIn[3]~input_o\,
	combout => \c21~combout\);

-- Location: IOIBUF_X20_Y0_N1
\yIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(6),
	o => \yIn[6]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\yIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(4),
	o => \yIn[4]~input_o\);

-- Location: LCCOMB_X25_Y4_N26
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

-- Location: IOIBUF_X26_Y0_N1
\yIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(0),
	o => \yIn[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\yIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yIn(2),
	o => \yIn[2]~input_o\);

-- Location: LCCOMB_X25_Y4_N24
c20 : cycloneiv_lcell_comb
-- Equation(s):
-- \c20~combout\ = \yIn[0]~input_o\ $ (\yIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[0]~input_o\,
	datad => \yIn[2]~input_o\,
	combout => \c20~combout\);

-- Location: LCCOMB_X25_Y4_N4
\s_valid~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~2_combout\ = (\c23~combout\ & ((\c21~combout\ & (!\c22~combout\ & !\c20~combout\)) # (!\c21~combout\ & (\c22~combout\ $ (\c20~combout\))))) # (!\c23~combout\ & ((\c21~combout\ & (\c22~combout\ $ (\c20~combout\))) # (!\c21~combout\ & 
-- (\c22~combout\ & \c20~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c23~combout\,
	datab => \c21~combout\,
	datac => \c22~combout\,
	datad => \c20~combout\,
	combout => \s_valid~2_combout\);

-- Location: LCCOMB_X25_Y4_N12
c33 : cycloneiv_lcell_comb
-- Equation(s):
-- \c33~combout\ = \yIn[7]~input_o\ $ (\yIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[7]~input_o\,
	datac => \yIn[3]~input_o\,
	combout => \c33~combout\);

-- Location: LCCOMB_X25_Y4_N8
c32 : cycloneiv_lcell_comb
-- Equation(s):
-- \c32~combout\ = \yIn[6]~input_o\ $ (\yIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yIn[6]~input_o\,
	datad => \yIn[2]~input_o\,
	combout => \c32~combout\);

-- Location: LCCOMB_X25_Y4_N22
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

-- Location: LCCOMB_X25_Y4_N2
c31 : cycloneiv_lcell_comb
-- Equation(s):
-- \c31~combout\ = \yIn[5]~input_o\ $ (\yIn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[5]~input_o\,
	datac => \yIn[1]~input_o\,
	combout => \c31~combout\);

-- Location: LCCOMB_X25_Y4_N18
\s_valid~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~1_combout\ = (\c33~combout\ & ((\c32~combout\ & (!\c30~combout\ & !\c31~combout\)) # (!\c32~combout\ & (\c30~combout\ $ (\c31~combout\))))) # (!\c33~combout\ & ((\c32~combout\ & (\c30~combout\ $ (\c31~combout\))) # (!\c32~combout\ & 
-- (\c30~combout\ & \c31~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c33~combout\,
	datab => \c32~combout\,
	datac => \c30~combout\,
	datad => \c31~combout\,
	combout => \s_valid~1_combout\);

-- Location: LCCOMB_X27_Y4_N12
\c12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c12~0_combout\ = \yIn[5]~input_o\ $ (\yIn[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[5]~input_o\,
	datad => \yIn[4]~input_o\,
	combout => \c12~0_combout\);

-- Location: LCCOMB_X27_Y4_N24
\c13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c13~0_combout\ = \yIn[6]~input_o\ $ (\yIn[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yIn[6]~input_o\,
	datac => \yIn[7]~input_o\,
	combout => \c13~0_combout\);

-- Location: LCCOMB_X25_Y4_N0
\c10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c10~0_combout\ = \yIn[1]~input_o\ $ (\yIn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yIn[1]~input_o\,
	datac => \yIn[0]~input_o\,
	combout => \c10~0_combout\);

-- Location: LCCOMB_X27_Y4_N10
\c11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11~0_combout\ = \yIn[3]~input_o\ $ (\yIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[3]~input_o\,
	datac => \yIn[2]~input_o\,
	combout => \c11~0_combout\);

-- Location: LCCOMB_X27_Y4_N6
\m0_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0_one~0_combout\ = (\c12~0_combout\ & ((\c13~0_combout\ & ((\c10~0_combout\) # (\c11~0_combout\))) # (!\c13~0_combout\ & (\c10~0_combout\ & \c11~0_combout\)))) # (!\c12~0_combout\ & (\c13~0_combout\ & (\c10~0_combout\ & \c11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c12~0_combout\,
	datab => \c13~0_combout\,
	datac => \c10~0_combout\,
	datad => \c11~0_combout\,
	combout => \m0_one~0_combout\);

-- Location: LCCOMB_X27_Y4_N8
\s_valid~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~0_combout\ = (\c12~0_combout\ & ((\c13~0_combout\ & (!\c10~0_combout\ & !\c11~0_combout\)) # (!\c13~0_combout\ & (\c10~0_combout\ $ (\c11~0_combout\))))) # (!\c12~0_combout\ & ((\c13~0_combout\ & (\c10~0_combout\ $ (\c11~0_combout\))) # 
-- (!\c13~0_combout\ & (\c10~0_combout\ & \c11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c12~0_combout\,
	datab => \c13~0_combout\,
	datac => \c10~0_combout\,
	datad => \c11~0_combout\,
	combout => \s_valid~0_combout\);

-- Location: LCCOMB_X24_Y4_N16
\m_slash[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- m_slash(0) = (!\s_valid~2_combout\ & (!\s_valid~1_combout\ & (\m0_one~0_combout\ & !\s_valid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_valid~2_combout\,
	datab => \s_valid~1_combout\,
	datac => \m0_one~0_combout\,
	datad => \s_valid~0_combout\,
	combout => m_slash(0));

-- Location: LCCOMB_X25_Y4_N14
\m1_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1_one~0_combout\ = (\c23~combout\ & ((\c21~combout\ & ((\c22~combout\) # (\c20~combout\))) # (!\c21~combout\ & (\c22~combout\ & \c20~combout\)))) # (!\c23~combout\ & (\c21~combout\ & (\c22~combout\ & \c20~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c23~combout\,
	datab => \c21~combout\,
	datac => \c22~combout\,
	datad => \c20~combout\,
	combout => \m1_one~0_combout\);

-- Location: LCCOMB_X25_Y4_N16
\m_slash[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- m_slash(1) = (!\s_valid~0_combout\ & (!\s_valid~2_combout\ & (\m1_one~0_combout\ & !\s_valid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_valid~0_combout\,
	datab => \s_valid~2_combout\,
	datac => \m1_one~0_combout\,
	datad => \s_valid~1_combout\,
	combout => m_slash(1));

-- Location: LCCOMB_X25_Y4_N10
\m2_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2_one~0_combout\ = (\c33~combout\ & ((\c32~combout\ & ((\c30~combout\) # (\c31~combout\))) # (!\c32~combout\ & (\c30~combout\ & \c31~combout\)))) # (!\c33~combout\ & (\c32~combout\ & (\c30~combout\ & \c31~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c33~combout\,
	datab => \c32~combout\,
	datac => \c30~combout\,
	datad => \c31~combout\,
	combout => \m2_one~0_combout\);

-- Location: LCCOMB_X25_Y4_N28
\m_slash[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- m_slash(2) = (\m2_one~0_combout\ & (!\s_valid~1_combout\ & (!\s_valid~2_combout\ & !\s_valid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2_one~0_combout\,
	datab => \s_valid~1_combout\,
	datac => \s_valid~2_combout\,
	datad => \s_valid~0_combout\,
	combout => m_slash(2));

-- Location: LCCOMB_X25_Y4_N6
\partial_decoder|xOut[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \partial_decoder|xOut\(6) = m_slash(2) $ (m_slash(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m_slash(2),
	datad => m_slash(1),
	combout => \partial_decoder|xOut\(6));

-- Location: LCCOMB_X27_Y4_N30
\popCounter8|hA02|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|hA02|and20|y~combout\ = (\yIn[4]~input_o\ & (!m_slash(2) & (\yIn[5]~input_o\ $ (m_slash(0))))) # (!\yIn[4]~input_o\ & (m_slash(2) & (\yIn[5]~input_o\ $ (!m_slash(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[5]~input_o\,
	datab => \yIn[4]~input_o\,
	datac => m_slash(2),
	datad => m_slash(0),
	combout => \popCounter8|hA02|and20|y~combout\);

-- Location: LCCOMB_X27_Y4_N16
\popIn[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popIn[7]~0_combout\ = m_slash(0) $ (m_slash(2) $ (\yIn[7]~input_o\ $ (m_slash(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_slash(0),
	datab => m_slash(2),
	datac => \yIn[7]~input_o\,
	datad => m_slash(1),
	combout => \popIn[7]~0_combout\);

-- Location: LCCOMB_X27_Y4_N2
\popCounter8|fA11|fA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA11|fA0|and20|y~combout\ = (\popCounter8|hA02|and20|y~combout\ & (\popIn[7]~0_combout\ & (\partial_decoder|xOut\(6) $ (\yIn[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \partial_decoder|xOut\(6),
	datab => \yIn[6]~input_o\,
	datac => \popCounter8|hA02|and20|y~combout\,
	datad => \popIn[7]~0_combout\,
	combout => \popCounter8|fA11|fA0|and20|y~combout\);

-- Location: LCCOMB_X27_Y4_N0
\popCounter8|fA10|fA0|xor21|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA10|fA0|xor21|y~0_combout\ = (\yIn[1]~input_o\ & ((\c11~0_combout\ & (!m_slash(0))) # (!\c11~0_combout\ & ((\yIn[0]~input_o\))))) # (!\yIn[1]~input_o\ & ((\c11~0_combout\ & ((\yIn[0]~input_o\))) # (!\c11~0_combout\ & (m_slash(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_slash(0),
	datab => \yIn[1]~input_o\,
	datac => \yIn[0]~input_o\,
	datad => \c11~0_combout\,
	combout => \popCounter8|fA10|fA0|xor21|y~0_combout\);

-- Location: LCCOMB_X27_Y4_N18
\popCounter8|hA01|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|hA01|and20|y~combout\ = (m_slash(1) & (!\yIn[2]~input_o\ & (m_slash(0) $ (!\yIn[3]~input_o\)))) # (!m_slash(1) & (\yIn[2]~input_o\ & (m_slash(0) $ (\yIn[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_slash(0),
	datab => m_slash(1),
	datac => \yIn[2]~input_o\,
	datad => \yIn[3]~input_o\,
	combout => \popCounter8|hA01|and20|y~combout\);

-- Location: LCCOMB_X27_Y4_N26
\popCounter8|fA10|fA0|xor21|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA10|fA0|xor21|y~combout\ = \popCounter8|fA10|fA0|xor21|y~0_combout\ $ (\popCounter8|hA01|and20|y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \popCounter8|fA10|fA0|xor21|y~0_combout\,
	datad => \popCounter8|hA01|and20|y~combout\,
	combout => \popCounter8|fA10|fA0|xor21|y~combout\);

-- Location: LCCOMB_X27_Y4_N20
\popCounter8|fA11|fA0|xor20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA11|fA0|xor20|y~combout\ = \popCounter8|hA02|and20|y~combout\ $ (((\popIn[7]~0_combout\ & (\partial_decoder|xOut\(6) $ (\yIn[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \partial_decoder|xOut\(6),
	datab => \yIn[6]~input_o\,
	datac => \popCounter8|hA02|and20|y~combout\,
	datad => \popIn[7]~0_combout\,
	combout => \popCounter8|fA11|fA0|xor20|y~combout\);

-- Location: LCCOMB_X27_Y4_N14
\popCounter8|fA20|hA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA20|hA0|and20|y~combout\ = (\c12~0_combout\ & (!\c13~0_combout\ & (\c10~0_combout\ $ (\c11~0_combout\)))) # (!\c12~0_combout\ & (\c13~0_combout\ & (\c10~0_combout\ $ (\c11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c12~0_combout\,
	datab => \c13~0_combout\,
	datac => \c10~0_combout\,
	datad => \c11~0_combout\,
	combout => \popCounter8|fA20|hA0|and20|y~combout\);

-- Location: LCCOMB_X27_Y4_N22
\popCounter8|fA11|hA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA11|hA0|and20|y~combout\ = (m_slash(0) & (!\c12~0_combout\ & (\yIn[6]~input_o\ $ (!\yIn[7]~input_o\)))) # (!m_slash(0) & (\c12~0_combout\ & (\yIn[6]~input_o\ $ (\yIn[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_slash(0),
	datab => \yIn[6]~input_o\,
	datac => \yIn[7]~input_o\,
	datad => \c12~0_combout\,
	combout => \popCounter8|fA11|hA0|and20|y~combout\);

-- Location: LCCOMB_X27_Y4_N28
\popCounter8|fA20|fA10|or20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA20|fA10|or20|y~0_combout\ = (\popCounter8|fA10|fA0|xor21|y~combout\ & ((\popCounter8|fA20|hA0|and20|y~combout\) # (\popCounter8|fA11|fA0|xor20|y~combout\ $ (\popCounter8|fA11|hA0|and20|y~combout\)))) # 
-- (!\popCounter8|fA10|fA0|xor21|y~combout\ & (\popCounter8|fA20|hA0|and20|y~combout\ & (\popCounter8|fA11|fA0|xor20|y~combout\ $ (\popCounter8|fA11|hA0|and20|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter8|fA10|fA0|xor21|y~combout\,
	datab => \popCounter8|fA11|fA0|xor20|y~combout\,
	datac => \popCounter8|fA20|hA0|and20|y~combout\,
	datad => \popCounter8|fA11|hA0|and20|y~combout\,
	combout => \popCounter8|fA20|fA10|or20|y~0_combout\);

-- Location: LCCOMB_X24_Y4_N26
\s_valid~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_valid~3_combout\ = (\s_valid~2_combout\) # ((\s_valid~1_combout\) # (\s_valid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_valid~2_combout\,
	datab => \s_valid~1_combout\,
	datad => \s_valid~0_combout\,
	combout => \s_valid~3_combout\);

-- Location: LCCOMB_X27_Y4_N4
\popCounter8|fA10|fA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \popCounter8|fA10|fA0|and20|y~combout\ = (\yIn[0]~input_o\ & (\popCounter8|hA01|and20|y~combout\ & (\yIn[1]~input_o\ $ (m_slash(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yIn[0]~input_o\,
	datab => \popCounter8|hA01|and20|y~combout\,
	datac => \yIn[1]~input_o\,
	datad => m_slash(0),
	combout => \popCounter8|fA10|fA0|and20|y~combout\);

-- Location: LCCOMB_X26_Y4_N24
\msOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \msOut~0_combout\ = (!\s_valid~3_combout\ & (\popCounter8|fA20|fA10|or20|y~0_combout\ $ (((\popCounter8|fA11|fA0|and20|y~combout\) # (\popCounter8|fA10|fA0|and20|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \popCounter8|fA11|fA0|and20|y~combout\,
	datab => \popCounter8|fA20|fA10|or20|y~0_combout\,
	datac => \s_valid~3_combout\,
	datad => \popCounter8|fA10|fA0|and20|y~combout\,
	combout => \msOut~0_combout\);

ww_msOut(0) <= \msOut[0]~output_o\;

ww_msOut(1) <= \msOut[1]~output_o\;

ww_msOut(2) <= \msOut[2]~output_o\;

ww_msOut(3) <= \msOut[3]~output_o\;

ww_valid <= \valid~output_o\;
END structure;


