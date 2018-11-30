-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "11/30/2018 00:27:38"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
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

ENTITY 	selecting_machine_test IS
    PORT (
	clk : IN std_logic;
	BTN : IN std_logic_vector(7 DOWNTO 0);
	digit_scan : BUFFER std_logic_vector(6 DOWNTO 0);
	digit_cath : BUFFER std_logic_vector(5 DOWNTO 0);
	row : BUFFER std_logic_vector(7 DOWNTO 0);
	col : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END selecting_machine_test;

-- Design Ports Information
-- BTN[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN[6]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_scan[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_scan[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_scan[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_scan[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_scan[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_scan[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_scan[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_cath[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_cath[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_cath[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_cath[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_cath[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_cath[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[6]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[0]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF selecting_machine_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_BTN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_digit_scan : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_digit_cath : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_col : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BTN[2]~input_o\ : std_logic;
SIGNAL \BTN[3]~input_o\ : std_logic;
SIGNAL \BTN[4]~input_o\ : std_logic;
SIGNAL \BTN[5]~input_o\ : std_logic;
SIGNAL \BTN[6]~input_o\ : std_logic;
SIGNAL \digit_scan[0]~output_o\ : std_logic;
SIGNAL \digit_scan[1]~output_o\ : std_logic;
SIGNAL \digit_scan[2]~output_o\ : std_logic;
SIGNAL \digit_scan[3]~output_o\ : std_logic;
SIGNAL \digit_scan[4]~output_o\ : std_logic;
SIGNAL \digit_scan[5]~output_o\ : std_logic;
SIGNAL \digit_scan[6]~output_o\ : std_logic;
SIGNAL \digit_cath[0]~output_o\ : std_logic;
SIGNAL \digit_cath[1]~output_o\ : std_logic;
SIGNAL \digit_cath[2]~output_o\ : std_logic;
SIGNAL \digit_cath[3]~output_o\ : std_logic;
SIGNAL \digit_cath[4]~output_o\ : std_logic;
SIGNAL \digit_cath[5]~output_o\ : std_logic;
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \row[3]~output_o\ : std_logic;
SIGNAL \row[4]~output_o\ : std_logic;
SIGNAL \row[5]~output_o\ : std_logic;
SIGNAL \row[6]~output_o\ : std_logic;
SIGNAL \row[7]~output_o\ : std_logic;
SIGNAL \col[0]~output_o\ : std_logic;
SIGNAL \col[1]~output_o\ : std_logic;
SIGNAL \col[2]~output_o\ : std_logic;
SIGNAL \col[3]~output_o\ : std_logic;
SIGNAL \col[4]~output_o\ : std_logic;
SIGNAL \col[5]~output_o\ : std_logic;
SIGNAL \col[6]~output_o\ : std_logic;
SIGNAL \col[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \BTN[0]~input_o\ : std_logic;
SIGNAL \u1|key_sec[0]~feeder_combout\ : std_logic;
SIGNAL \BTN[7]~input_o\ : std_logic;
SIGNAL \u1|cnt[0]~18_combout\ : std_logic;
SIGNAL \u1|key_rst[0]~feeder_combout\ : std_logic;
SIGNAL \u1|key_rst_pre[0]~feeder_combout\ : std_logic;
SIGNAL \BTN[1]~input_o\ : std_logic;
SIGNAL \u1|key_rst[1]~feeder_combout\ : std_logic;
SIGNAL \u1|WideOr0~combout\ : std_logic;
SIGNAL \u1|cnt[0]~19\ : std_logic;
SIGNAL \u1|cnt[1]~20_combout\ : std_logic;
SIGNAL \u1|cnt[1]~21\ : std_logic;
SIGNAL \u1|cnt[2]~22_combout\ : std_logic;
SIGNAL \u1|cnt[2]~23\ : std_logic;
SIGNAL \u1|cnt[3]~24_combout\ : std_logic;
SIGNAL \u1|cnt[3]~25\ : std_logic;
SIGNAL \u1|cnt[4]~26_combout\ : std_logic;
SIGNAL \u1|cnt[4]~27\ : std_logic;
SIGNAL \u1|cnt[5]~28_combout\ : std_logic;
SIGNAL \u1|cnt[5]~29\ : std_logic;
SIGNAL \u1|cnt[6]~30_combout\ : std_logic;
SIGNAL \u1|cnt[6]~31\ : std_logic;
SIGNAL \u1|cnt[7]~32_combout\ : std_logic;
SIGNAL \u1|cnt[7]~33\ : std_logic;
SIGNAL \u1|cnt[8]~34_combout\ : std_logic;
SIGNAL \u1|cnt[8]~35\ : std_logic;
SIGNAL \u1|cnt[9]~36_combout\ : std_logic;
SIGNAL \u1|cnt[9]~37\ : std_logic;
SIGNAL \u1|cnt[10]~38_combout\ : std_logic;
SIGNAL \u1|cnt[10]~39\ : std_logic;
SIGNAL \u1|cnt[11]~40_combout\ : std_logic;
SIGNAL \u1|cnt[11]~41\ : std_logic;
SIGNAL \u1|cnt[12]~42_combout\ : std_logic;
SIGNAL \u1|cnt[12]~43\ : std_logic;
SIGNAL \u1|cnt[13]~44_combout\ : std_logic;
SIGNAL \u1|cnt[13]~45\ : std_logic;
SIGNAL \u1|cnt[14]~46_combout\ : std_logic;
SIGNAL \u1|cnt[14]~47\ : std_logic;
SIGNAL \u1|cnt[15]~48_combout\ : std_logic;
SIGNAL \u1|cnt[15]~49\ : std_logic;
SIGNAL \u1|cnt[16]~50_combout\ : std_logic;
SIGNAL \u1|cnt[16]~51\ : std_logic;
SIGNAL \u1|cnt[17]~52_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|Equal0~5_combout\ : std_logic;
SIGNAL \u1|key_sec_pre[0]~feeder_combout\ : std_logic;
SIGNAL \digit_scan[0]~0_combout\ : std_logic;
SIGNAL \digit_scan[0]~reg0_q\ : std_logic;
SIGNAL \u1|key_sec[1]~feeder_combout\ : std_logic;
SIGNAL \u1|key_sec_pre[1]~feeder_combout\ : std_logic;
SIGNAL \digit_scan[1]~1_combout\ : std_logic;
SIGNAL \digit_scan[1]~reg0_q\ : std_logic;
SIGNAL \u1|cnt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|key_sec\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|key_sec_pre\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|key_rst\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|key_rst_pre\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_BTN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_digit_scan[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_digit_scan[0]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_BTN <= BTN;
digit_scan <= ww_digit_scan;
digit_cath <= ww_digit_cath;
row <= ww_row;
col <= ww_col;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_BTN[7]~input_o\ <= NOT \BTN[7]~input_o\;
\ALT_INV_digit_scan[1]~reg0_q\ <= NOT \digit_scan[1]~reg0_q\;
\ALT_INV_digit_scan[0]~reg0_q\ <= NOT \digit_scan[0]~reg0_q\;

-- Location: IOOBUF_X3_Y24_N16
\digit_scan[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_digit_scan[0]~reg0_q\,
	devoe => ww_devoe,
	o => \digit_scan[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\digit_scan[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_digit_scan[1]~reg0_q\,
	devoe => ww_devoe,
	o => \digit_scan[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\digit_scan[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_scan[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\digit_scan[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_scan[3]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\digit_scan[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_scan[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\digit_scan[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_scan[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\digit_scan[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_scan[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\digit_cath[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_cath[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\digit_cath[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_cath[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\digit_cath[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_cath[2]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\digit_cath[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_cath[3]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\digit_cath[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_cath[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\digit_cath[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit_cath[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\row[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N23
\row[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\row[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\row[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\row[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\row[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\row[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[6]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\row[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[7]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\col[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \col[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\col[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \col[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\col[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \col[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\col[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \col[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\col[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \col[4]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\col[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \col[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\col[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \col[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\col[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \col[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y0_N22
\BTN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN(0),
	o => \BTN[0]~input_o\);

-- Location: LCCOMB_X6_Y21_N24
\u1|key_sec[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|key_sec[0]~feeder_combout\ = \BTN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BTN[0]~input_o\,
	combout => \u1|key_sec[0]~feeder_combout\);

-- Location: IOIBUF_X34_Y5_N15
\BTN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN(7),
	o => \BTN[7]~input_o\);

-- Location: LCCOMB_X6_Y22_N14
\u1|cnt[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[0]~18_combout\ = \u1|cnt\(0) $ (VCC)
-- \u1|cnt[0]~19\ = CARRY(\u1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(0),
	datad => VCC,
	combout => \u1|cnt[0]~18_combout\,
	cout => \u1|cnt[0]~19\);

-- Location: LCCOMB_X5_Y21_N18
\u1|key_rst[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|key_rst[0]~feeder_combout\ = \BTN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BTN[0]~input_o\,
	combout => \u1|key_rst[0]~feeder_combout\);

-- Location: FF_X5_Y21_N19
\u1|key_rst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|key_rst[0]~feeder_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|key_rst\(0));

-- Location: LCCOMB_X5_Y21_N10
\u1|key_rst_pre[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|key_rst_pre[0]~feeder_combout\ = \u1|key_rst\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|key_rst\(0),
	combout => \u1|key_rst_pre[0]~feeder_combout\);

-- Location: FF_X5_Y21_N11
\u1|key_rst_pre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|key_rst_pre[0]~feeder_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|key_rst_pre\(0));

-- Location: IOIBUF_X1_Y24_N8
\BTN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN(1),
	o => \BTN[1]~input_o\);

-- Location: LCCOMB_X5_Y21_N8
\u1|key_rst[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|key_rst[1]~feeder_combout\ = \BTN[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BTN[1]~input_o\,
	combout => \u1|key_rst[1]~feeder_combout\);

-- Location: FF_X5_Y21_N9
\u1|key_rst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|key_rst[1]~feeder_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|key_rst\(1));

-- Location: FF_X5_Y21_N17
\u1|key_rst_pre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|key_rst\(1),
	clrn => \ALT_INV_BTN[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|key_rst_pre\(1));

-- Location: LCCOMB_X5_Y21_N16
\u1|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|WideOr0~combout\ = (\u1|key_rst_pre\(0) & (\u1|key_rst\(1) & (!\u1|key_rst_pre\(1)))) # (!\u1|key_rst_pre\(0) & ((\u1|key_rst\(0)) # ((\u1|key_rst\(1) & !\u1|key_rst_pre\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|key_rst_pre\(0),
	datab => \u1|key_rst\(1),
	datac => \u1|key_rst_pre\(1),
	datad => \u1|key_rst\(0),
	combout => \u1|WideOr0~combout\);

-- Location: FF_X6_Y22_N15
\u1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[0]~18_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(0));

-- Location: LCCOMB_X6_Y22_N16
\u1|cnt[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[1]~20_combout\ = (\u1|cnt\(1) & (!\u1|cnt[0]~19\)) # (!\u1|cnt\(1) & ((\u1|cnt[0]~19\) # (GND)))
-- \u1|cnt[1]~21\ = CARRY((!\u1|cnt[0]~19\) # (!\u1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(1),
	datad => VCC,
	cin => \u1|cnt[0]~19\,
	combout => \u1|cnt[1]~20_combout\,
	cout => \u1|cnt[1]~21\);

-- Location: FF_X6_Y22_N17
\u1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[1]~20_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(1));

-- Location: LCCOMB_X6_Y22_N18
\u1|cnt[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[2]~22_combout\ = (\u1|cnt\(2) & (\u1|cnt[1]~21\ $ (GND))) # (!\u1|cnt\(2) & (!\u1|cnt[1]~21\ & VCC))
-- \u1|cnt[2]~23\ = CARRY((\u1|cnt\(2) & !\u1|cnt[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(2),
	datad => VCC,
	cin => \u1|cnt[1]~21\,
	combout => \u1|cnt[2]~22_combout\,
	cout => \u1|cnt[2]~23\);

-- Location: FF_X6_Y22_N19
\u1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[2]~22_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(2));

-- Location: LCCOMB_X6_Y22_N20
\u1|cnt[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[3]~24_combout\ = (\u1|cnt\(3) & (!\u1|cnt[2]~23\)) # (!\u1|cnt\(3) & ((\u1|cnt[2]~23\) # (GND)))
-- \u1|cnt[3]~25\ = CARRY((!\u1|cnt[2]~23\) # (!\u1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(3),
	datad => VCC,
	cin => \u1|cnt[2]~23\,
	combout => \u1|cnt[3]~24_combout\,
	cout => \u1|cnt[3]~25\);

-- Location: FF_X6_Y22_N21
\u1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[3]~24_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(3));

-- Location: LCCOMB_X6_Y22_N22
\u1|cnt[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[4]~26_combout\ = (\u1|cnt\(4) & (\u1|cnt[3]~25\ $ (GND))) # (!\u1|cnt\(4) & (!\u1|cnt[3]~25\ & VCC))
-- \u1|cnt[4]~27\ = CARRY((\u1|cnt\(4) & !\u1|cnt[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(4),
	datad => VCC,
	cin => \u1|cnt[3]~25\,
	combout => \u1|cnt[4]~26_combout\,
	cout => \u1|cnt[4]~27\);

-- Location: FF_X6_Y22_N23
\u1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[4]~26_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(4));

-- Location: LCCOMB_X6_Y22_N24
\u1|cnt[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[5]~28_combout\ = (\u1|cnt\(5) & (!\u1|cnt[4]~27\)) # (!\u1|cnt\(5) & ((\u1|cnt[4]~27\) # (GND)))
-- \u1|cnt[5]~29\ = CARRY((!\u1|cnt[4]~27\) # (!\u1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(5),
	datad => VCC,
	cin => \u1|cnt[4]~27\,
	combout => \u1|cnt[5]~28_combout\,
	cout => \u1|cnt[5]~29\);

-- Location: FF_X6_Y22_N25
\u1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[5]~28_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(5));

-- Location: LCCOMB_X6_Y22_N26
\u1|cnt[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[6]~30_combout\ = (\u1|cnt\(6) & (\u1|cnt[5]~29\ $ (GND))) # (!\u1|cnt\(6) & (!\u1|cnt[5]~29\ & VCC))
-- \u1|cnt[6]~31\ = CARRY((\u1|cnt\(6) & !\u1|cnt[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(6),
	datad => VCC,
	cin => \u1|cnt[5]~29\,
	combout => \u1|cnt[6]~30_combout\,
	cout => \u1|cnt[6]~31\);

-- Location: FF_X6_Y22_N27
\u1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[6]~30_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(6));

-- Location: LCCOMB_X6_Y22_N28
\u1|cnt[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[7]~32_combout\ = (\u1|cnt\(7) & (!\u1|cnt[6]~31\)) # (!\u1|cnt\(7) & ((\u1|cnt[6]~31\) # (GND)))
-- \u1|cnt[7]~33\ = CARRY((!\u1|cnt[6]~31\) # (!\u1|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(7),
	datad => VCC,
	cin => \u1|cnt[6]~31\,
	combout => \u1|cnt[7]~32_combout\,
	cout => \u1|cnt[7]~33\);

-- Location: FF_X6_Y22_N29
\u1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[7]~32_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(7));

-- Location: LCCOMB_X6_Y22_N30
\u1|cnt[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[8]~34_combout\ = (\u1|cnt\(8) & (\u1|cnt[7]~33\ $ (GND))) # (!\u1|cnt\(8) & (!\u1|cnt[7]~33\ & VCC))
-- \u1|cnt[8]~35\ = CARRY((\u1|cnt\(8) & !\u1|cnt[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(8),
	datad => VCC,
	cin => \u1|cnt[7]~33\,
	combout => \u1|cnt[8]~34_combout\,
	cout => \u1|cnt[8]~35\);

-- Location: FF_X6_Y22_N31
\u1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[8]~34_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(8));

-- Location: LCCOMB_X6_Y21_N0
\u1|cnt[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[9]~36_combout\ = (\u1|cnt\(9) & (!\u1|cnt[8]~35\)) # (!\u1|cnt\(9) & ((\u1|cnt[8]~35\) # (GND)))
-- \u1|cnt[9]~37\ = CARRY((!\u1|cnt[8]~35\) # (!\u1|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(9),
	datad => VCC,
	cin => \u1|cnt[8]~35\,
	combout => \u1|cnt[9]~36_combout\,
	cout => \u1|cnt[9]~37\);

-- Location: FF_X6_Y21_N1
\u1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[9]~36_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(9));

-- Location: LCCOMB_X6_Y21_N2
\u1|cnt[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[10]~38_combout\ = (\u1|cnt\(10) & (\u1|cnt[9]~37\ $ (GND))) # (!\u1|cnt\(10) & (!\u1|cnt[9]~37\ & VCC))
-- \u1|cnt[10]~39\ = CARRY((\u1|cnt\(10) & !\u1|cnt[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(10),
	datad => VCC,
	cin => \u1|cnt[9]~37\,
	combout => \u1|cnt[10]~38_combout\,
	cout => \u1|cnt[10]~39\);

-- Location: FF_X6_Y21_N3
\u1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[10]~38_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(10));

-- Location: LCCOMB_X6_Y21_N4
\u1|cnt[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[11]~40_combout\ = (\u1|cnt\(11) & (!\u1|cnt[10]~39\)) # (!\u1|cnt\(11) & ((\u1|cnt[10]~39\) # (GND)))
-- \u1|cnt[11]~41\ = CARRY((!\u1|cnt[10]~39\) # (!\u1|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(11),
	datad => VCC,
	cin => \u1|cnt[10]~39\,
	combout => \u1|cnt[11]~40_combout\,
	cout => \u1|cnt[11]~41\);

-- Location: FF_X6_Y21_N5
\u1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[11]~40_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(11));

-- Location: LCCOMB_X6_Y21_N6
\u1|cnt[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[12]~42_combout\ = (\u1|cnt\(12) & (\u1|cnt[11]~41\ $ (GND))) # (!\u1|cnt\(12) & (!\u1|cnt[11]~41\ & VCC))
-- \u1|cnt[12]~43\ = CARRY((\u1|cnt\(12) & !\u1|cnt[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(12),
	datad => VCC,
	cin => \u1|cnt[11]~41\,
	combout => \u1|cnt[12]~42_combout\,
	cout => \u1|cnt[12]~43\);

-- Location: FF_X6_Y21_N7
\u1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[12]~42_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(12));

-- Location: LCCOMB_X6_Y21_N8
\u1|cnt[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[13]~44_combout\ = (\u1|cnt\(13) & (!\u1|cnt[12]~43\)) # (!\u1|cnt\(13) & ((\u1|cnt[12]~43\) # (GND)))
-- \u1|cnt[13]~45\ = CARRY((!\u1|cnt[12]~43\) # (!\u1|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(13),
	datad => VCC,
	cin => \u1|cnt[12]~43\,
	combout => \u1|cnt[13]~44_combout\,
	cout => \u1|cnt[13]~45\);

-- Location: FF_X6_Y21_N9
\u1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[13]~44_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(13));

-- Location: LCCOMB_X6_Y21_N10
\u1|cnt[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[14]~46_combout\ = (\u1|cnt\(14) & (\u1|cnt[13]~45\ $ (GND))) # (!\u1|cnt\(14) & (!\u1|cnt[13]~45\ & VCC))
-- \u1|cnt[14]~47\ = CARRY((\u1|cnt\(14) & !\u1|cnt[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(14),
	datad => VCC,
	cin => \u1|cnt[13]~45\,
	combout => \u1|cnt[14]~46_combout\,
	cout => \u1|cnt[14]~47\);

-- Location: FF_X6_Y21_N11
\u1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[14]~46_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(14));

-- Location: LCCOMB_X6_Y21_N12
\u1|cnt[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[15]~48_combout\ = (\u1|cnt\(15) & (!\u1|cnt[14]~47\)) # (!\u1|cnt\(15) & ((\u1|cnt[14]~47\) # (GND)))
-- \u1|cnt[15]~49\ = CARRY((!\u1|cnt[14]~47\) # (!\u1|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(15),
	datad => VCC,
	cin => \u1|cnt[14]~47\,
	combout => \u1|cnt[15]~48_combout\,
	cout => \u1|cnt[15]~49\);

-- Location: FF_X6_Y21_N13
\u1|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[15]~48_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(15));

-- Location: LCCOMB_X6_Y21_N14
\u1|cnt[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[16]~50_combout\ = (\u1|cnt\(16) & (\u1|cnt[15]~49\ $ (GND))) # (!\u1|cnt\(16) & (!\u1|cnt[15]~49\ & VCC))
-- \u1|cnt[16]~51\ = CARRY((\u1|cnt\(16) & !\u1|cnt[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(16),
	datad => VCC,
	cin => \u1|cnt[15]~49\,
	combout => \u1|cnt[16]~50_combout\,
	cout => \u1|cnt[16]~51\);

-- Location: FF_X6_Y21_N15
\u1|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[16]~50_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(16));

-- Location: LCCOMB_X6_Y21_N16
\u1|cnt[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[17]~52_combout\ = \u1|cnt[16]~51\ $ (\u1|cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|cnt\(17),
	cin => \u1|cnt[16]~51\,
	combout => \u1|cnt[17]~52_combout\);

-- Location: FF_X6_Y21_N17
\u1|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|cnt[17]~52_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	sclr => \u1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(17));

-- Location: LCCOMB_X6_Y21_N26
\u1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (\u1|cnt\(15) & (\u1|cnt\(13) & (\u1|cnt\(12) & \u1|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(15),
	datab => \u1|cnt\(13),
	datac => \u1|cnt\(12),
	datad => \u1|cnt\(14),
	combout => \u1|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y21_N28
\u1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (\u1|cnt\(8) & (\u1|cnt\(9) & (\u1|cnt\(11) & \u1|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(8),
	datab => \u1|cnt\(9),
	datac => \u1|cnt\(11),
	datad => \u1|cnt\(10),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y22_N10
\u1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|cnt\(4) & (\u1|cnt\(5) & (\u1|cnt\(6) & \u1|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(4),
	datab => \u1|cnt\(5),
	datac => \u1|cnt\(6),
	datad => \u1|cnt\(7),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y22_N8
\u1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (\u1|cnt\(1) & (\u1|cnt\(3) & (\u1|cnt\(0) & \u1|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(1),
	datab => \u1|cnt\(3),
	datac => \u1|cnt\(0),
	datad => \u1|cnt\(2),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y21_N20
\u1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = (\u1|Equal0~3_combout\ & (\u1|Equal0~2_combout\ & (\u1|Equal0~1_combout\ & \u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|Equal0~4_combout\);

-- Location: LCCOMB_X6_Y21_N18
\u1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~5_combout\ = (\u1|cnt\(17) & (\u1|cnt\(16) & \u1|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|cnt\(17),
	datac => \u1|cnt\(16),
	datad => \u1|Equal0~4_combout\,
	combout => \u1|Equal0~5_combout\);

-- Location: FF_X6_Y21_N25
\u1|key_sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|key_sec[0]~feeder_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	ena => \u1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|key_sec\(0));

-- Location: LCCOMB_X5_Y21_N2
\u1|key_sec_pre[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|key_sec_pre[0]~feeder_combout\ = \u1|key_sec\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|key_sec\(0),
	combout => \u1|key_sec_pre[0]~feeder_combout\);

-- Location: FF_X5_Y21_N3
\u1|key_sec_pre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|key_sec_pre[0]~feeder_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|key_sec_pre\(0));

-- Location: LCCOMB_X5_Y21_N20
\digit_scan[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit_scan[0]~0_combout\ = \digit_scan[0]~reg0_q\ $ (((!\u1|key_sec_pre\(0) & \u1|key_sec\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|key_sec_pre\(0),
	datac => \digit_scan[0]~reg0_q\,
	datad => \u1|key_sec\(0),
	combout => \digit_scan[0]~0_combout\);

-- Location: FF_X5_Y21_N21
\digit_scan[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit_scan[0]~0_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_scan[0]~reg0_q\);

-- Location: LCCOMB_X6_Y21_N30
\u1|key_sec[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|key_sec[1]~feeder_combout\ = \BTN[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BTN[1]~input_o\,
	combout => \u1|key_sec[1]~feeder_combout\);

-- Location: FF_X6_Y21_N31
\u1|key_sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|key_sec[1]~feeder_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	ena => \u1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|key_sec\(1));

-- Location: LCCOMB_X5_Y21_N24
\u1|key_sec_pre[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|key_sec_pre[1]~feeder_combout\ = \u1|key_sec\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|key_sec\(1),
	combout => \u1|key_sec_pre[1]~feeder_combout\);

-- Location: FF_X5_Y21_N25
\u1|key_sec_pre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|key_sec_pre[1]~feeder_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|key_sec_pre\(1));

-- Location: LCCOMB_X6_Y21_N22
\digit_scan[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit_scan[1]~1_combout\ = \digit_scan[1]~reg0_q\ $ (((\u1|key_sec\(1) & !\u1|key_sec_pre\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|key_sec\(1),
	datab => \u1|key_sec_pre\(1),
	datac => \digit_scan[1]~reg0_q\,
	combout => \digit_scan[1]~1_combout\);

-- Location: FF_X6_Y21_N23
\digit_scan[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit_scan[1]~1_combout\,
	clrn => \ALT_INV_BTN[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_scan[1]~reg0_q\);

-- Location: IOIBUF_X34_Y12_N8
\BTN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN(2),
	o => \BTN[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\BTN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN(3),
	o => \BTN[3]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\BTN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN(4),
	o => \BTN[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\BTN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN(5),
	o => \BTN[5]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\BTN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN(6),
	o => \BTN[6]~input_o\);

ww_digit_scan(0) <= \digit_scan[0]~output_o\;

ww_digit_scan(1) <= \digit_scan[1]~output_o\;

ww_digit_scan(2) <= \digit_scan[2]~output_o\;

ww_digit_scan(3) <= \digit_scan[3]~output_o\;

ww_digit_scan(4) <= \digit_scan[4]~output_o\;

ww_digit_scan(5) <= \digit_scan[5]~output_o\;

ww_digit_scan(6) <= \digit_scan[6]~output_o\;

ww_digit_cath(0) <= \digit_cath[0]~output_o\;

ww_digit_cath(1) <= \digit_cath[1]~output_o\;

ww_digit_cath(2) <= \digit_cath[2]~output_o\;

ww_digit_cath(3) <= \digit_cath[3]~output_o\;

ww_digit_cath(4) <= \digit_cath[4]~output_o\;

ww_digit_cath(5) <= \digit_cath[5]~output_o\;

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_row(3) <= \row[3]~output_o\;

ww_row(4) <= \row[4]~output_o\;

ww_row(5) <= \row[5]~output_o\;

ww_row(6) <= \row[6]~output_o\;

ww_row(7) <= \row[7]~output_o\;

ww_col(0) <= \col[0]~output_o\;

ww_col(1) <= \col[1]~output_o\;

ww_col(2) <= \col[2]~output_o\;

ww_col(3) <= \col[3]~output_o\;

ww_col(4) <= \col[4]~output_o\;

ww_col(5) <= \col[5]~output_o\;

ww_col(6) <= \col[6]~output_o\;

ww_col(7) <= \col[7]~output_o\;
END structure;


