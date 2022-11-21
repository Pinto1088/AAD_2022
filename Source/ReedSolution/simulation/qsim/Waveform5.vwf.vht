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
-- Generated on "11/21/2022 12:10:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_vec_tst IS
END main_vhd_vec_tst;
ARCHITECTURE main_arch OF main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E1 : STD_LOGIC;
SIGNAL E2 : STD_LOGIC;
SIGNAL m0 : STD_LOGIC;
SIGNAL m1 : STD_LOGIC;
SIGNAL m2 : STD_LOGIC;
SIGNAL m3 : STD_LOGIC;
SIGNAL NoErrors : STD_LOGIC;
SIGNAL y0 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
SIGNAL y2 : STD_LOGIC;
SIGNAL y3 : STD_LOGIC;
SIGNAL y4 : STD_LOGIC;
SIGNAL y5 : STD_LOGIC;
SIGNAL y6 : STD_LOGIC;
SIGNAL y7 : STD_LOGIC;
COMPONENT main
	PORT (
	E1 : OUT STD_LOGIC;
	E2 : OUT STD_LOGIC;
	m0 : OUT STD_LOGIC;
	m1 : OUT STD_LOGIC;
	m2 : OUT STD_LOGIC;
	m3 : OUT STD_LOGIC;
	NoErrors : OUT STD_LOGIC;
	y0 : IN STD_LOGIC;
	y1 : IN STD_LOGIC;
	y2 : IN STD_LOGIC;
	y3 : IN STD_LOGIC;
	y4 : IN STD_LOGIC;
	y5 : IN STD_LOGIC;
	y6 : IN STD_LOGIC;
	y7 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	E1 => E1,
	E2 => E2,
	m0 => m0,
	m1 => m1,
	m2 => m2,
	m3 => m3,
	NoErrors => NoErrors,
	y0 => y0,
	y1 => y1,
	y2 => y2,
	y3 => y3,
	y4 => y4,
	y5 => y5,
	y6 => y6,
	y7 => y7
	);

-- y0
t_prcs_y0: PROCESS
BEGIN
	y0 <= '1';
	WAIT FOR 20000 ps;
	y0 <= '0';
	WAIT FOR 20000 ps;
	y0 <= '1';
	WAIT FOR 20000 ps;
	y0 <= '0';
WAIT;
END PROCESS t_prcs_y0;

-- y1
t_prcs_y1: PROCESS
BEGIN
	y1 <= '1';
	WAIT FOR 20000 ps;
	y1 <= '0';
	WAIT FOR 20000 ps;
	y1 <= '1';
	WAIT FOR 40000 ps;
	y1 <= '0';
WAIT;
END PROCESS t_prcs_y1;

-- y2
t_prcs_y2: PROCESS
BEGIN
	y2 <= '1';
	WAIT FOR 20000 ps;
	y2 <= '0';
	WAIT FOR 20000 ps;
	y2 <= '1';
	WAIT FOR 20000 ps;
	y2 <= '0';
WAIT;
END PROCESS t_prcs_y2;

-- y3
t_prcs_y3: PROCESS
BEGIN
	y3 <= '1';
	WAIT FOR 20000 ps;
	y3 <= '0';
	WAIT FOR 20000 ps;
	y3 <= '1';
	WAIT FOR 40000 ps;
	y3 <= '0';
WAIT;
END PROCESS t_prcs_y3;

-- y4
t_prcs_y4: PROCESS
BEGIN
	y4 <= '1';
	WAIT FOR 20000 ps;
	y4 <= '0';
	WAIT FOR 60000 ps;
	y4 <= '1';
	WAIT FOR 19000 ps;
	y4 <= '0';
WAIT;
END PROCESS t_prcs_y4;

-- y5
t_prcs_y5: PROCESS
BEGIN
	y5 <= '1';
	WAIT FOR 20000 ps;
	y5 <= '0';
	WAIT FOR 40000 ps;
	y5 <= '1';
	WAIT FOR 39000 ps;
	y5 <= '0';
WAIT;
END PROCESS t_prcs_y5;

-- y6
t_prcs_y6: PROCESS
BEGIN
	y6 <= '1';
	WAIT FOR 20000 ps;
	y6 <= '0';
	WAIT FOR 60000 ps;
	y6 <= '1';
WAIT;
END PROCESS t_prcs_y6;

-- y7
t_prcs_y7: PROCESS
BEGIN
	y7 <= '1';
	WAIT FOR 20000 ps;
	y7 <= '0';
	WAIT FOR 40000 ps;
	y7 <= '1';
	WAIT FOR 39000 ps;
	y7 <= '0';
WAIT;
END PROCESS t_prcs_y7;
END main_arch;
