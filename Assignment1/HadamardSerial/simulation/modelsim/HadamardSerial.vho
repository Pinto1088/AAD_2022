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

-- DATE "11/13/2022 20:20:03"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EncoderSerial IS
    PORT (
	clk : IN std_logic;
	nRst : IN std_logic;
	mIn : IN std_logic;
	mOut : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END EncoderSerial;

-- Design Ports Information
-- mOut[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mOut[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mOut[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mOut[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mOut[4]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mOut[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mOut[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mOut[7]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mIn	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EncoderSerial IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nRst : std_logic;
SIGNAL ww_mIn : std_logic;
SIGNAL ww_mOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \nRst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ControlUnit|Pstate.s_3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mOut[0]~output_o\ : std_logic;
SIGNAL \mOut[1]~output_o\ : std_logic;
SIGNAL \mOut[2]~output_o\ : std_logic;
SIGNAL \mOut[3]~output_o\ : std_logic;
SIGNAL \mOut[4]~output_o\ : std_logic;
SIGNAL \mOut[5]~output_o\ : std_logic;
SIGNAL \mOut[6]~output_o\ : std_logic;
SIGNAL \mOut[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \nRst~input_o\ : std_logic;
SIGNAL \ControlUnit|Pstate~8_combout\ : std_logic;
SIGNAL \ControlUnit|Pstate.s_rst~feeder_combout\ : std_logic;
SIGNAL \ControlUnit|Pstate.s_rst~q\ : std_logic;
SIGNAL \ControlUnit|Pstate~10_combout\ : std_logic;
SIGNAL \ControlUnit|Pstate.s_0~q\ : std_logic;
SIGNAL \ControlUnit|Pstate~11_combout\ : std_logic;
SIGNAL \ControlUnit|Pstate.s_1~q\ : std_logic;
SIGNAL \ControlUnit|Pstate~9_combout\ : std_logic;
SIGNAL \ControlUnit|Pstate.s_2~q\ : std_logic;
SIGNAL \ControlUnit|Pstate~7_combout\ : std_logic;
SIGNAL \ControlUnit|Pstate.s_3~q\ : std_logic;
SIGNAL \ControlUnit|Pstate.s_3~clkctrl_outclk\ : std_logic;
SIGNAL \mIn~input_o\ : std_logic;
SIGNAL \nRst~inputclkctrl_outclk\ : std_logic;
SIGNAL \flipFlopDPET|Q~q\ : std_logic;
SIGNAL \flipFlopDPET0|Q~0_combout\ : std_logic;
SIGNAL \flipFlopDPET0|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopDPET0|Q~q\ : std_logic;
SIGNAL \flipFlopF0|Q~q\ : std_logic;
SIGNAL \flipFlopDPET1|Q~0_combout\ : std_logic;
SIGNAL \flipFlopDPET1|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopDPET1|Q~q\ : std_logic;
SIGNAL \flipFlopF1|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopF1|Q~q\ : std_logic;
SIGNAL \flipFlopDPET2|Q~0_combout\ : std_logic;
SIGNAL \flipFlopDPET2|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopDPET2|Q~q\ : std_logic;
SIGNAL \flipFlopF2|Q~q\ : std_logic;
SIGNAL \flipFlopDPET3|Q~0_combout\ : std_logic;
SIGNAL \flipFlopDPET3|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopDPET3|Q~q\ : std_logic;
SIGNAL \flipFlopF3|Q~q\ : std_logic;
SIGNAL \flipFlopDPET4|Q~0_combout\ : std_logic;
SIGNAL \flipFlopDPET4|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopDPET4|Q~q\ : std_logic;
SIGNAL \flipFlopF4|Q~q\ : std_logic;
SIGNAL \flipFlopDPET5|Q~0_combout\ : std_logic;
SIGNAL \flipFlopDPET5|Q~q\ : std_logic;
SIGNAL \flipFlopF5|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopF5|Q~q\ : std_logic;
SIGNAL \flipFlopDPET6|Q~0_combout\ : std_logic;
SIGNAL \flipFlopDPET6|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopDPET6|Q~q\ : std_logic;
SIGNAL \flipFlopF6|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopF6|Q~q\ : std_logic;
SIGNAL \flipFlopDPET7|Q~0_combout\ : std_logic;
SIGNAL \flipFlopDPET7|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopDPET7|Q~q\ : std_logic;
SIGNAL \flipFlopF7|Q~feeder_combout\ : std_logic;
SIGNAL \flipFlopF7|Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_nRst <= nRst;
ww_mIn <= mIn;
mOut <= ww_mOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nRst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nRst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\ControlUnit|Pstate.s_3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ControlUnit|Pstate.s_3~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y11_N2
\mOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopF0|Q~q\,
	devoe => ww_devoe,
	o => \mOut[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\mOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopF1|Q~q\,
	devoe => ww_devoe,
	o => \mOut[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\mOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopF2|Q~q\,
	devoe => ww_devoe,
	o => \mOut[2]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\mOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopF3|Q~q\,
	devoe => ww_devoe,
	o => \mOut[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\mOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopF4|Q~q\,
	devoe => ww_devoe,
	o => \mOut[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\mOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopF5|Q~q\,
	devoe => ww_devoe,
	o => \mOut[5]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\mOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopF6|Q~q\,
	devoe => ww_devoe,
	o => \mOut[6]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\mOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopF7|Q~q\,
	devoe => ww_devoe,
	o => \mOut[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N22
\nRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRst,
	o => \nRst~input_o\);

-- Location: LCCOMB_X31_Y12_N24
\ControlUnit|Pstate~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Pstate~8_combout\ = (\nRst~input_o\ & !\ControlUnit|Pstate.s_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRst~input_o\,
	datad => \ControlUnit|Pstate.s_3~q\,
	combout => \ControlUnit|Pstate~8_combout\);

-- Location: LCCOMB_X31_Y12_N12
\ControlUnit|Pstate.s_rst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Pstate.s_rst~feeder_combout\ = \ControlUnit|Pstate~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|Pstate~8_combout\,
	combout => \ControlUnit|Pstate.s_rst~feeder_combout\);

-- Location: FF_X31_Y12_N13
\ControlUnit|Pstate.s_rst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ControlUnit|Pstate.s_rst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|Pstate.s_rst~q\);

-- Location: LCCOMB_X32_Y12_N22
\ControlUnit|Pstate~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Pstate~10_combout\ = (\nRst~input_o\ & !\ControlUnit|Pstate.s_rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nRst~input_o\,
	datad => \ControlUnit|Pstate.s_rst~q\,
	combout => \ControlUnit|Pstate~10_combout\);

-- Location: FF_X32_Y12_N23
\ControlUnit|Pstate.s_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ControlUnit|Pstate~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|Pstate.s_0~q\);

-- Location: LCCOMB_X32_Y12_N24
\ControlUnit|Pstate~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Pstate~11_combout\ = (\ControlUnit|Pstate.s_0~q\ & \nRst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Pstate.s_0~q\,
	datac => \nRst~input_o\,
	combout => \ControlUnit|Pstate~11_combout\);

-- Location: FF_X32_Y12_N25
\ControlUnit|Pstate.s_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ControlUnit|Pstate~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|Pstate.s_1~q\);

-- Location: LCCOMB_X31_Y12_N22
\ControlUnit|Pstate~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Pstate~9_combout\ = (\nRst~input_o\ & \ControlUnit|Pstate.s_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nRst~input_o\,
	datad => \ControlUnit|Pstate.s_1~q\,
	combout => \ControlUnit|Pstate~9_combout\);

-- Location: FF_X31_Y12_N23
\ControlUnit|Pstate.s_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ControlUnit|Pstate~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|Pstate.s_2~q\);

-- Location: LCCOMB_X32_Y12_N30
\ControlUnit|Pstate~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Pstate~7_combout\ = (\nRst~input_o\ & \ControlUnit|Pstate.s_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nRst~input_o\,
	datad => \ControlUnit|Pstate.s_2~q\,
	combout => \ControlUnit|Pstate~7_combout\);

-- Location: FF_X32_Y12_N31
\ControlUnit|Pstate.s_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ControlUnit|Pstate~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|Pstate.s_3~q\);

-- Location: CLKCTRL_G8
\ControlUnit|Pstate.s_3~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ControlUnit|Pstate.s_3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ControlUnit|Pstate.s_3~clkctrl_outclk\);

-- Location: IOIBUF_X33_Y15_N1
\mIn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mIn,
	o => \mIn~input_o\);

-- Location: CLKCTRL_G19
\nRst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nRst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nRst~inputclkctrl_outclk\);

-- Location: FF_X31_Y12_N15
\flipFlopDPET|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mIn~input_o\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET|Q~q\);

-- Location: LCCOMB_X31_Y12_N28
\flipFlopDPET0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET0|Q~0_combout\ = \flipFlopDPET0|Q~q\ $ (((\ControlUnit|Pstate.s_rst~q\ & \flipFlopDPET|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Pstate.s_rst~q\,
	datab => \flipFlopDPET|Q~q\,
	datad => \flipFlopDPET0|Q~q\,
	combout => \flipFlopDPET0|Q~0_combout\);

-- Location: LCCOMB_X31_Y12_N4
\flipFlopDPET0|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET0|Q~feeder_combout\ = \flipFlopDPET0|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlopDPET0|Q~0_combout\,
	combout => \flipFlopDPET0|Q~feeder_combout\);

-- Location: FF_X31_Y12_N5
\flipFlopDPET0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlopDPET0|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET0|Q~q\);

-- Location: FF_X31_Y12_N25
\flipFlopF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ControlUnit|Pstate.s_3~clkctrl_outclk\,
	asdata => \flipFlopDPET0|Q~q\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopF0|Q~q\);

-- Location: LCCOMB_X31_Y12_N10
\flipFlopDPET1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET1|Q~0_combout\ = \flipFlopDPET1|Q~q\ $ (((\ControlUnit|Pstate.s_rst~q\ & (\flipFlopDPET|Q~q\ & !\ControlUnit|Pstate.s_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Pstate.s_rst~q\,
	datab => \flipFlopDPET1|Q~q\,
	datac => \flipFlopDPET|Q~q\,
	datad => \ControlUnit|Pstate.s_0~q\,
	combout => \flipFlopDPET1|Q~0_combout\);

-- Location: LCCOMB_X31_Y12_N20
\flipFlopDPET1|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET1|Q~feeder_combout\ = \flipFlopDPET1|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlopDPET1|Q~0_combout\,
	combout => \flipFlopDPET1|Q~feeder_combout\);

-- Location: FF_X31_Y12_N21
\flipFlopDPET1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlopDPET1|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET1|Q~q\);

-- Location: LCCOMB_X31_Y12_N6
\flipFlopF1|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopF1|Q~feeder_combout\ = \flipFlopDPET1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlopDPET1|Q~q\,
	combout => \flipFlopF1|Q~feeder_combout\);

-- Location: FF_X31_Y12_N7
\flipFlopF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ControlUnit|Pstate.s_3~clkctrl_outclk\,
	d => \flipFlopF1|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopF1|Q~q\);

-- Location: LCCOMB_X31_Y12_N2
\flipFlopDPET2|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET2|Q~0_combout\ = \flipFlopDPET2|Q~q\ $ (((\ControlUnit|Pstate.s_rst~q\ & (\flipFlopDPET|Q~q\ & !\ControlUnit|Pstate.s_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Pstate.s_rst~q\,
	datab => \flipFlopDPET|Q~q\,
	datac => \flipFlopDPET2|Q~q\,
	datad => \ControlUnit|Pstate.s_1~q\,
	combout => \flipFlopDPET2|Q~0_combout\);

-- Location: LCCOMB_X31_Y12_N8
\flipFlopDPET2|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET2|Q~feeder_combout\ = \flipFlopDPET2|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlopDPET2|Q~0_combout\,
	combout => \flipFlopDPET2|Q~feeder_combout\);

-- Location: FF_X31_Y12_N9
\flipFlopDPET2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlopDPET2|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET2|Q~q\);

-- Location: FF_X31_Y12_N3
\flipFlopF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ControlUnit|Pstate.s_3~clkctrl_outclk\,
	asdata => \flipFlopDPET2|Q~q\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopF2|Q~q\);

-- Location: LCCOMB_X31_Y12_N18
\flipFlopDPET3|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET3|Q~0_combout\ = \flipFlopDPET3|Q~q\ $ (((\flipFlopDPET|Q~q\ & ((\ControlUnit|Pstate.s_2~q\) # (\ControlUnit|Pstate.s_3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Pstate.s_2~q\,
	datab => \ControlUnit|Pstate.s_3~q\,
	datac => \flipFlopDPET|Q~q\,
	datad => \flipFlopDPET3|Q~q\,
	combout => \flipFlopDPET3|Q~0_combout\);

-- Location: LCCOMB_X31_Y12_N26
\flipFlopDPET3|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET3|Q~feeder_combout\ = \flipFlopDPET3|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopDPET3|Q~0_combout\,
	combout => \flipFlopDPET3|Q~feeder_combout\);

-- Location: FF_X31_Y12_N27
\flipFlopDPET3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlopDPET3|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET3|Q~q\);

-- Location: FF_X31_Y12_N29
\flipFlopF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ControlUnit|Pstate.s_3~clkctrl_outclk\,
	asdata => \flipFlopDPET3|Q~q\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopF3|Q~q\);

-- Location: LCCOMB_X31_Y12_N16
\flipFlopDPET4|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET4|Q~0_combout\ = \flipFlopDPET4|Q~q\ $ (((!\ControlUnit|Pstate.s_2~q\ & (\flipFlopDPET|Q~q\ & \ControlUnit|Pstate.s_rst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Pstate.s_2~q\,
	datab => \flipFlopDPET|Q~q\,
	datac => \flipFlopDPET4|Q~q\,
	datad => \ControlUnit|Pstate.s_rst~q\,
	combout => \flipFlopDPET4|Q~0_combout\);

-- Location: LCCOMB_X31_Y12_N30
\flipFlopDPET4|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET4|Q~feeder_combout\ = \flipFlopDPET4|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlopDPET4|Q~0_combout\,
	combout => \flipFlopDPET4|Q~feeder_combout\);

-- Location: FF_X31_Y12_N31
\flipFlopDPET4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlopDPET4|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET4|Q~q\);

-- Location: FF_X31_Y12_N17
\flipFlopF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ControlUnit|Pstate.s_3~clkctrl_outclk\,
	asdata => \flipFlopDPET4|Q~q\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopF4|Q~q\);

-- Location: LCCOMB_X32_Y12_N18
\flipFlopDPET5|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET5|Q~0_combout\ = \flipFlopDPET5|Q~q\ $ (((\flipFlopDPET|Q~q\ & ((\ControlUnit|Pstate.s_1~q\) # (\ControlUnit|Pstate.s_3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopDPET5|Q~q\,
	datab => \ControlUnit|Pstate.s_1~q\,
	datac => \ControlUnit|Pstate.s_3~q\,
	datad => \flipFlopDPET|Q~q\,
	combout => \flipFlopDPET5|Q~0_combout\);

-- Location: FF_X32_Y12_N13
\flipFlopDPET5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \flipFlopDPET5|Q~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET5|Q~q\);

-- Location: LCCOMB_X32_Y12_N26
\flipFlopF5|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopF5|Q~feeder_combout\ = \flipFlopDPET5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlopDPET5|Q~q\,
	combout => \flipFlopF5|Q~feeder_combout\);

-- Location: FF_X32_Y12_N27
\flipFlopF5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ControlUnit|Pstate.s_3~clkctrl_outclk\,
	d => \flipFlopF5|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopF5|Q~q\);

-- Location: LCCOMB_X32_Y12_N20
\flipFlopDPET6|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET6|Q~0_combout\ = \flipFlopDPET6|Q~q\ $ (((\flipFlopDPET|Q~q\ & ((\ControlUnit|Pstate.s_0~q\) # (\ControlUnit|Pstate.s_3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Pstate.s_0~q\,
	datab => \flipFlopDPET6|Q~q\,
	datac => \ControlUnit|Pstate.s_3~q\,
	datad => \flipFlopDPET|Q~q\,
	combout => \flipFlopDPET6|Q~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\flipFlopDPET6|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET6|Q~feeder_combout\ = \flipFlopDPET6|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipFlopDPET6|Q~0_combout\,
	combout => \flipFlopDPET6|Q~feeder_combout\);

-- Location: FF_X32_Y12_N29
\flipFlopDPET6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlopDPET6|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET6|Q~q\);

-- Location: LCCOMB_X32_Y12_N14
\flipFlopF6|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopF6|Q~feeder_combout\ = \flipFlopDPET6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlopDPET6|Q~q\,
	combout => \flipFlopF6|Q~feeder_combout\);

-- Location: FF_X32_Y12_N15
\flipFlopF6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ControlUnit|Pstate.s_3~clkctrl_outclk\,
	d => \flipFlopF6|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopF6|Q~q\);

-- Location: LCCOMB_X32_Y12_N8
\flipFlopDPET7|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET7|Q~0_combout\ = \flipFlopDPET7|Q~q\ $ (((\ControlUnit|Pstate.s_3~q\ & \flipFlopDPET|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Pstate.s_3~q\,
	datab => \flipFlopDPET7|Q~q\,
	datad => \flipFlopDPET|Q~q\,
	combout => \flipFlopDPET7|Q~0_combout\);

-- Location: LCCOMB_X32_Y12_N16
\flipFlopDPET7|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopDPET7|Q~feeder_combout\ = \flipFlopDPET7|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopDPET7|Q~0_combout\,
	combout => \flipFlopDPET7|Q~feeder_combout\);

-- Location: FF_X32_Y12_N17
\flipFlopDPET7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flipFlopDPET7|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopDPET7|Q~q\);

-- Location: LCCOMB_X32_Y12_N10
\flipFlopF7|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopF7|Q~feeder_combout\ = \flipFlopDPET7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipFlopDPET7|Q~q\,
	combout => \flipFlopF7|Q~feeder_combout\);

-- Location: FF_X32_Y12_N11
\flipFlopF7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ControlUnit|Pstate.s_3~clkctrl_outclk\,
	d => \flipFlopF7|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopF7|Q~q\);

ww_mOut(0) <= \mOut[0]~output_o\;

ww_mOut(1) <= \mOut[1]~output_o\;

ww_mOut(2) <= \mOut[2]~output_o\;

ww_mOut(3) <= \mOut[3]~output_o\;

ww_mOut(4) <= \mOut[4]~output_o\;

ww_mOut(5) <= \mOut[5]~output_o\;

ww_mOut(6) <= \mOut[6]~output_o\;

ww_mOut(7) <= \mOut[7]~output_o\;
END structure;


