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

-- DATE "06/20/2020 16:45:47"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pratica_6 IS
    PORT (
	T : IN std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	Enable : IN std_logic;
	Q1 : OUT std_logic
	);
END pratica_6;

-- Design Ports Information
-- Q1	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pratica_6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \tmp~q\ : std_logic;

BEGIN

ww_T <= T;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Enable <= Enable;
Q1 <= ww_Q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X0_Y41_N8
\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: IOOBUF_X1_Y43_N23
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmp~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOIBUF_X0_Y41_N1
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: IOIBUF_X0_Y41_N22
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X1_Y43_N15
\T~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

-- Location: LCCOMB_X1_Y41_N0
\tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = (\Enable~input_o\ & ((\tmp~q\ $ (\T~input_o\)))) # (!\Enable~input_o\ & (\tmp~q\ & ((!\T~input_o\) # (!\Reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \Reset~input_o\,
	datac => \tmp~q\,
	datad => \T~input_o\,
	combout => \tmp~0_combout\);

-- Location: FF_X1_Y41_N1
tmp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp~q\);

ww_Q1 <= \Q1~output_o\;
END structure;


