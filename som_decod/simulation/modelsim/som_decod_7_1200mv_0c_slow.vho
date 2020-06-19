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

-- DATE "06/04/2020 18:38:27"

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

ENTITY 	som_decod IS
    PORT (
	j0 : IN std_logic;
	k0 : IN std_logic;
	ti : IN std_logic;
	j1 : IN std_logic;
	k1 : IN std_logic;
	sai : BUFFER STD.STANDARD.bit_vector(6 DOWNTO 0)
	);
END som_decod;

-- Design Ports Information
-- j0	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k0	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ti	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j1	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k1	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF som_decod IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j0 : std_logic;
SIGNAL ww_k0 : std_logic;
SIGNAL ww_ti : std_logic;
SIGNAL ww_j1 : std_logic;
SIGNAL ww_k1 : std_logic;
SIGNAL ww_sai : std_logic_vector(6 DOWNTO 0);
SIGNAL \j0~input_o\ : std_logic;
SIGNAL \k0~input_o\ : std_logic;
SIGNAL \ti~input_o\ : std_logic;
SIGNAL \j1~input_o\ : std_logic;
SIGNAL \k1~input_o\ : std_logic;
SIGNAL \sai[0]~output_o\ : std_logic;
SIGNAL \sai[1]~output_o\ : std_logic;
SIGNAL \sai[2]~output_o\ : std_logic;
SIGNAL \sai[3]~output_o\ : std_logic;
SIGNAL \sai[4]~output_o\ : std_logic;
SIGNAL \sai[5]~output_o\ : std_logic;
SIGNAL \sai[6]~output_o\ : std_logic;

BEGIN

ww_j0 <= j0;
ww_k0 <= k0;
ww_ti <= ti;
ww_j1 <= j1;
ww_k1 <= k1;
sai <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_sai);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y41_N2
\sai[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sai[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\sai[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sai[1]~output_o\);

-- Location: IOOBUF_X3_Y43_N23
\sai[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sai[2]~output_o\);

-- Location: IOOBUF_X67_Y5_N9
\sai[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sai[3]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\sai[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sai[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\sai[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sai[5]~output_o\);

-- Location: IOOBUF_X0_Y31_N23
\sai[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sai[6]~output_o\);

-- Location: IOIBUF_X18_Y0_N15
\j0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j0,
	o => \j0~input_o\);

-- Location: IOIBUF_X0_Y40_N1
\k0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k0,
	o => \k0~input_o\);

-- Location: IOIBUF_X0_Y39_N1
\ti~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ti,
	o => \ti~input_o\);

-- Location: IOIBUF_X67_Y28_N1
\j1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j1,
	o => \j1~input_o\);

-- Location: IOIBUF_X63_Y43_N1
\k1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k1,
	o => \k1~input_o\);

ww_sai(0) <= \sai[0]~output_o\;

ww_sai(1) <= \sai[1]~output_o\;

ww_sai(2) <= \sai[2]~output_o\;

ww_sai(3) <= \sai[3]~output_o\;

ww_sai(4) <= \sai[4]~output_o\;

ww_sai(5) <= \sai[5]~output_o\;

ww_sai(6) <= \sai[6]~output_o\;
END structure;


