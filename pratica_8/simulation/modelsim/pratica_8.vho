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

-- DATE "06/26/2020 19:20:00"

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

ENTITY 	pratica_8 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic;
	C_O : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0)
	);
END pratica_8;

-- Design Ports Information
-- A[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_O	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pratica_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_C_O : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \C_O~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \carry[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \carry[2]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \carry~3_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \carry[1]~1_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
C_O <= ww_C_O;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y43_N23
\C_O~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carry~3_combout\,
	devoe => ww_devoe,
	o => \C_O~output_o\);

-- Location: IOOBUF_X56_Y43_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y41_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X1_Y43_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y41_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOIBUF_X3_Y43_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X5_Y43_N29
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X4_Y42_N0
\carry[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[1]~0_combout\ = (\B[1]~input_o\ & \C~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \C~input_o\,
	combout => \carry[1]~0_combout\);

-- Location: IOIBUF_X5_Y43_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X5_Y43_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X4_Y42_N12
\carry[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[2]~2_combout\ = (\A[2]~input_o\ & ((\carry[1]~1_combout\) # ((\carry[1]~0_combout\) # (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & ((\carry[1]~1_combout\) # (\carry[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[1]~1_combout\,
	datab => \carry[1]~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \carry[2]~2_combout\);

-- Location: IOIBUF_X3_Y43_N29
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X5_Y43_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X4_Y42_N6
\carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~3_combout\ = (\carry[2]~2_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (!\carry[2]~2_combout\ & (\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[2]~2_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \carry~3_combout\);

-- Location: IOIBUF_X5_Y43_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X4_Y42_N24
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (\C~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \C~input_o\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X4_Y42_N26
\carry[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[1]~1_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \C~input_o\,
	combout => \carry[1]~1_combout\);

-- Location: LCCOMB_X4_Y42_N2
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (((\carry[1]~1_combout\) # (\carry[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[1]~1_combout\,
	datab => \carry[1]~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X4_Y42_N20
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \carry[2]~2_combout\ $ (\A[3]~input_o\ $ (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[2]~2_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X0_Y20_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X67_Y9_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

ww_C_O <= \C_O~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;
END structure;


