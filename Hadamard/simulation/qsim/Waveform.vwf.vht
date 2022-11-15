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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/13/2022 21:33:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Decoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Decoder_vhd_vec_tst IS
END Decoder_vhd_vec_tst;
ARCHITECTURE Decoder_arch OF Decoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL msOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL valid : STD_LOGIC;
SIGNAL yIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Decoder
	PORT (
	msOut : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	valid : BUFFER STD_LOGIC;
	yIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Decoder
	PORT MAP (
-- list connections between master ports and signals
	msOut => msOut,
	valid => valid,
	yIn => yIn
	);
-- yIn[7]
t_prcs_yIn_7: PROCESS
BEGIN
	yIn(7) <= '1';
	WAIT FOR 120000 ps;
	yIn(7) <= '0';
	WAIT FOR 20000 ps;
	yIn(7) <= '1';
	WAIT FOR 140000 ps;
	yIn(7) <= '0';
	WAIT FOR 20000 ps;
	yIn(7) <= '1';
	WAIT FOR 120000 ps;
	yIn(7) <= '0';
	WAIT FOR 30000 ps;
	yIn(7) <= '1';
	WAIT FOR 70000 ps;
	yIn(7) <= '0';
	WAIT FOR 20000 ps;
	yIn(7) <= '1';
	WAIT FOR 100000 ps;
	yIn(7) <= '0';
WAIT;
END PROCESS t_prcs_yIn_7;
-- yIn[6]
t_prcs_yIn_6: PROCESS
BEGIN
	yIn(6) <= '0';
	WAIT FOR 140000 ps;
	yIn(6) <= '1';
	WAIT FOR 140000 ps;
	yIn(6) <= '0';
	WAIT FOR 20000 ps;
	yIn(6) <= '1';
	WAIT FOR 120000 ps;
	yIn(6) <= '0';
	WAIT FOR 30000 ps;
	yIn(6) <= '1';
	WAIT FOR 70000 ps;
	yIn(6) <= '0';
	WAIT FOR 20000 ps;
	yIn(6) <= '1';
	WAIT FOR 100000 ps;
	yIn(6) <= '0';
WAIT;
END PROCESS t_prcs_yIn_6;
-- yIn[5]
t_prcs_yIn_5: PROCESS
BEGIN
	yIn(5) <= '1';
	WAIT FOR 120000 ps;
	yIn(5) <= '0';
	WAIT FOR 20000 ps;
	yIn(5) <= '1';
	WAIT FOR 140000 ps;
	yIn(5) <= '0';
	WAIT FOR 20000 ps;
	yIn(5) <= '1';
	WAIT FOR 120000 ps;
	yIn(5) <= '0';
	WAIT FOR 30000 ps;
	yIn(5) <= '1';
	WAIT FOR 70000 ps;
	yIn(5) <= '0';
WAIT;
END PROCESS t_prcs_yIn_5;
-- yIn[4]
t_prcs_yIn_4: PROCESS
BEGIN
	yIn(4) <= '0';
	WAIT FOR 140000 ps;
	yIn(4) <= '1';
	WAIT FOR 140000 ps;
	yIn(4) <= '0';
	WAIT FOR 20000 ps;
	yIn(4) <= '1';
	WAIT FOR 120000 ps;
	yIn(4) <= '0';
	WAIT FOR 30000 ps;
	yIn(4) <= '1';
	WAIT FOR 70000 ps;
	yIn(4) <= '0';
WAIT;
END PROCESS t_prcs_yIn_4;
-- yIn[3]
t_prcs_yIn_3: PROCESS
BEGIN
	yIn(3) <= '1';
	WAIT FOR 120000 ps;
	yIn(3) <= '0';
	WAIT FOR 20000 ps;
	yIn(3) <= '1';
	WAIT FOR 140000 ps;
	yIn(3) <= '0';
WAIT;
END PROCESS t_prcs_yIn_3;
-- yIn[2]
t_prcs_yIn_2: PROCESS
BEGIN
	yIn(2) <= '0';
	WAIT FOR 140000 ps;
	yIn(2) <= '1';
	WAIT FOR 140000 ps;
	yIn(2) <= '0';
	WAIT FOR 170000 ps;
	yIn(2) <= '1';
	WAIT FOR 70000 ps;
	yIn(2) <= '0';
WAIT;
END PROCESS t_prcs_yIn_2;
-- yIn[1]
t_prcs_yIn_1: PROCESS
BEGIN
	yIn(1) <= '1';
	WAIT FOR 120000 ps;
	yIn(1) <= '0';
	WAIT FOR 20000 ps;
	yIn(1) <= '1';
	WAIT FOR 140000 ps;
	yIn(1) <= '0';
	WAIT FOR 170000 ps;
	yIn(1) <= '1';
	WAIT FOR 70000 ps;
	yIn(1) <= '0';
WAIT;
END PROCESS t_prcs_yIn_1;
-- yIn[0]
t_prcs_yIn_0: PROCESS
BEGIN
	yIn(0) <= '0';
	WAIT FOR 140000 ps;
	yIn(0) <= '1';
	WAIT FOR 140000 ps;
	yIn(0) <= '0';
	WAIT FOR 170000 ps;
	yIn(0) <= '1';
	WAIT FOR 70000 ps;
	yIn(0) <= '0';
WAIT;
END PROCESS t_prcs_yIn_0;
END Decoder_arch;
