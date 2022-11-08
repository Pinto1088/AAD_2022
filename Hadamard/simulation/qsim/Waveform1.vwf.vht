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
-- Generated on "11/08/2022 14:00:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Encoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Encoder_vhd_vec_tst IS
END Encoder_vhd_vec_tst;
ARCHITECTURE Encoder_arch OF Encoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL mIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL xOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Encoder
	PORT (
	mIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	xOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Encoder
	PORT MAP (
-- list connections between master ports and signals
	mIn => mIn,
	xOut => xOut
	);
-- mIn[3]
t_prcs_mIn_3: PROCESS
BEGIN
	mIn(3) <= '1';
	WAIT FOR 310000 ps;
	mIn(3) <= '0';
WAIT;
END PROCESS t_prcs_mIn_3;
-- mIn[2]
t_prcs_mIn_2: PROCESS
BEGIN
	mIn(2) <= '0';
	WAIT FOR 100000 ps;
	mIn(2) <= '1';
	WAIT FOR 110000 ps;
	mIn(2) <= '0';
WAIT;
END PROCESS t_prcs_mIn_2;
-- mIn[1]
t_prcs_mIn_1: PROCESS
BEGIN
	mIn(1) <= '0';
	WAIT FOR 100000 ps;
	mIn(1) <= '1';
	WAIT FOR 210000 ps;
	mIn(1) <= '0';
WAIT;
END PROCESS t_prcs_mIn_1;
-- mIn[0]
t_prcs_mIn_0: PROCESS
BEGIN
	mIn(0) <= '0';
	WAIT FOR 100000 ps;
	mIn(0) <= '1';
	WAIT FOR 110000 ps;
	mIn(0) <= '0';
WAIT;
END PROCESS t_prcs_mIn_0;
END Encoder_arch;
