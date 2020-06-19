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

-- DATE "06/03/2020 17:38:39"

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

ENTITY 	somador_completo IS
    PORT (
	a0 : IN std_logic;
	b0 : IN std_logic;
	ci : IN std_logic;
	s1 : OUT std_logic;
	c1 : OUT std_logic
	);
END somador_completo;

-- Design Ports Information
-- s1	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ci	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_ci : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \ci~input_o\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \G2|s~0_combout\ : std_logic;
SIGNAL \c1~0_combout\ : std_logic;

BEGIN

ww_a0 <= a0;
ww_b0 <= b0;
ww_ci <= ci;
s1 <= ww_s1;
c1 <= ww_c1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y17_N23
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|s~0_combout\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\c1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c1~0_combout\,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\ci~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ci,
	o => \ci~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\b0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\a0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: LCCOMB_X1_Y16_N0
\G2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2|s~0_combout\ = \ci~input_o\ $ (\b0~input_o\ $ (\a0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ci~input_o\,
	datab => \b0~input_o\,
	datad => \a0~input_o\,
	combout => \G2|s~0_combout\);

-- Location: LCCOMB_X1_Y16_N18
\c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~0_combout\ = (\ci~input_o\ & ((\b0~input_o\) # (\a0~input_o\))) # (!\ci~input_o\ & (\b0~input_o\ & \a0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ci~input_o\,
	datab => \b0~input_o\,
	datad => \a0~input_o\,
	combout => \c1~0_combout\);

ww_s1 <= \s1~output_o\;

ww_c1 <= \c1~output_o\;
END structure;


