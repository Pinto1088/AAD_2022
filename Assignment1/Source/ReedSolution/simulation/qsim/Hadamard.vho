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

-- DATE "11/21/2022 12:10:49"

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

ENTITY 	main IS
    PORT (
	y7 : IN std_logic;
	y6 : IN std_logic;
	y5 : IN std_logic;
	y4 : IN std_logic;
	y3 : IN std_logic;
	y2 : IN std_logic;
	y1 : IN std_logic;
	y0 : IN std_logic;
	m0 : OUT std_logic;
	m1 : OUT std_logic;
	m2 : OUT std_logic;
	m3 : OUT std_logic;
	NoErrors : OUT std_logic;
	E2 : OUT std_logic;
	E1 : OUT std_logic
	);
END main;

ARCHITECTURE structure OF main IS
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
SIGNAL ww_m0 : std_logic;
SIGNAL ww_m1 : std_logic;
SIGNAL ww_m2 : std_logic;
SIGNAL ww_m3 : std_logic;
SIGNAL ww_NoErrors : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL \m0~output_o\ : std_logic;
SIGNAL \m1~output_o\ : std_logic;
SIGNAL \m2~output_o\ : std_logic;
SIGNAL \m3~output_o\ : std_logic;
SIGNAL \NoErrors~output_o\ : std_logic;
SIGNAL \E2~output_o\ : std_logic;
SIGNAL \E1~output_o\ : std_logic;
SIGNAL \y5~input_o\ : std_logic;
SIGNAL \y4~input_o\ : std_logic;
SIGNAL \y1~input_o\ : std_logic;
SIGNAL \y0~input_o\ : std_logic;
SIGNAL \gate0|gate0|Mo~0_combout\ : std_logic;
SIGNAL \y7~input_o\ : std_logic;
SIGNAL \y6~input_o\ : std_logic;
SIGNAL \gate0|gate0|Mo~1_combout\ : std_logic;
SIGNAL \y3~input_o\ : std_logic;
SIGNAL \y2~input_o\ : std_logic;
SIGNAL \gate0|gate0|Mo~combout\ : std_logic;
SIGNAL \gate0|gate1|Mo~0_combout\ : std_logic;
SIGNAL \gate0|gate1|Mo~1_combout\ : std_logic;
SIGNAL \gate0|gate1|Mo~combout\ : std_logic;
SIGNAL \gate0|gate2|Mo~0_combout\ : std_logic;
SIGNAL \gate0|gate2|Mo~1_combout\ : std_logic;
SIGNAL \gate0|gate2|Mo~combout\ : std_logic;
SIGNAL \gate1|m3_1~combout\ : std_logic;
SIGNAL \gate2|gate2|s~combout\ : std_logic;
SIGNAL \gate2|gate2|cO~combout\ : std_logic;
SIGNAL \gate2|gate5|gate1|cO~0_combout\ : std_logic;
SIGNAL \gate2|gate1|s~combout\ : std_logic;
SIGNAL \gate2|gate0|s~0_combout\ : std_logic;
SIGNAL \gate1|m3_7~2_combout\ : std_logic;
SIGNAL \gate1|m3_7~3_combout\ : std_logic;
SIGNAL \gate2|gate0|cO~combout\ : std_logic;
SIGNAL \gate2|gate1|cO~combout\ : std_logic;
SIGNAL \gate2|gate4|gate1|cO~0_combout\ : std_logic;
SIGNAL \gate2|gate5|gate0|s~0_combout\ : std_logic;
SIGNAL \gate2|gate4|gate0|s~0_combout\ : std_logic;
SIGNAL \gate2|gate4|gate1|s~combout\ : std_logic;
SIGNAL \gate2|gate5|gate1|s~combout\ : std_logic;
SIGNAL \gate2|gate6|gate1|cO~0_combout\ : std_logic;
SIGNAL \gate2|m0_3~combout\ : std_logic;
SIGNAL \gate2|gate6|gate2|s~0_combout\ : std_logic;
SIGNAL \gate2|gate6|gate1|s~combout\ : std_logic;
SIGNAL \gate3|Valid_No_Errors~combout\ : std_logic;
SIGNAL \gate2|gate6|gate2|cO~0_combout\ : std_logic;
SIGNAL \gate2|gate6|gate0|s~combout\ : std_logic;
SIGNAL \gate3|n2_Errors~combout\ : std_logic;
SIGNAL \gate3|n1_Error~0_combout\ : std_logic;
SIGNAL \gate3|ALT_INV_Valid_No_Errors~combout\ : std_logic;

BEGIN

ww_y7 <= y7;
ww_y6 <= y6;
ww_y5 <= y5;
ww_y4 <= y4;
ww_y3 <= y3;
ww_y2 <= y2;
ww_y1 <= y1;
ww_y0 <= y0;
m0 <= ww_m0;
m1 <= ww_m1;
m2 <= ww_m2;
m3 <= ww_m3;
NoErrors <= ww_NoErrors;
E2 <= ww_E2;
E1 <= ww_E1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\gate3|ALT_INV_Valid_No_Errors~combout\ <= NOT \gate3|Valid_No_Errors~combout\;

\m0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate0|gate0|Mo~combout\,
	devoe => ww_devoe,
	o => \m0~output_o\);

\m1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate0|gate1|Mo~combout\,
	devoe => ww_devoe,
	o => \m1~output_o\);

\m2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate0|gate2|Mo~combout\,
	devoe => ww_devoe,
	o => \m2~output_o\);

\m3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate2|m0_3~combout\,
	devoe => ww_devoe,
	o => \m3~output_o\);

\NoErrors~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate3|ALT_INV_Valid_No_Errors~combout\,
	devoe => ww_devoe,
	o => \NoErrors~output_o\);

\E2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate3|n2_Errors~combout\,
	devoe => ww_devoe,
	o => \E2~output_o\);

\E1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate3|n1_Error~0_combout\,
	devoe => ww_devoe,
	o => \E1~output_o\);

\y5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y5,
	o => \y5~input_o\);

\y4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y4,
	o => \y4~input_o\);

\y1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y1,
	o => \y1~input_o\);

\y0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0,
	o => \y0~input_o\);

\gate0|gate0|Mo~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate0|Mo~0_combout\ = (\y5~input_o\ & (!\y4~input_o\ & (\y1~input_o\ $ (\y0~input_o\)))) # (!\y5~input_o\ & (\y4~input_o\ & (\y1~input_o\ $ (\y0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y5~input_o\,
	datab => \y4~input_o\,
	datac => \y1~input_o\,
	datad => \y0~input_o\,
	combout => \gate0|gate0|Mo~0_combout\);

\y7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y7,
	o => \y7~input_o\);

\y6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y6,
	o => \y6~input_o\);

\gate0|gate0|Mo~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate0|Mo~1_combout\ = \y7~input_o\ $ (\y6~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y7~input_o\,
	datad => \y6~input_o\,
	combout => \gate0|gate0|Mo~1_combout\);

\y3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y3,
	o => \y3~input_o\);

\y2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y2,
	o => \y2~input_o\);

\gate0|gate0|Mo\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate0|Mo~combout\ = (\gate0|gate0|Mo~0_combout\) # ((\gate0|gate0|Mo~1_combout\ & (\y3~input_o\ $ (\y2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate0|gate0|Mo~0_combout\,
	datab => \gate0|gate0|Mo~1_combout\,
	datac => \y3~input_o\,
	datad => \y2~input_o\,
	combout => \gate0|gate0|Mo~combout\);

\gate0|gate1|Mo~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate1|Mo~0_combout\ = (\y6~input_o\ & (!\y4~input_o\ & (\y2~input_o\ $ (\y0~input_o\)))) # (!\y6~input_o\ & (\y4~input_o\ & (\y2~input_o\ $ (\y0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y6~input_o\,
	datab => \y4~input_o\,
	datac => \y2~input_o\,
	datad => \y0~input_o\,
	combout => \gate0|gate1|Mo~0_combout\);

\gate0|gate1|Mo~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate1|Mo~1_combout\ = \y7~input_o\ $ (\y5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y7~input_o\,
	datad => \y5~input_o\,
	combout => \gate0|gate1|Mo~1_combout\);

\gate0|gate1|Mo\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate1|Mo~combout\ = (\gate0|gate1|Mo~0_combout\) # ((\gate0|gate1|Mo~1_combout\ & (\y3~input_o\ $ (\y1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate0|gate1|Mo~0_combout\,
	datab => \gate0|gate1|Mo~1_combout\,
	datac => \y3~input_o\,
	datad => \y1~input_o\,
	combout => \gate0|gate1|Mo~combout\);

\gate0|gate2|Mo~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate2|Mo~0_combout\ = (\y6~input_o\ & (!\y2~input_o\ & (\y4~input_o\ $ (\y0~input_o\)))) # (!\y6~input_o\ & (\y2~input_o\ & (\y4~input_o\ $ (\y0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y6~input_o\,
	datab => \y2~input_o\,
	datac => \y4~input_o\,
	datad => \y0~input_o\,
	combout => \gate0|gate2|Mo~0_combout\);

\gate0|gate2|Mo~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate2|Mo~1_combout\ = \y7~input_o\ $ (\y3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y7~input_o\,
	datad => \y3~input_o\,
	combout => \gate0|gate2|Mo~1_combout\);

\gate0|gate2|Mo\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate0|gate2|Mo~combout\ = (\gate0|gate2|Mo~0_combout\) # ((\gate0|gate2|Mo~1_combout\ & (\y5~input_o\ $ (\y1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate0|gate2|Mo~0_combout\,
	datab => \gate0|gate2|Mo~1_combout\,
	datac => \y5~input_o\,
	datad => \y1~input_o\,
	combout => \gate0|gate2|Mo~combout\);

\gate1|m3_1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate1|m3_1~combout\ = \y1~input_o\ $ (\gate0|gate0|Mo~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y1~input_o\,
	datad => \gate0|gate0|Mo~combout\,
	combout => \gate1|m3_1~combout\);

\gate2|gate2|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate2|s~combout\ = (\gate0|gate0|Mo~0_combout\ & (\y3~input_o\ $ ((!\y2~input_o\)))) # (!\gate0|gate0|Mo~0_combout\ & (!\gate0|gate0|Mo~1_combout\ & (\y3~input_o\ $ (\y2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate0|gate0|Mo~0_combout\,
	datab => \y3~input_o\,
	datac => \y2~input_o\,
	datad => \gate0|gate0|Mo~1_combout\,
	combout => \gate2|gate2|s~combout\);

\gate2|gate2|cO\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate2|cO~combout\ = (\y2~input_o\ & ((\gate0|gate1|Mo~combout\) # (\y3~input_o\ $ (!\gate0|gate0|Mo~combout\)))) # (!\y2~input_o\ & ((\y3~input_o\ $ (\gate0|gate0|Mo~combout\)) # (!\gate0|gate1|Mo~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y2~input_o\,
	datab => \gate0|gate1|Mo~combout\,
	datac => \y3~input_o\,
	datad => \gate0|gate0|Mo~combout\,
	combout => \gate2|gate2|cO~combout\);

\gate2|gate5|gate1|cO~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate5|gate1|cO~0_combout\ = (!\gate2|gate2|cO~combout\ & ((\gate1|m3_1~combout\ & ((\y0~input_o\) # (\gate2|gate2|s~combout\))) # (!\gate1|m3_1~combout\ & (\y0~input_o\ & \gate2|gate2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|m3_1~combout\,
	datab => \y0~input_o\,
	datac => \gate2|gate2|s~combout\,
	datad => \gate2|gate2|cO~combout\,
	combout => \gate2|gate5|gate1|cO~0_combout\);

\gate2|gate1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate1|s~combout\ = \y5~input_o\ $ (\y4~input_o\ $ (\gate0|gate0|Mo~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y5~input_o\,
	datab => \y4~input_o\,
	datac => \gate0|gate0|Mo~combout\,
	combout => \gate2|gate1|s~combout\);

\gate2|gate0|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate0|s~0_combout\ = (\gate0|gate0|Mo~0_combout\ & (((!\gate0|gate0|Mo~1_combout\)))) # (!\gate0|gate0|Mo~0_combout\ & (\gate0|gate0|Mo~1_combout\ & (\y3~input_o\ $ (!\y2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datab => \y2~input_o\,
	datac => \gate0|gate0|Mo~0_combout\,
	datad => \gate0|gate0|Mo~1_combout\,
	combout => \gate2|gate0|s~0_combout\);

\gate1|m3_7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate1|m3_7~2_combout\ = \y3~input_o\ $ (!\y2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datab => \y2~input_o\,
	combout => \gate1|m3_7~2_combout\);

\gate1|m3_7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate1|m3_7~3_combout\ = (\gate0|gate0|Mo~0_combout\ & (!\y7~input_o\)) # (!\gate0|gate0|Mo~0_combout\ & ((\gate1|m3_7~2_combout\ & (\y7~input_o\)) # (!\gate1|m3_7~2_combout\ & ((\y6~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y7~input_o\,
	datab => \y6~input_o\,
	datac => \gate0|gate0|Mo~0_combout\,
	datad => \gate1|m3_7~2_combout\,
	combout => \gate1|m3_7~3_combout\);

\gate2|gate0|cO\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate0|cO~combout\ = (\y6~input_o\ & ((\gate0|gate1|Mo~combout\ $ (\gate0|gate2|Mo~combout\)) # (!\gate1|m3_7~3_combout\))) # (!\y6~input_o\ & ((\gate1|m3_7~3_combout\) # (\gate0|gate1|Mo~combout\ $ (!\gate0|gate2|Mo~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate0|gate1|Mo~combout\,
	datab => \gate0|gate2|Mo~combout\,
	datac => \y6~input_o\,
	datad => \gate1|m3_7~3_combout\,
	combout => \gate2|gate0|cO~combout\);

\gate2|gate1|cO\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate1|cO~combout\ = (\y4~input_o\ & ((\gate0|gate2|Mo~combout\) # (\y5~input_o\ $ (!\gate0|gate0|Mo~combout\)))) # (!\y4~input_o\ & ((\y5~input_o\ $ (\gate0|gate0|Mo~combout\)) # (!\gate0|gate2|Mo~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y4~input_o\,
	datab => \gate0|gate2|Mo~combout\,
	datac => \y5~input_o\,
	datad => \gate0|gate0|Mo~combout\,
	combout => \gate2|gate1|cO~combout\);

\gate2|gate4|gate1|cO~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate4|gate1|cO~0_combout\ = (\gate2|gate0|cO~combout\ & (\gate2|gate1|s~combout\ & (\gate2|gate0|s~0_combout\ & !\gate2|gate1|cO~combout\))) # (!\gate2|gate0|cO~combout\ & (((\gate2|gate1|s~combout\ & \gate2|gate0|s~0_combout\)) # 
-- (!\gate2|gate1|cO~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate1|s~combout\,
	datab => \gate2|gate0|s~0_combout\,
	datac => \gate2|gate0|cO~combout\,
	datad => \gate2|gate1|cO~combout\,
	combout => \gate2|gate4|gate1|cO~0_combout\);

\gate2|gate5|gate0|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate5|gate0|s~0_combout\ = \y3~input_o\ $ (\y2~input_o\ $ (\y1~input_o\ $ (\y0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datab => \y2~input_o\,
	datac => \y1~input_o\,
	datad => \y0~input_o\,
	combout => \gate2|gate5|gate0|s~0_combout\);

\gate2|gate4|gate0|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate4|gate0|s~0_combout\ = \y7~input_o\ $ (\y6~input_o\ $ (\y5~input_o\ $ (\y4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y7~input_o\,
	datab => \y6~input_o\,
	datac => \y5~input_o\,
	datad => \y4~input_o\,
	combout => \gate2|gate4|gate0|s~0_combout\);

\gate2|gate4|gate1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate4|gate1|s~combout\ = \gate2|gate0|cO~combout\ $ (\gate2|gate1|cO~combout\ $ (((\gate2|gate1|s~combout\ & \gate2|gate0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate1|s~combout\,
	datab => \gate2|gate0|s~0_combout\,
	datac => \gate2|gate0|cO~combout\,
	datad => \gate2|gate1|cO~combout\,
	combout => \gate2|gate4|gate1|s~combout\);

\gate2|gate5|gate1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate5|gate1|s~combout\ = \gate2|gate2|cO~combout\ $ (((\y0~input_o\ & ((\gate1|m3_1~combout\) # (\gate2|gate2|s~combout\))) # (!\y0~input_o\ & (\gate1|m3_1~combout\ & \gate2|gate2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y0~input_o\,
	datab => \gate1|m3_1~combout\,
	datac => \gate2|gate2|s~combout\,
	datad => \gate2|gate2|cO~combout\,
	combout => \gate2|gate5|gate1|s~combout\);

\gate2|gate6|gate1|cO~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate6|gate1|cO~0_combout\ = (\gate2|gate4|gate1|s~combout\ & (((\gate2|gate5|gate0|s~0_combout\ & \gate2|gate4|gate0|s~0_combout\)) # (!\gate2|gate5|gate1|s~combout\))) # (!\gate2|gate4|gate1|s~combout\ & (\gate2|gate5|gate0|s~0_combout\ & 
-- (\gate2|gate4|gate0|s~0_combout\ & !\gate2|gate5|gate1|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate5|gate0|s~0_combout\,
	datab => \gate2|gate4|gate0|s~0_combout\,
	datac => \gate2|gate4|gate1|s~combout\,
	datad => \gate2|gate5|gate1|s~combout\,
	combout => \gate2|gate6|gate1|cO~0_combout\);

\gate2|m0_3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|m0_3~combout\ = (\gate2|gate5|gate1|cO~0_combout\) # ((\gate2|gate4|gate1|cO~0_combout\) # (\gate2|gate6|gate1|cO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate5|gate1|cO~0_combout\,
	datab => \gate2|gate4|gate1|cO~0_combout\,
	datac => \gate2|gate6|gate1|cO~0_combout\,
	combout => \gate2|m0_3~combout\);

\gate2|gate6|gate2|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate6|gate2|s~0_combout\ = \gate2|gate5|gate1|cO~0_combout\ $ (\gate2|gate4|gate1|cO~0_combout\ $ (\gate2|gate6|gate1|cO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate5|gate1|cO~0_combout\,
	datab => \gate2|gate4|gate1|cO~0_combout\,
	datac => \gate2|gate6|gate1|cO~0_combout\,
	combout => \gate2|gate6|gate2|s~0_combout\);

\gate2|gate6|gate1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate6|gate1|s~combout\ = \gate2|gate4|gate1|s~combout\ $ (\gate2|gate5|gate1|s~combout\ $ (((\gate2|gate5|gate0|s~0_combout\ & \gate2|gate4|gate0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate5|gate0|s~0_combout\,
	datab => \gate2|gate4|gate0|s~0_combout\,
	datac => \gate2|gate4|gate1|s~combout\,
	datad => \gate2|gate5|gate1|s~combout\,
	combout => \gate2|gate6|gate1|s~combout\);

\gate3|Valid_No_Errors\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate3|Valid_No_Errors~combout\ = (\gate2|gate6|gate2|s~0_combout\) # ((\gate2|gate5|gate0|s~0_combout\ $ (\gate2|gate4|gate0|s~0_combout\)) # (!\gate2|gate6|gate1|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate5|gate0|s~0_combout\,
	datab => \gate2|gate4|gate0|s~0_combout\,
	datac => \gate2|gate6|gate2|s~0_combout\,
	datad => \gate2|gate6|gate1|s~combout\,
	combout => \gate3|Valid_No_Errors~combout\);

\gate2|gate6|gate2|cO~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate6|gate2|cO~0_combout\ = (\gate2|gate5|gate1|cO~0_combout\ & ((\gate2|gate4|gate1|cO~0_combout\) # (\gate2|gate6|gate1|cO~0_combout\))) # (!\gate2|gate5|gate1|cO~0_combout\ & (\gate2|gate4|gate1|cO~0_combout\ & \gate2|gate6|gate1|cO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate5|gate1|cO~0_combout\,
	datab => \gate2|gate4|gate1|cO~0_combout\,
	datac => \gate2|gate6|gate1|cO~0_combout\,
	combout => \gate2|gate6|gate2|cO~0_combout\);

\gate2|gate6|gate0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate2|gate6|gate0|s~combout\ = \gate2|gate5|gate0|s~0_combout\ $ (\gate2|gate4|gate0|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate2|gate5|gate0|s~0_combout\,
	datad => \gate2|gate4|gate0|s~0_combout\,
	combout => \gate2|gate6|gate0|s~combout\);

\gate3|n2_Errors\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate3|n2_Errors~combout\ = (\gate2|gate6|gate1|s~combout\ & ((\gate2|gate6|gate2|s~0_combout\) # ((\gate2|gate6|gate2|cO~0_combout\ & \gate2|gate6|gate0|s~combout\)))) # (!\gate2|gate6|gate1|s~combout\ & ((\gate2|gate6|gate2|cO~0_combout\) # 
-- ((!\gate2|gate6|gate0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate6|gate2|cO~0_combout\,
	datab => \gate2|gate6|gate2|s~0_combout\,
	datac => \gate2|gate6|gate1|s~combout\,
	datad => \gate2|gate6|gate0|s~combout\,
	combout => \gate3|n2_Errors~combout\);

\gate3|n1_Error~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gate3|n1_Error~0_combout\ = (\gate2|gate6|gate0|s~combout\ & (!\gate2|gate6|gate2|cO~0_combout\ & ((!\gate2|gate6|gate1|s~combout\) # (!\gate2|gate6|gate2|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate6|gate0|s~combout\,
	datab => \gate2|gate6|gate2|s~0_combout\,
	datac => \gate2|gate6|gate1|s~combout\,
	datad => \gate2|gate6|gate2|cO~0_combout\,
	combout => \gate3|n1_Error~0_combout\);

ww_m0 <= \m0~output_o\;

ww_m1 <= \m1~output_o\;

ww_m2 <= \m2~output_o\;

ww_m3 <= \m3~output_o\;

ww_NoErrors <= \NoErrors~output_o\;

ww_E2 <= \E2~output_o\;

ww_E1 <= \E1~output_o\;
END structure;


