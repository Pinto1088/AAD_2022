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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/13/2022 15:47:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EncoderSerial
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EncoderSerial_vhd_vec_tst IS
END EncoderSerial_vhd_vec_tst;
ARCHITECTURE EncoderSerial_arch OF EncoderSerial_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL mIn : STD_LOGIC;
SIGNAL mOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL nRst : STD_LOGIC;
COMPONENT EncoderSerial
	PORT (
	clk : IN STD_LOGIC;
	mIn : IN STD_LOGIC;
	mOut : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	nRst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : EncoderSerial
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	mIn => mIn,
	mOut => mOut,
	nRst => nRst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- mIn
t_prcs_mIn: PROCESS
BEGIN
	mIn <= '0';
	WAIT FOR 140000 ps;
	mIn <= '1';
	WAIT FOR 100000 ps;
	mIn <= '0';
WAIT;
END PROCESS t_prcs_mIn;

-- nRst
t_prcs_nRst: PROCESS
BEGIN
	nRst <= '1';
WAIT;
END PROCESS t_prcs_nRst;
END EncoderSerial_arch;
