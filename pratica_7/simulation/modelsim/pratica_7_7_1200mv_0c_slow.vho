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

-- DATE "06/19/2020 23:21:21"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	pratica_7 IS
    PORT (
	Data : IN STD.STANDARD.integer range 0 TO 15;
	CLK : IN std_logic;
	CLR : IN std_logic;
	SAIDA : OUT STD.STANDARD.integer range 0 TO 15
	);
END pratica_7;

-- Design Ports Information
-- Data[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pratica_7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_SAIDA : std_logic_vector(3 DOWNTO 0);
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;

BEGIN

ww_Data <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(Data, 4);
ww_CLK <= CLK;
ww_CLR <= CLR;
SAIDA <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_SAIDA));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X3_Y43_N23
\SAIDA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\SAIDA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\SAIDA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAIDA[2]~output_o\);

-- Location: IOOBUF_X0_Y38_N23
\SAIDA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAIDA[3]~output_o\);

-- Location: IOIBUF_X0_Y41_N1
\Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(0),
	o => \Data[0]~input_o\);

-- Location: IOIBUF_X0_Y41_N8
\Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(1),
	o => \Data[1]~input_o\);

-- Location: IOIBUF_X67_Y28_N1
\Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(2),
	o => \Data[2]~input_o\);

-- Location: IOIBUF_X63_Y43_N1
\Data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(3),
	o => \Data[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X0_Y39_N8
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;
END structure;


