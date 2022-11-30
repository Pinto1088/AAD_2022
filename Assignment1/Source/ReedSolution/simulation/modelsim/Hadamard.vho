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

-- DATE "11/20/2022 13:02:28"

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

ENTITY 	DecoderSimp IS
    PORT (
	y7 : IN std_logic;
	y6 : IN std_logic;
	y5 : IN std_logic;
	y4 : IN std_logic;
	y3 : IN std_logic;
	y2 : IN std_logic;
	y1 : IN std_logic;
	y0 : IN std_logic;
	\m'0\ : BUFFER std_logic;
	\m'1\ : BUFFER std_logic;
	\m'2\ : BUFFER std_logic;
	\m'3\ : BUFFER std_logic;
	Valid : BUFFER std_logic;
	\2E\ : BUFFER std_logic;
	\1E\ : BUFFER std_logic
	);
END DecoderSimp;

-- Design Ports Information
-- m'0	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m'1	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m'2	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m'3	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Valid	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2E	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1E	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y5	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y4	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y7	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y6	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y3	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DecoderSimp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y7 : std_logic;
SIGNAL ww_y6 : std_logic;
SIGNAL ww_y5 : std_logic;
SIGNAL ww_y4 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL \ww_m'0\ : std_logic;
SIGNAL \ww_m'1\ : std_logic;
SIGNAL \ww_m'2\ : std_logic;
SIGNAL \ww_m'3\ : std_logic;
SIGNAL ww_Valid : std_logic;
SIGNAL \ww_2E\ : std_logic;
SIGNAL \ww_1E\ : std_logic;
SIGNAL \m'0~output_o\ : std_logic;
SIGNAL \m'1~output_o\ : std_logic;
SIGNAL \m'2~output_o\ : std_logic;
SIGNAL \m'3~output_o\ : std_logic;
SIGNAL \Valid~output_o\ : std_logic;
SIGNAL \2E~output_o\ : std_logic;
SIGNAL \1E~output_o\ : std_logic;
SIGNAL \y3~input_o\ : std_logic;
SIGNAL \y4~input_o\ : std_logic;
SIGNAL \y0~input_o\ : std_logic;
SIGNAL \y1~input_o\ : std_logic;
SIGNAL \y5~input_o\ : std_logic;
SIGNAL \m'0_temp~0_combout\ : std_logic;
SIGNAL \y6~input_o\ : std_logic;
SIGNAL \y7~input_o\ : std_logic;
SIGNAL \m'0_temp~1_combout\ : std_logic;
SIGNAL \y2~input_o\ : std_logic;
SIGNAL \m'0_temp~2_combout\ : std_logic;
SIGNAL \m'1_temp~1_combout\ : std_logic;
SIGNAL \m'1_temp~0_combout\ : std_logic;
SIGNAL \m'1_temp~2_combout\ : std_logic;
SIGNAL \m'2_temp~1_combout\ : std_logic;
SIGNAL \m'2_temp~0_combout\ : std_logic;
SIGNAL \m'2_temp~2_combout\ : std_logic;
SIGNAL \DIG_Add_i2|Add1~1_combout\ : std_logic;
SIGNAL \s3~combout\ : std_logic;
SIGNAL \DIG_Add_i2|Add1~0_combout\ : std_logic;
SIGNAL \DIG_Add_i7|Add1~0_combout\ : std_logic;
SIGNAL \DIG_Add_i4|Add0~1_combout\ : std_logic;
SIGNAL \DIG_Add_i5|Add0~0_combout\ : std_logic;
SIGNAL \DIG_Add_i4|Add0~0_combout\ : std_logic;
SIGNAL \s9~2_combout\ : std_logic;
SIGNAL \s9~3_combout\ : std_logic;
SIGNAL \DIG_Add_i0|Add1~0_combout\ : std_logic;
SIGNAL \DIG_Add_i1|Add1~0_combout\ : std_logic;
SIGNAL \DIG_Add_i6|Add1~0_combout\ : std_logic;
SIGNAL \DIG_Add_i9|Add1~0_combout\ : std_logic;
SIGNAL \DIG_Add_i7|Add0~2_combout\ : std_logic;
SIGNAL \m'3~0_combout\ : std_logic;
SIGNAL \DIG_Add_i9|Add1~1_combout\ : std_logic;
SIGNAL \DIG_Add_i10|Add1~0_combout\ : std_logic;
SIGNAL \Valid_temp~2_combout\ : std_logic;
SIGNAL \DIG_Add_i8|Add0~0_combout\ : std_logic;
SIGNAL \DIG_Add_i10|Add1~1_combout\ : std_logic;
SIGNAL \2E~0_combout\ : std_logic;
SIGNAL \1E_temp~0_combout\ : std_logic;
SIGNAL \ALT_INV_Valid_temp~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_y7 <= y7;
ww_y6 <= y6;
ww_y5 <= y5;
ww_y4 <= y4;
ww_y3 <= y3;
ww_y2 <= y2;
ww_y1 <= y1;
ww_y0 <= y0;
\m'0\ <= \ww_m'0\;
\m'1\ <= \ww_m'1\;
\m'2\ <= \ww_m'2\;
\m'3\ <= \ww_m'3\;
Valid <= ww_Valid;
\2E\ <= \ww_2E\;
\1E\ <= \ww_1E\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Valid_temp~2_combout\ <= NOT \Valid_temp~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y10_N9
\m'0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m'0_temp~2_combout\,
	devoe => ww_devoe,
	o => \m'0~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\m'1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m'1_temp~2_combout\,
	devoe => ww_devoe,
	o => \m'1~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\m'2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m'2_temp~2_combout\,
	devoe => ww_devoe,
	o => \m'2~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\m'3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m'3~0_combout\,
	devoe => ww_devoe,
	o => \m'3~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Valid~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Valid_temp~2_combout\,
	devoe => ww_devoe,
	o => \Valid~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\2E~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \2E~0_combout\,
	devoe => ww_devoe,
	o => \2E~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\1E~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \1E_temp~0_combout\,
	devoe => ww_devoe,
	o => \1E~output_o\);

-- Location: IOIBUF_X33_Y11_N1
\y3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y3,
	o => \y3~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\y4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y4,
	o => \y4~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\y0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0,
	o => \y0~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\y1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y1,
	o => \y1~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\y5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y5,
	o => \y5~input_o\);

-- Location: LCCOMB_X27_Y11_N24
\m'0_temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'0_temp~0_combout\ = (\y4~input_o\ & (!\y5~input_o\ & (\y0~input_o\ $ (\y1~input_o\)))) # (!\y4~input_o\ & (\y5~input_o\ & (\y0~input_o\ $ (\y1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y4~input_o\,
	datab => \y0~input_o\,
	datac => \y1~input_o\,
	datad => \y5~input_o\,
	combout => \m'0_temp~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\y6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y6,
	o => \y6~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\y7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y7,
	o => \y7~input_o\);

-- Location: LCCOMB_X30_Y9_N16
\m'0_temp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'0_temp~1_combout\ = \y6~input_o\ $ (\y7~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y6~input_o\,
	datac => \y7~input_o\,
	combout => \m'0_temp~1_combout\);

-- Location: IOIBUF_X33_Y11_N8
\y2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y2,
	o => \y2~input_o\);

-- Location: LCCOMB_X27_Y11_N2
\m'0_temp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'0_temp~2_combout\ = (\m'0_temp~0_combout\) # ((\m'0_temp~1_combout\ & (\y3~input_o\ $ (\y2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datab => \m'0_temp~0_combout\,
	datac => \m'0_temp~1_combout\,
	datad => \y2~input_o\,
	combout => \m'0_temp~2_combout\);

-- Location: LCCOMB_X27_Y11_N30
\m'1_temp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'1_temp~1_combout\ = \y7~input_o\ $ (\y5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y7~input_o\,
	datad => \y5~input_o\,
	combout => \m'1_temp~1_combout\);

-- Location: LCCOMB_X27_Y11_N20
\m'1_temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'1_temp~0_combout\ = (\y6~input_o\ & (!\y4~input_o\ & (\y0~input_o\ $ (\y2~input_o\)))) # (!\y6~input_o\ & (\y4~input_o\ & (\y0~input_o\ $ (\y2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y6~input_o\,
	datab => \y0~input_o\,
	datac => \y4~input_o\,
	datad => \y2~input_o\,
	combout => \m'1_temp~0_combout\);

-- Location: LCCOMB_X27_Y11_N0
\m'1_temp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'1_temp~2_combout\ = (\m'1_temp~0_combout\) # ((\m'1_temp~1_combout\ & (\y1~input_o\ $ (\y3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m'1_temp~1_combout\,
	datab => \m'1_temp~0_combout\,
	datac => \y1~input_o\,
	datad => \y3~input_o\,
	combout => \m'1_temp~2_combout\);

-- Location: LCCOMB_X29_Y11_N24
\m'2_temp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'2_temp~1_combout\ = \y3~input_o\ $ (\y7~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datad => \y7~input_o\,
	combout => \m'2_temp~1_combout\);

-- Location: LCCOMB_X27_Y11_N18
\m'2_temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'2_temp~0_combout\ = (\y6~input_o\ & (!\y2~input_o\ & (\y0~input_o\ $ (\y4~input_o\)))) # (!\y6~input_o\ & (\y2~input_o\ & (\y0~input_o\ $ (\y4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y6~input_o\,
	datab => \y0~input_o\,
	datac => \y4~input_o\,
	datad => \y2~input_o\,
	combout => \m'2_temp~0_combout\);

-- Location: LCCOMB_X27_Y11_N4
\m'2_temp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'2_temp~2_combout\ = (\m'2_temp~0_combout\) # ((\m'2_temp~1_combout\ & (\y1~input_o\ $ (\y5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m'2_temp~1_combout\,
	datab => \m'2_temp~0_combout\,
	datac => \y1~input_o\,
	datad => \y5~input_o\,
	combout => \m'2_temp~2_combout\);

-- Location: LCCOMB_X27_Y11_N10
\DIG_Add_i2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i2|Add1~1_combout\ = (\m'0_temp~0_combout\ & (\y3~input_o\ $ (((!\y2~input_o\))))) # (!\m'0_temp~0_combout\ & (!\m'0_temp~1_combout\ & (\y3~input_o\ $ (\y2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datab => \m'0_temp~0_combout\,
	datac => \m'0_temp~1_combout\,
	datad => \y2~input_o\,
	combout => \DIG_Add_i2|Add1~1_combout\);

-- Location: LCCOMB_X27_Y11_N14
s3 : cycloneiv_lcell_comb
-- Equation(s):
-- \s3~combout\ = \y1~input_o\ $ (\m'0_temp~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y1~input_o\,
	datad => \m'0_temp~2_combout\,
	combout => \s3~combout\);

-- Location: LCCOMB_X27_Y11_N16
\DIG_Add_i2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i2|Add1~0_combout\ = (\m'1_temp~2_combout\ & ((\y2~input_o\) # (\y3~input_o\ $ (\m'0_temp~2_combout\)))) # (!\m'1_temp~2_combout\ & ((\y3~input_o\ $ (!\m'0_temp~2_combout\)) # (!\y2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datab => \m'0_temp~2_combout\,
	datac => \m'1_temp~2_combout\,
	datad => \y2~input_o\,
	combout => \DIG_Add_i2|Add1~0_combout\);

-- Location: LCCOMB_X27_Y11_N12
\DIG_Add_i7|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i7|Add1~0_combout\ = \DIG_Add_i2|Add1~0_combout\ $ (((\DIG_Add_i2|Add1~1_combout\ & ((\y0~input_o\) # (\s3~combout\))) # (!\DIG_Add_i2|Add1~1_combout\ & (\y0~input_o\ & \s3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i2|Add1~1_combout\,
	datab => \y0~input_o\,
	datac => \s3~combout\,
	datad => \DIG_Add_i2|Add1~0_combout\,
	combout => \DIG_Add_i7|Add1~0_combout\);

-- Location: LCCOMB_X27_Y11_N8
\DIG_Add_i4|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i4|Add0~1_combout\ = \y6~input_o\ $ (\y7~input_o\ $ (\y4~input_o\ $ (\y5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y6~input_o\,
	datab => \y7~input_o\,
	datac => \y4~input_o\,
	datad => \y5~input_o\,
	combout => \DIG_Add_i4|Add0~1_combout\);

-- Location: LCCOMB_X27_Y11_N6
\DIG_Add_i5|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i5|Add0~0_combout\ = \y3~input_o\ $ (\y0~input_o\ $ (\y1~input_o\ $ (\y2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datab => \y0~input_o\,
	datac => \y1~input_o\,
	datad => \y2~input_o\,
	combout => \DIG_Add_i5|Add0~0_combout\);

-- Location: LCCOMB_X30_Y3_N10
\DIG_Add_i4|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i4|Add0~0_combout\ = (\m'0_temp~2_combout\ & (!\m'0_temp~1_combout\ & (\y5~input_o\ $ (!\y4~input_o\)))) # (!\m'0_temp~2_combout\ & (\m'0_temp~1_combout\ & (\y5~input_o\ $ (\y4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y5~input_o\,
	datab => \m'0_temp~2_combout\,
	datac => \y4~input_o\,
	datad => \m'0_temp~1_combout\,
	combout => \DIG_Add_i4|Add0~0_combout\);

-- Location: LCCOMB_X27_Y11_N26
\s9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s9~2_combout\ = \y3~input_o\ $ (!\y2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datad => \y2~input_o\,
	combout => \s9~2_combout\);

-- Location: LCCOMB_X27_Y11_N22
\s9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s9~3_combout\ = (\m'0_temp~0_combout\ & (((!\y7~input_o\)))) # (!\m'0_temp~0_combout\ & ((\s9~2_combout\ & ((\y7~input_o\))) # (!\s9~2_combout\ & (\y6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y6~input_o\,
	datab => \m'0_temp~0_combout\,
	datac => \s9~2_combout\,
	datad => \y7~input_o\,
	combout => \s9~3_combout\);

-- Location: LCCOMB_X27_Y11_N28
\DIG_Add_i0|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i0|Add1~0_combout\ = (\y6~input_o\ & ((\m'2_temp~2_combout\ $ (\m'1_temp~2_combout\)) # (!\s9~3_combout\))) # (!\y6~input_o\ & ((\s9~3_combout\) # (\m'2_temp~2_combout\ $ (!\m'1_temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y6~input_o\,
	datab => \m'2_temp~2_combout\,
	datac => \s9~3_combout\,
	datad => \m'1_temp~2_combout\,
	combout => \DIG_Add_i0|Add1~0_combout\);

-- Location: LCCOMB_X30_Y3_N24
\DIG_Add_i1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i1|Add1~0_combout\ = (\m'2_temp~2_combout\ & ((\y4~input_o\) # (\y5~input_o\ $ (\m'0_temp~2_combout\)))) # (!\m'2_temp~2_combout\ & ((\y5~input_o\ $ (!\m'0_temp~2_combout\)) # (!\y4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m'2_temp~2_combout\,
	datab => \y4~input_o\,
	datac => \y5~input_o\,
	datad => \m'0_temp~2_combout\,
	combout => \DIG_Add_i1|Add1~0_combout\);

-- Location: LCCOMB_X30_Y3_N28
\DIG_Add_i6|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i6|Add1~0_combout\ = \DIG_Add_i4|Add0~0_combout\ $ (\DIG_Add_i0|Add1~0_combout\ $ (\DIG_Add_i1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i4|Add0~0_combout\,
	datab => \DIG_Add_i0|Add1~0_combout\,
	datad => \DIG_Add_i1|Add1~0_combout\,
	combout => \DIG_Add_i6|Add1~0_combout\);

-- Location: LCCOMB_X30_Y3_N6
\DIG_Add_i9|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i9|Add1~0_combout\ = (\DIG_Add_i7|Add1~0_combout\ & (\DIG_Add_i4|Add0~1_combout\ & (\DIG_Add_i5|Add0~0_combout\ & \DIG_Add_i6|Add1~0_combout\))) # (!\DIG_Add_i7|Add1~0_combout\ & ((\DIG_Add_i6|Add1~0_combout\) # ((\DIG_Add_i4|Add0~1_combout\ & 
-- \DIG_Add_i5|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i7|Add1~0_combout\,
	datab => \DIG_Add_i4|Add0~1_combout\,
	datac => \DIG_Add_i5|Add0~0_combout\,
	datad => \DIG_Add_i6|Add1~0_combout\,
	combout => \DIG_Add_i9|Add1~0_combout\);

-- Location: LCCOMB_X27_Y10_N16
\DIG_Add_i7|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i7|Add0~2_combout\ = (\y0~input_o\ & (!\DIG_Add_i2|Add1~0_combout\ & (\y1~input_o\ $ (\m'0_temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y0~input_o\,
	datab => \y1~input_o\,
	datac => \DIG_Add_i2|Add1~0_combout\,
	datad => \m'0_temp~2_combout\,
	combout => \DIG_Add_i7|Add0~2_combout\);

-- Location: LCCOMB_X30_Y3_N8
\m'3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m'3~0_combout\ = (\DIG_Add_i9|Add1~0_combout\) # ((\DIG_Add_i7|Add0~2_combout\) # ((!\DIG_Add_i1|Add1~0_combout\ & !\DIG_Add_i0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i9|Add1~0_combout\,
	datab => \DIG_Add_i1|Add1~0_combout\,
	datac => \DIG_Add_i7|Add0~2_combout\,
	datad => \DIG_Add_i0|Add1~0_combout\,
	combout => \m'3~0_combout\);

-- Location: LCCOMB_X30_Y3_N22
\DIG_Add_i9|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i9|Add1~1_combout\ = \DIG_Add_i7|Add1~0_combout\ $ (\DIG_Add_i6|Add1~0_combout\ $ (((\DIG_Add_i4|Add0~1_combout\ & \DIG_Add_i5|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i7|Add1~0_combout\,
	datab => \DIG_Add_i4|Add0~1_combout\,
	datac => \DIG_Add_i5|Add0~0_combout\,
	datad => \DIG_Add_i6|Add1~0_combout\,
	combout => \DIG_Add_i9|Add1~1_combout\);

-- Location: LCCOMB_X30_Y3_N12
\DIG_Add_i10|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i10|Add1~0_combout\ = \DIG_Add_i9|Add1~0_combout\ $ (\DIG_Add_i7|Add0~2_combout\ $ (((\DIG_Add_i1|Add1~0_combout\) # (\DIG_Add_i0|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i9|Add1~0_combout\,
	datab => \DIG_Add_i1|Add1~0_combout\,
	datac => \DIG_Add_i7|Add0~2_combout\,
	datad => \DIG_Add_i0|Add1~0_combout\,
	combout => \DIG_Add_i10|Add1~0_combout\);

-- Location: LCCOMB_X30_Y3_N14
\Valid_temp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Valid_temp~2_combout\ = ((\DIG_Add_i4|Add0~1_combout\ $ (\DIG_Add_i5|Add0~0_combout\)) # (!\DIG_Add_i10|Add1~0_combout\)) # (!\DIG_Add_i9|Add1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i9|Add1~1_combout\,
	datab => \DIG_Add_i4|Add0~1_combout\,
	datac => \DIG_Add_i5|Add0~0_combout\,
	datad => \DIG_Add_i10|Add1~0_combout\,
	combout => \Valid_temp~2_combout\);

-- Location: LCCOMB_X30_Y3_N26
\DIG_Add_i8|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i8|Add0~0_combout\ = \DIG_Add_i4|Add0~1_combout\ $ (\DIG_Add_i5|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIG_Add_i4|Add0~1_combout\,
	datac => \DIG_Add_i5|Add0~0_combout\,
	combout => \DIG_Add_i8|Add0~0_combout\);

-- Location: LCCOMB_X30_Y3_N0
\DIG_Add_i10|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DIG_Add_i10|Add1~1_combout\ = (\DIG_Add_i9|Add1~0_combout\ & ((\DIG_Add_i7|Add0~2_combout\) # ((!\DIG_Add_i1|Add1~0_combout\ & !\DIG_Add_i0|Add1~0_combout\)))) # (!\DIG_Add_i9|Add1~0_combout\ & (!\DIG_Add_i1|Add1~0_combout\ & (\DIG_Add_i7|Add0~2_combout\ 
-- & !\DIG_Add_i0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i9|Add1~0_combout\,
	datab => \DIG_Add_i1|Add1~0_combout\,
	datac => \DIG_Add_i7|Add0~2_combout\,
	datad => \DIG_Add_i0|Add1~0_combout\,
	combout => \DIG_Add_i10|Add1~1_combout\);

-- Location: LCCOMB_X30_Y3_N2
\2E~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \2E~0_combout\ = (\DIG_Add_i8|Add0~0_combout\ & ((\DIG_Add_i10|Add1~1_combout\) # ((\DIG_Add_i9|Add1~1_combout\ & !\DIG_Add_i10|Add1~0_combout\)))) # (!\DIG_Add_i8|Add0~0_combout\ & (((!\DIG_Add_i10|Add1~0_combout\) # (!\DIG_Add_i9|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i8|Add0~0_combout\,
	datab => \DIG_Add_i10|Add1~1_combout\,
	datac => \DIG_Add_i9|Add1~1_combout\,
	datad => \DIG_Add_i10|Add1~0_combout\,
	combout => \2E~0_combout\);

-- Location: LCCOMB_X30_Y3_N20
\1E_temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \1E_temp~0_combout\ = (\DIG_Add_i8|Add0~0_combout\ & (!\DIG_Add_i10|Add1~1_combout\ & ((\DIG_Add_i10|Add1~0_combout\) # (!\DIG_Add_i9|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIG_Add_i8|Add0~0_combout\,
	datab => \DIG_Add_i10|Add1~1_combout\,
	datac => \DIG_Add_i9|Add1~1_combout\,
	datad => \DIG_Add_i10|Add1~0_combout\,
	combout => \1E_temp~0_combout\);

\ww_m'0\ <= \m'0~output_o\;

\ww_m'1\ <= \m'1~output_o\;

\ww_m'2\ <= \m'2~output_o\;

\ww_m'3\ <= \m'3~output_o\;

ww_Valid <= \Valid~output_o\;

\ww_2E\ <= \2E~output_o\;

\ww_1E\ <= \1E~output_o\;
END structure;


