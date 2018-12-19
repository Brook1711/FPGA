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

-- DATE "12/18/2018 20:03:16"

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

ENTITY 	JK_flip_flop_test IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	J : IN std_logic;
	K : IN std_logic;
	SD : IN std_logic;
	RD : IN std_logic;
	Q : OUT std_logic;
	\Q_\ : OUT std_logic
	);
END JK_flip_flop_test;

-- Design Ports Information
-- rst	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF JK_flip_flop_test IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_SD : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \ww_Q_\ : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Q_~output_o\ : std_logic;
SIGNAL \SD~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_clk_6|Add0~0_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~3_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~1\ : std_logic;
SIGNAL \u_clk_6|Add0~2_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~3\ : std_logic;
SIGNAL \u_clk_6|Add0~4_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~5\ : std_logic;
SIGNAL \u_clk_6|Add0~6_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~7\ : std_logic;
SIGNAL \u_clk_6|Add0~8_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~9\ : std_logic;
SIGNAL \u_clk_6|Add0~10_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~2_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~11\ : std_logic;
SIGNAL \u_clk_6|Add0~12_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~13\ : std_logic;
SIGNAL \u_clk_6|Add0~14_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~15\ : std_logic;
SIGNAL \u_clk_6|Add0~16_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~17\ : std_logic;
SIGNAL \u_clk_6|Add0~18_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~19\ : std_logic;
SIGNAL \u_clk_6|Add0~20_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~1_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~21\ : std_logic;
SIGNAL \u_clk_6|Add0~22_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~0_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~23\ : std_logic;
SIGNAL \u_clk_6|Add0~24_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~4_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~25\ : std_logic;
SIGNAL \u_clk_6|Add0~26_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~5_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~27\ : std_logic;
SIGNAL \u_clk_6|Add0~28_combout\ : std_logic;
SIGNAL \u_clk_6|cnt[14]~feeder_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~29\ : std_logic;
SIGNAL \u_clk_6|Add0~30_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~6_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~31\ : std_logic;
SIGNAL \u_clk_6|Add0~32_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~33\ : std_logic;
SIGNAL \u_clk_6|Add0~34_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~7_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~35\ : std_logic;
SIGNAL \u_clk_6|Add0~36_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~8_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~37\ : std_logic;
SIGNAL \u_clk_6|Add0~38_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~9_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~39\ : std_logic;
SIGNAL \u_clk_6|Add0~40_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~10_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~41\ : std_logic;
SIGNAL \u_clk_6|Add0~42_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~11_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~43\ : std_logic;
SIGNAL \u_clk_6|Add0~44_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~45\ : std_logic;
SIGNAL \u_clk_6|Add0~46_combout\ : std_logic;
SIGNAL \u_clk_6|cnt~12_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~6_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~5_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~47\ : std_logic;
SIGNAL \u_clk_6|Add0~48_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~49\ : std_logic;
SIGNAL \u_clk_6|Add0~50_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~51\ : std_logic;
SIGNAL \u_clk_6|Add0~52_combout\ : std_logic;
SIGNAL \u_clk_6|Add0~53\ : std_logic;
SIGNAL \u_clk_6|Add0~54_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~7_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~3_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~1_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~0_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~2_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~4_combout\ : std_logic;
SIGNAL \u_clk_6|Equal0~8_combout\ : std_logic;
SIGNAL \u_clk_6|clkout~0_combout\ : std_logic;
SIGNAL \u_clk_6|clkout~feeder_combout\ : std_logic;
SIGNAL \u_clk_6|clkout~q\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \u_JK|u_JK_part1|Q~0_combout\ : std_logic;
SIGNAL \u_JK|u_JK_part1|Q~q\ : std_logic;
SIGNAL \RD~input_o\ : std_logic;
SIGNAL \u_JK|Q~0_combout\ : std_logic;
SIGNAL \u_JK|Q~1_combout\ : std_logic;
SIGNAL \u_JK|Q_~0_combout\ : std_logic;
SIGNAL \u_clk_6|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_clk_6|ALT_INV_clkout~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_J <= J;
ww_K <= K;
ww_SD <= SD;
ww_RD <= RD;
Q <= ww_Q;
\Q_\ <= \ww_Q_\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\u_clk_6|ALT_INV_clkout~q\ <= NOT \u_clk_6|clkout~q\;

-- Location: IOOBUF_X1_Y0_N9
\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_JK|Q~0_combout\,
	oe => \u_JK|Q~1_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\Q_~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_JK|Q_~0_combout\,
	oe => \u_JK|Q~1_combout\,
	devoe => ww_devoe,
	o => \Q_~output_o\);

-- Location: IOIBUF_X34_Y18_N1
\SD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD,
	o => \SD~input_o\);

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

-- Location: LCCOMB_X19_Y23_N4
\u_clk_6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~0_combout\ = \u_clk_6|cnt\(0) $ (VCC)
-- \u_clk_6|Add0~1\ = CARRY(\u_clk_6|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(0),
	datad => VCC,
	combout => \u_clk_6|Add0~0_combout\,
	cout => \u_clk_6|Add0~1\);

-- Location: LCCOMB_X18_Y23_N6
\u_clk_6|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~3_combout\ = (\u_clk_6|Add0~0_combout\ & !\u_clk_6|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|Add0~0_combout\,
	datac => \u_clk_6|Equal0~8_combout\,
	combout => \u_clk_6|cnt~3_combout\);

-- Location: FF_X18_Y23_N7
\u_clk_6|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(0));

-- Location: LCCOMB_X19_Y23_N6
\u_clk_6|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~2_combout\ = (\u_clk_6|cnt\(1) & (!\u_clk_6|Add0~1\)) # (!\u_clk_6|cnt\(1) & ((\u_clk_6|Add0~1\) # (GND)))
-- \u_clk_6|Add0~3\ = CARRY((!\u_clk_6|Add0~1\) # (!\u_clk_6|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(1),
	datad => VCC,
	cin => \u_clk_6|Add0~1\,
	combout => \u_clk_6|Add0~2_combout\,
	cout => \u_clk_6|Add0~3\);

-- Location: FF_X19_Y23_N7
\u_clk_6|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(1));

-- Location: LCCOMB_X19_Y23_N8
\u_clk_6|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~4_combout\ = (\u_clk_6|cnt\(2) & (\u_clk_6|Add0~3\ $ (GND))) # (!\u_clk_6|cnt\(2) & (!\u_clk_6|Add0~3\ & VCC))
-- \u_clk_6|Add0~5\ = CARRY((\u_clk_6|cnt\(2) & !\u_clk_6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(2),
	datad => VCC,
	cin => \u_clk_6|Add0~3\,
	combout => \u_clk_6|Add0~4_combout\,
	cout => \u_clk_6|Add0~5\);

-- Location: FF_X19_Y23_N9
\u_clk_6|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(2));

-- Location: LCCOMB_X19_Y23_N10
\u_clk_6|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~6_combout\ = (\u_clk_6|cnt\(3) & (!\u_clk_6|Add0~5\)) # (!\u_clk_6|cnt\(3) & ((\u_clk_6|Add0~5\) # (GND)))
-- \u_clk_6|Add0~7\ = CARRY((!\u_clk_6|Add0~5\) # (!\u_clk_6|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(3),
	datad => VCC,
	cin => \u_clk_6|Add0~5\,
	combout => \u_clk_6|Add0~6_combout\,
	cout => \u_clk_6|Add0~7\);

-- Location: FF_X19_Y23_N11
\u_clk_6|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(3));

-- Location: LCCOMB_X19_Y23_N12
\u_clk_6|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~8_combout\ = (\u_clk_6|cnt\(4) & (\u_clk_6|Add0~7\ $ (GND))) # (!\u_clk_6|cnt\(4) & (!\u_clk_6|Add0~7\ & VCC))
-- \u_clk_6|Add0~9\ = CARRY((\u_clk_6|cnt\(4) & !\u_clk_6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(4),
	datad => VCC,
	cin => \u_clk_6|Add0~7\,
	combout => \u_clk_6|Add0~8_combout\,
	cout => \u_clk_6|Add0~9\);

-- Location: FF_X19_Y23_N13
\u_clk_6|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(4));

-- Location: LCCOMB_X19_Y23_N14
\u_clk_6|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~10_combout\ = (\u_clk_6|cnt\(5) & (!\u_clk_6|Add0~9\)) # (!\u_clk_6|cnt\(5) & ((\u_clk_6|Add0~9\) # (GND)))
-- \u_clk_6|Add0~11\ = CARRY((!\u_clk_6|Add0~9\) # (!\u_clk_6|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(5),
	datad => VCC,
	cin => \u_clk_6|Add0~9\,
	combout => \u_clk_6|Add0~10_combout\,
	cout => \u_clk_6|Add0~11\);

-- Location: LCCOMB_X19_Y23_N2
\u_clk_6|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~2_combout\ = (\u_clk_6|Add0~10_combout\ & !\u_clk_6|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_6|Add0~10_combout\,
	datad => \u_clk_6|Equal0~8_combout\,
	combout => \u_clk_6|cnt~2_combout\);

-- Location: FF_X19_Y23_N3
\u_clk_6|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(5));

-- Location: LCCOMB_X19_Y23_N16
\u_clk_6|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~12_combout\ = (\u_clk_6|cnt\(6) & (\u_clk_6|Add0~11\ $ (GND))) # (!\u_clk_6|cnt\(6) & (!\u_clk_6|Add0~11\ & VCC))
-- \u_clk_6|Add0~13\ = CARRY((\u_clk_6|cnt\(6) & !\u_clk_6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(6),
	datad => VCC,
	cin => \u_clk_6|Add0~11\,
	combout => \u_clk_6|Add0~12_combout\,
	cout => \u_clk_6|Add0~13\);

-- Location: FF_X19_Y23_N17
\u_clk_6|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(6));

-- Location: LCCOMB_X19_Y23_N18
\u_clk_6|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~14_combout\ = (\u_clk_6|cnt\(7) & (!\u_clk_6|Add0~13\)) # (!\u_clk_6|cnt\(7) & ((\u_clk_6|Add0~13\) # (GND)))
-- \u_clk_6|Add0~15\ = CARRY((!\u_clk_6|Add0~13\) # (!\u_clk_6|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(7),
	datad => VCC,
	cin => \u_clk_6|Add0~13\,
	combout => \u_clk_6|Add0~14_combout\,
	cout => \u_clk_6|Add0~15\);

-- Location: FF_X19_Y23_N19
\u_clk_6|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(7));

-- Location: LCCOMB_X19_Y23_N20
\u_clk_6|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~16_combout\ = (\u_clk_6|cnt\(8) & (\u_clk_6|Add0~15\ $ (GND))) # (!\u_clk_6|cnt\(8) & (!\u_clk_6|Add0~15\ & VCC))
-- \u_clk_6|Add0~17\ = CARRY((\u_clk_6|cnt\(8) & !\u_clk_6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(8),
	datad => VCC,
	cin => \u_clk_6|Add0~15\,
	combout => \u_clk_6|Add0~16_combout\,
	cout => \u_clk_6|Add0~17\);

-- Location: FF_X19_Y23_N21
\u_clk_6|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(8));

-- Location: LCCOMB_X19_Y23_N22
\u_clk_6|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~18_combout\ = (\u_clk_6|cnt\(9) & (!\u_clk_6|Add0~17\)) # (!\u_clk_6|cnt\(9) & ((\u_clk_6|Add0~17\) # (GND)))
-- \u_clk_6|Add0~19\ = CARRY((!\u_clk_6|Add0~17\) # (!\u_clk_6|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(9),
	datad => VCC,
	cin => \u_clk_6|Add0~17\,
	combout => \u_clk_6|Add0~18_combout\,
	cout => \u_clk_6|Add0~19\);

-- Location: FF_X19_Y23_N23
\u_clk_6|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(9));

-- Location: LCCOMB_X19_Y23_N24
\u_clk_6|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~20_combout\ = (\u_clk_6|cnt\(10) & (\u_clk_6|Add0~19\ $ (GND))) # (!\u_clk_6|cnt\(10) & (!\u_clk_6|Add0~19\ & VCC))
-- \u_clk_6|Add0~21\ = CARRY((\u_clk_6|cnt\(10) & !\u_clk_6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(10),
	datad => VCC,
	cin => \u_clk_6|Add0~19\,
	combout => \u_clk_6|Add0~20_combout\,
	cout => \u_clk_6|Add0~21\);

-- Location: LCCOMB_X18_Y23_N8
\u_clk_6|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~1_combout\ = (!\u_clk_6|Equal0~8_combout\ & \u_clk_6|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_6|Equal0~8_combout\,
	datad => \u_clk_6|Add0~20_combout\,
	combout => \u_clk_6|cnt~1_combout\);

-- Location: FF_X18_Y23_N9
\u_clk_6|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(10));

-- Location: LCCOMB_X19_Y23_N26
\u_clk_6|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~22_combout\ = (\u_clk_6|cnt\(11) & (!\u_clk_6|Add0~21\)) # (!\u_clk_6|cnt\(11) & ((\u_clk_6|Add0~21\) # (GND)))
-- \u_clk_6|Add0~23\ = CARRY((!\u_clk_6|Add0~21\) # (!\u_clk_6|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(11),
	datad => VCC,
	cin => \u_clk_6|Add0~21\,
	combout => \u_clk_6|Add0~22_combout\,
	cout => \u_clk_6|Add0~23\);

-- Location: LCCOMB_X19_Y23_N0
\u_clk_6|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~0_combout\ = (\u_clk_6|Add0~22_combout\ & !\u_clk_6|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_6|Add0~22_combout\,
	datad => \u_clk_6|Equal0~8_combout\,
	combout => \u_clk_6|cnt~0_combout\);

-- Location: FF_X19_Y23_N1
\u_clk_6|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(11));

-- Location: LCCOMB_X19_Y23_N28
\u_clk_6|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~24_combout\ = (\u_clk_6|cnt\(12) & (\u_clk_6|Add0~23\ $ (GND))) # (!\u_clk_6|cnt\(12) & (!\u_clk_6|Add0~23\ & VCC))
-- \u_clk_6|Add0~25\ = CARRY((\u_clk_6|cnt\(12) & !\u_clk_6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(12),
	datad => VCC,
	cin => \u_clk_6|Add0~23\,
	combout => \u_clk_6|Add0~24_combout\,
	cout => \u_clk_6|Add0~25\);

-- Location: LCCOMB_X18_Y23_N14
\u_clk_6|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~4_combout\ = (!\u_clk_6|Equal0~8_combout\ & \u_clk_6|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_6|Equal0~8_combout\,
	datad => \u_clk_6|Add0~24_combout\,
	combout => \u_clk_6|cnt~4_combout\);

-- Location: FF_X18_Y23_N15
\u_clk_6|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(12));

-- Location: LCCOMB_X19_Y23_N30
\u_clk_6|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~26_combout\ = (\u_clk_6|cnt\(13) & (!\u_clk_6|Add0~25\)) # (!\u_clk_6|cnt\(13) & ((\u_clk_6|Add0~25\) # (GND)))
-- \u_clk_6|Add0~27\ = CARRY((!\u_clk_6|Add0~25\) # (!\u_clk_6|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(13),
	datad => VCC,
	cin => \u_clk_6|Add0~25\,
	combout => \u_clk_6|Add0~26_combout\,
	cout => \u_clk_6|Add0~27\);

-- Location: LCCOMB_X18_Y23_N12
\u_clk_6|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~5_combout\ = (\u_clk_6|Add0~26_combout\ & !\u_clk_6|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|Add0~26_combout\,
	datac => \u_clk_6|Equal0~8_combout\,
	combout => \u_clk_6|cnt~5_combout\);

-- Location: FF_X18_Y23_N13
\u_clk_6|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(13));

-- Location: LCCOMB_X19_Y22_N0
\u_clk_6|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~28_combout\ = (\u_clk_6|cnt\(14) & (\u_clk_6|Add0~27\ $ (GND))) # (!\u_clk_6|cnt\(14) & (!\u_clk_6|Add0~27\ & VCC))
-- \u_clk_6|Add0~29\ = CARRY((\u_clk_6|cnt\(14) & !\u_clk_6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(14),
	datad => VCC,
	cin => \u_clk_6|Add0~27\,
	combout => \u_clk_6|Add0~28_combout\,
	cout => \u_clk_6|Add0~29\);

-- Location: LCCOMB_X18_Y23_N28
\u_clk_6|cnt[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt[14]~feeder_combout\ = \u_clk_6|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_clk_6|Add0~28_combout\,
	combout => \u_clk_6|cnt[14]~feeder_combout\);

-- Location: FF_X18_Y23_N29
\u_clk_6|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(14));

-- Location: LCCOMB_X19_Y22_N2
\u_clk_6|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~30_combout\ = (\u_clk_6|cnt\(15) & (!\u_clk_6|Add0~29\)) # (!\u_clk_6|cnt\(15) & ((\u_clk_6|Add0~29\) # (GND)))
-- \u_clk_6|Add0~31\ = CARRY((!\u_clk_6|Add0~29\) # (!\u_clk_6|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(15),
	datad => VCC,
	cin => \u_clk_6|Add0~29\,
	combout => \u_clk_6|Add0~30_combout\,
	cout => \u_clk_6|Add0~31\);

-- Location: LCCOMB_X18_Y23_N26
\u_clk_6|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~6_combout\ = (!\u_clk_6|Equal0~8_combout\ & \u_clk_6|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|Equal0~8_combout\,
	datac => \u_clk_6|Add0~30_combout\,
	combout => \u_clk_6|cnt~6_combout\);

-- Location: FF_X18_Y23_N27
\u_clk_6|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(15));

-- Location: LCCOMB_X19_Y22_N4
\u_clk_6|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~32_combout\ = (\u_clk_6|cnt\(16) & (\u_clk_6|Add0~31\ $ (GND))) # (!\u_clk_6|cnt\(16) & (!\u_clk_6|Add0~31\ & VCC))
-- \u_clk_6|Add0~33\ = CARRY((\u_clk_6|cnt\(16) & !\u_clk_6|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(16),
	datad => VCC,
	cin => \u_clk_6|Add0~31\,
	combout => \u_clk_6|Add0~32_combout\,
	cout => \u_clk_6|Add0~33\);

-- Location: FF_X19_Y22_N5
\u_clk_6|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(16));

-- Location: LCCOMB_X19_Y22_N6
\u_clk_6|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~34_combout\ = (\u_clk_6|cnt\(17) & (!\u_clk_6|Add0~33\)) # (!\u_clk_6|cnt\(17) & ((\u_clk_6|Add0~33\) # (GND)))
-- \u_clk_6|Add0~35\ = CARRY((!\u_clk_6|Add0~33\) # (!\u_clk_6|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(17),
	datad => VCC,
	cin => \u_clk_6|Add0~33\,
	combout => \u_clk_6|Add0~34_combout\,
	cout => \u_clk_6|Add0~35\);

-- Location: LCCOMB_X18_Y22_N14
\u_clk_6|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~7_combout\ = (!\u_clk_6|Equal0~8_combout\ & \u_clk_6|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|Equal0~8_combout\,
	datad => \u_clk_6|Add0~34_combout\,
	combout => \u_clk_6|cnt~7_combout\);

-- Location: FF_X18_Y22_N15
\u_clk_6|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(17));

-- Location: LCCOMB_X19_Y22_N8
\u_clk_6|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~36_combout\ = (\u_clk_6|cnt\(18) & (\u_clk_6|Add0~35\ $ (GND))) # (!\u_clk_6|cnt\(18) & (!\u_clk_6|Add0~35\ & VCC))
-- \u_clk_6|Add0~37\ = CARRY((\u_clk_6|cnt\(18) & !\u_clk_6|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(18),
	datad => VCC,
	cin => \u_clk_6|Add0~35\,
	combout => \u_clk_6|Add0~36_combout\,
	cout => \u_clk_6|Add0~37\);

-- Location: LCCOMB_X18_Y22_N16
\u_clk_6|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~8_combout\ = (\u_clk_6|Add0~36_combout\ & !\u_clk_6|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_6|Add0~36_combout\,
	datad => \u_clk_6|Equal0~8_combout\,
	combout => \u_clk_6|cnt~8_combout\);

-- Location: FF_X18_Y22_N17
\u_clk_6|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(18));

-- Location: LCCOMB_X19_Y22_N10
\u_clk_6|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~38_combout\ = (\u_clk_6|cnt\(19) & (!\u_clk_6|Add0~37\)) # (!\u_clk_6|cnt\(19) & ((\u_clk_6|Add0~37\) # (GND)))
-- \u_clk_6|Add0~39\ = CARRY((!\u_clk_6|Add0~37\) # (!\u_clk_6|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(19),
	datad => VCC,
	cin => \u_clk_6|Add0~37\,
	combout => \u_clk_6|Add0~38_combout\,
	cout => \u_clk_6|Add0~39\);

-- Location: LCCOMB_X19_Y22_N28
\u_clk_6|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~9_combout\ = (!\u_clk_6|Equal0~8_combout\ & \u_clk_6|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|Equal0~8_combout\,
	datad => \u_clk_6|Add0~38_combout\,
	combout => \u_clk_6|cnt~9_combout\);

-- Location: FF_X19_Y22_N29
\u_clk_6|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(19));

-- Location: LCCOMB_X19_Y22_N12
\u_clk_6|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~40_combout\ = (\u_clk_6|cnt\(20) & (\u_clk_6|Add0~39\ $ (GND))) # (!\u_clk_6|cnt\(20) & (!\u_clk_6|Add0~39\ & VCC))
-- \u_clk_6|Add0~41\ = CARRY((\u_clk_6|cnt\(20) & !\u_clk_6|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(20),
	datad => VCC,
	cin => \u_clk_6|Add0~39\,
	combout => \u_clk_6|Add0~40_combout\,
	cout => \u_clk_6|Add0~41\);

-- Location: LCCOMB_X19_Y22_N30
\u_clk_6|cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~10_combout\ = (!\u_clk_6|Equal0~8_combout\ & \u_clk_6|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|Equal0~8_combout\,
	datad => \u_clk_6|Add0~40_combout\,
	combout => \u_clk_6|cnt~10_combout\);

-- Location: FF_X19_Y22_N31
\u_clk_6|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(20));

-- Location: LCCOMB_X19_Y22_N14
\u_clk_6|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~42_combout\ = (\u_clk_6|cnt\(21) & (!\u_clk_6|Add0~41\)) # (!\u_clk_6|cnt\(21) & ((\u_clk_6|Add0~41\) # (GND)))
-- \u_clk_6|Add0~43\ = CARRY((!\u_clk_6|Add0~41\) # (!\u_clk_6|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(21),
	datad => VCC,
	cin => \u_clk_6|Add0~41\,
	combout => \u_clk_6|Add0~42_combout\,
	cout => \u_clk_6|Add0~43\);

-- Location: LCCOMB_X18_Y22_N6
\u_clk_6|cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~11_combout\ = (\u_clk_6|Add0~42_combout\ & !\u_clk_6|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_6|Add0~42_combout\,
	datad => \u_clk_6|Equal0~8_combout\,
	combout => \u_clk_6|cnt~11_combout\);

-- Location: FF_X18_Y22_N7
\u_clk_6|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(21));

-- Location: LCCOMB_X19_Y22_N16
\u_clk_6|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~44_combout\ = (\u_clk_6|cnt\(22) & (\u_clk_6|Add0~43\ $ (GND))) # (!\u_clk_6|cnt\(22) & (!\u_clk_6|Add0~43\ & VCC))
-- \u_clk_6|Add0~45\ = CARRY((\u_clk_6|cnt\(22) & !\u_clk_6|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(22),
	datad => VCC,
	cin => \u_clk_6|Add0~43\,
	combout => \u_clk_6|Add0~44_combout\,
	cout => \u_clk_6|Add0~45\);

-- Location: FF_X19_Y22_N17
\u_clk_6|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(22));

-- Location: LCCOMB_X19_Y22_N18
\u_clk_6|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~46_combout\ = (\u_clk_6|cnt\(23) & (!\u_clk_6|Add0~45\)) # (!\u_clk_6|cnt\(23) & ((\u_clk_6|Add0~45\) # (GND)))
-- \u_clk_6|Add0~47\ = CARRY((!\u_clk_6|Add0~45\) # (!\u_clk_6|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(23),
	datad => VCC,
	cin => \u_clk_6|Add0~45\,
	combout => \u_clk_6|Add0~46_combout\,
	cout => \u_clk_6|Add0~47\);

-- Location: LCCOMB_X18_Y22_N22
\u_clk_6|cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|cnt~12_combout\ = (!\u_clk_6|Equal0~8_combout\ & \u_clk_6|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|Equal0~8_combout\,
	datad => \u_clk_6|Add0~46_combout\,
	combout => \u_clk_6|cnt~12_combout\);

-- Location: FF_X18_Y22_N23
\u_clk_6|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(23));

-- Location: LCCOMB_X18_Y22_N26
\u_clk_6|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~6_combout\ = (\u_clk_6|cnt\(23) & (!\u_clk_6|cnt\(22) & (\u_clk_6|cnt\(20) & \u_clk_6|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(23),
	datab => \u_clk_6|cnt\(22),
	datac => \u_clk_6|cnt\(20),
	datad => \u_clk_6|cnt\(21),
	combout => \u_clk_6|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y22_N24
\u_clk_6|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~5_combout\ = (\u_clk_6|cnt\(18) & (\u_clk_6|cnt\(17) & (!\u_clk_6|cnt\(16) & \u_clk_6|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(18),
	datab => \u_clk_6|cnt\(17),
	datac => \u_clk_6|cnt\(16),
	datad => \u_clk_6|cnt\(19),
	combout => \u_clk_6|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y22_N20
\u_clk_6|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~48_combout\ = (\u_clk_6|cnt\(24) & (\u_clk_6|Add0~47\ $ (GND))) # (!\u_clk_6|cnt\(24) & (!\u_clk_6|Add0~47\ & VCC))
-- \u_clk_6|Add0~49\ = CARRY((\u_clk_6|cnt\(24) & !\u_clk_6|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(24),
	datad => VCC,
	cin => \u_clk_6|Add0~47\,
	combout => \u_clk_6|Add0~48_combout\,
	cout => \u_clk_6|Add0~49\);

-- Location: FF_X19_Y22_N21
\u_clk_6|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(24));

-- Location: LCCOMB_X19_Y22_N22
\u_clk_6|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~50_combout\ = (\u_clk_6|cnt\(25) & (!\u_clk_6|Add0~49\)) # (!\u_clk_6|cnt\(25) & ((\u_clk_6|Add0~49\) # (GND)))
-- \u_clk_6|Add0~51\ = CARRY((!\u_clk_6|Add0~49\) # (!\u_clk_6|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(25),
	datad => VCC,
	cin => \u_clk_6|Add0~49\,
	combout => \u_clk_6|Add0~50_combout\,
	cout => \u_clk_6|Add0~51\);

-- Location: FF_X19_Y22_N23
\u_clk_6|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(25));

-- Location: LCCOMB_X19_Y22_N24
\u_clk_6|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~52_combout\ = (\u_clk_6|cnt\(26) & (\u_clk_6|Add0~51\ $ (GND))) # (!\u_clk_6|cnt\(26) & (!\u_clk_6|Add0~51\ & VCC))
-- \u_clk_6|Add0~53\ = CARRY((\u_clk_6|cnt\(26) & !\u_clk_6|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|cnt\(26),
	datad => VCC,
	cin => \u_clk_6|Add0~51\,
	combout => \u_clk_6|Add0~52_combout\,
	cout => \u_clk_6|Add0~53\);

-- Location: FF_X19_Y22_N25
\u_clk_6|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(26));

-- Location: LCCOMB_X19_Y22_N26
\u_clk_6|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Add0~54_combout\ = \u_clk_6|cnt\(27) $ (\u_clk_6|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(27),
	cin => \u_clk_6|Add0~53\,
	combout => \u_clk_6|Add0~54_combout\);

-- Location: FF_X19_Y22_N27
\u_clk_6|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|cnt\(27));

-- Location: LCCOMB_X18_Y22_N4
\u_clk_6|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~7_combout\ = (!\u_clk_6|cnt\(24) & (!\u_clk_6|cnt\(26) & (!\u_clk_6|cnt\(27) & !\u_clk_6|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(24),
	datab => \u_clk_6|cnt\(26),
	datac => \u_clk_6|cnt\(27),
	datad => \u_clk_6|cnt\(25),
	combout => \u_clk_6|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y23_N22
\u_clk_6|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~3_combout\ = (\u_clk_6|cnt\(15) & (!\u_clk_6|cnt\(14) & (\u_clk_6|cnt\(12) & \u_clk_6|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(15),
	datab => \u_clk_6|cnt\(14),
	datac => \u_clk_6|cnt\(12),
	datad => \u_clk_6|cnt\(13),
	combout => \u_clk_6|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y23_N4
\u_clk_6|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~1_combout\ = (\u_clk_6|cnt\(5) & (!\u_clk_6|cnt\(6) & (!\u_clk_6|cnt\(4) & !\u_clk_6|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(5),
	datab => \u_clk_6|cnt\(6),
	datac => \u_clk_6|cnt\(4),
	datad => \u_clk_6|cnt\(7),
	combout => \u_clk_6|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y23_N30
\u_clk_6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~0_combout\ = (!\u_clk_6|cnt\(8) & (\u_clk_6|cnt\(10) & (\u_clk_6|cnt\(11) & !\u_clk_6|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(8),
	datab => \u_clk_6|cnt\(10),
	datac => \u_clk_6|cnt\(11),
	datad => \u_clk_6|cnt\(9),
	combout => \u_clk_6|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y23_N24
\u_clk_6|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~2_combout\ = (!\u_clk_6|cnt\(0) & (!\u_clk_6|cnt\(2) & (!\u_clk_6|cnt\(3) & !\u_clk_6|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|cnt\(0),
	datab => \u_clk_6|cnt\(2),
	datac => \u_clk_6|cnt\(3),
	datad => \u_clk_6|cnt\(1),
	combout => \u_clk_6|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y23_N16
\u_clk_6|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~4_combout\ = (\u_clk_6|Equal0~3_combout\ & (\u_clk_6|Equal0~1_combout\ & (\u_clk_6|Equal0~0_combout\ & \u_clk_6|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|Equal0~3_combout\,
	datab => \u_clk_6|Equal0~1_combout\,
	datac => \u_clk_6|Equal0~0_combout\,
	datad => \u_clk_6|Equal0~2_combout\,
	combout => \u_clk_6|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y22_N10
\u_clk_6|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|Equal0~8_combout\ = (\u_clk_6|Equal0~6_combout\ & (\u_clk_6|Equal0~5_combout\ & (\u_clk_6|Equal0~7_combout\ & \u_clk_6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_6|Equal0~6_combout\,
	datab => \u_clk_6|Equal0~5_combout\,
	datac => \u_clk_6|Equal0~7_combout\,
	datad => \u_clk_6|Equal0~4_combout\,
	combout => \u_clk_6|Equal0~8_combout\);

-- Location: LCCOMB_X18_Y22_N20
\u_clk_6|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|clkout~0_combout\ = \u_clk_6|clkout~q\ $ (\u_clk_6|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_6|clkout~q\,
	datad => \u_clk_6|Equal0~8_combout\,
	combout => \u_clk_6|clkout~0_combout\);

-- Location: LCCOMB_X18_Y22_N12
\u_clk_6|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_clk_6|clkout~feeder_combout\ = \u_clk_6|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_6|clkout~0_combout\,
	combout => \u_clk_6|clkout~feeder_combout\);

-- Location: FF_X18_Y22_N13
\u_clk_6|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_clk_6|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_6|clkout~q\);

-- Location: IOIBUF_X34_Y5_N15
\J~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\K~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: LCCOMB_X18_Y22_N28
\u_JK|u_JK_part1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_JK|u_JK_part1|Q~0_combout\ = (\u_JK|u_JK_part1|Q~q\ & ((!\K~input_o\))) # (!\u_JK|u_JK_part1|Q~q\ & (\J~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J~input_o\,
	datac => \u_JK|u_JK_part1|Q~q\,
	datad => \K~input_o\,
	combout => \u_JK|u_JK_part1|Q~0_combout\);

-- Location: FF_X18_Y22_N29
\u_JK|u_JK_part1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_6|ALT_INV_clkout~q\,
	d => \u_JK|u_JK_part1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_JK|u_JK_part1|Q~q\);

-- Location: IOIBUF_X34_Y20_N8
\RD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD,
	o => \RD~input_o\);

-- Location: LCCOMB_X18_Y22_N30
\u_JK|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_JK|Q~0_combout\ = (\SD~input_o\ & (\u_JK|u_JK_part1|Q~q\ & \RD~input_o\)) # (!\SD~input_o\ & ((\u_JK|u_JK_part1|Q~q\) # (\RD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD~input_o\,
	datab => \u_JK|u_JK_part1|Q~q\,
	datad => \RD~input_o\,
	combout => \u_JK|Q~0_combout\);

-- Location: LCCOMB_X18_Y22_N8
\u_JK|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_JK|Q~1_combout\ = (\SD~input_o\) # (\RD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD~input_o\,
	datad => \RD~input_o\,
	combout => \u_JK|Q~1_combout\);

-- Location: LCCOMB_X18_Y22_N18
\u_JK|Q_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_JK|Q_~0_combout\ = (\SD~input_o\ & ((!\RD~input_o\) # (!\u_JK|u_JK_part1|Q~q\))) # (!\SD~input_o\ & (!\u_JK|u_JK_part1|Q~q\ & !\RD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD~input_o\,
	datab => \u_JK|u_JK_part1|Q~q\,
	datad => \RD~input_o\,
	combout => \u_JK|Q_~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_Q <= \Q~output_o\;

\ww_Q_\ <= \Q_~output_o\;
END structure;


