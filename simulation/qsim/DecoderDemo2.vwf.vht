-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- Generated on "11/03/2024 13:53:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DecoderDemo2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DecoderDemo2_vhd_vec_tst IS
END DecoderDemo2_vhd_vec_tst;
ARCHITECTURE DecoderDemo2_arch OF DecoderDemo2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E0_L : STD_LOGIC;
SIGNAL E1 : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT DecoderDemo2
	PORT (
	E0_L : IN STD_LOGIC;
	E1 : IN STD_LOGIC;
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DecoderDemo2
	PORT MAP (
-- list connections between master ports and signals
	E0_L => E0_L,
	E1 => E1,
	X => X,
	Y => Y
	);

-- E0_L
t_prcs_E0_L: PROCESS
BEGIN
	E0_L <= '0';
WAIT;
END PROCESS t_prcs_E0_L;

-- E1
t_prcs_E1: PROCESS
BEGIN
	E1 <= '1';
WAIT;
END PROCESS t_prcs_E1;
-- X[3]
t_prcs_X_3: PROCESS
BEGIN
LOOP
	X(3) <= '0';
	WAIT FOR 80000 ps;
	X(3) <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_3;
-- X[2]
t_prcs_X_2: PROCESS
BEGIN
LOOP
	X(2) <= '0';
	WAIT FOR 40000 ps;
	X(2) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_2;
-- X[1]
t_prcs_X_1: PROCESS
BEGIN
LOOP
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_1;
-- X[0]
t_prcs_X_0: PROCESS
BEGIN
LOOP
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_0;
END DecoderDemo2_arch;
