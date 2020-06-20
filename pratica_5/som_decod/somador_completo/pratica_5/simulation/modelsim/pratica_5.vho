-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "06/03/2020 17:23:30"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pratica_5 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	s : OUT std_logic;
	cf : OUT std_logic
	);
END pratica_5;

-- Design Ports Information
-- s	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cf	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pratica_5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_cf : std_logic;
SIGNAL \s~output_o\ : std_logic;
SIGNAL \cf~output_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \cf~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
s <= ww_s;
cf <= ww_cf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y40_N9
\s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s~0_combout\,
	devoe => ww_devoe,
	o => \s~output_o\);

-- Location: IOOBUF_X0_Y40_N2
\cf~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cf~0_combout\,
	devoe => ww_devoe,
	o => \cf~output_o\);

-- Location: IOIBUF_X9_Y43_N29
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X0_Y41_N22
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X1_Y40_N16
\s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~0_combout\ = \b~input_o\ $ (\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~input_o\,
	datac => \a~input_o\,
	combout => \s~0_combout\);

-- Location: LCCOMB_X1_Y40_N18
\cf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cf~0_combout\ = (\b~input_o\ & \a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~input_o\,
	datac => \a~input_o\,
	combout => \cf~0_combout\);

ww_s <= \s~output_o\;

ww_cf <= \cf~output_o\;
END structure;


