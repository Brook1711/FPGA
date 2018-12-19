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

-- DATE "12/07/2018 10:25:30"

-- 
-- Device: Altera EPM1270T144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	selecting_machine_startup IS
    PORT (
	clk : IN std_logic;
	row : OUT std_logic_vector(7 DOWNTO 0);
	col : OUT std_logic_vector(7 DOWNTO 0);
	digit_scan : OUT std_logic_vector(7 DOWNTO 0);
	digit_cath : OUT std_logic_vector(7 DOWNTO 0)
	);
END selecting_machine_startup;

-- Design Ports Information
-- row[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- row[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- row[2]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- row[3]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- row[4]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- row[5]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- row[6]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- row[7]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[0]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[1]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[2]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[3]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[4]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[5]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[6]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[7]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_scan[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_scan[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_scan[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_scan[3]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_scan[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_scan[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_scan[6]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_scan[7]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_cath[0]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_cath[1]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_cath[2]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_cath[3]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_cath[4]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_cath[5]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_cath[6]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- digit_cath[7]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF selecting_machine_startup IS
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
SIGNAL ww_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_col : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_digit_scan : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_digit_cath : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \u_clk_500|Add0~0_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~2\ : std_logic;
SIGNAL \u_clk_500|Add0~2COUT1_144\ : std_logic;
SIGNAL \u_clk_500|Add0~5_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~7\ : std_logic;
SIGNAL \u_clk_500|Add0~7COUT1_145\ : std_logic;
SIGNAL \u_clk_500|Add0~20_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~22\ : std_logic;
SIGNAL \u_clk_500|Add0~22COUT1_146\ : std_logic;
SIGNAL \u_clk_500|Add0~35_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~30_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~32\ : std_logic;
SIGNAL \u_clk_500|Add0~32COUT1_141\ : std_logic;
SIGNAL \u_clk_500|Add0~25_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~27\ : std_logic;
SIGNAL \u_clk_500|Add0~27COUT1_142\ : std_logic;
SIGNAL \u_clk_500|Add0~15_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~17\ : std_logic;
SIGNAL \u_clk_500|Add0~17COUT1_143\ : std_logic;
SIGNAL \u_clk_500|Add0~10_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~12\ : std_logic;
SIGNAL \u_clk_500|Add0~37\ : std_logic;
SIGNAL \u_clk_500|Add0~37COUT1_147\ : std_logic;
SIGNAL \u_clk_500|Add0~40_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~42\ : std_logic;
SIGNAL \u_clk_500|Add0~60_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~62\ : std_logic;
SIGNAL \u_clk_500|Add0~62COUT1_152\ : std_logic;
SIGNAL \u_clk_500|Add0~65_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~45_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~47\ : std_logic;
SIGNAL \u_clk_500|Add0~47COUT1_148\ : std_logic;
SIGNAL \u_clk_500|Add0~50_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~52\ : std_logic;
SIGNAL \u_clk_500|Add0~52COUT1_149\ : std_logic;
SIGNAL \u_clk_500|Add0~55_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~57\ : std_logic;
SIGNAL \u_clk_500|Add0~57COUT1_150\ : std_logic;
SIGNAL \u_clk_500|Add0~70_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~72\ : std_logic;
SIGNAL \u_clk_500|Add0~72COUT1_151\ : std_logic;
SIGNAL \u_clk_500|Add0~75_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~77\ : std_logic;
SIGNAL \u_clk_500|Add0~95_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~67\ : std_logic;
SIGNAL \u_clk_500|Add0~67COUT1_153\ : std_logic;
SIGNAL \u_clk_500|Add0~80_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~82\ : std_logic;
SIGNAL \u_clk_500|Add0~82COUT1_154\ : std_logic;
SIGNAL \u_clk_500|Add0~85_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~87\ : std_logic;
SIGNAL \u_clk_500|Add0~87COUT1_155\ : std_logic;
SIGNAL \u_clk_500|Add0~90_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~92\ : std_logic;
SIGNAL \u_clk_500|Add0~97\ : std_logic;
SIGNAL \u_clk_500|Add0~97COUT1_156\ : std_logic;
SIGNAL \u_clk_500|Add0~102COUT1_157\ : std_logic;
SIGNAL \u_clk_500|Add0~107COUT1_158\ : std_logic;
SIGNAL \u_clk_500|Add0~112\ : std_logic;
SIGNAL \u_clk_500|Add0~112COUT1_159\ : std_logic;
SIGNAL \u_clk_500|Add0~115_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~100_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~102\ : std_logic;
SIGNAL \u_clk_500|Add0~105_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~107\ : std_logic;
SIGNAL \u_clk_500|Add0~110_combout\ : std_logic;
SIGNAL \u_clk_500|Equal0~6\ : std_logic;
SIGNAL \u_clk_500|Equal0~5\ : std_logic;
SIGNAL \u_clk_500|Add0~117\ : std_logic;
SIGNAL \u_clk_500|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_clk_500|Add0~127\ : std_logic;
SIGNAL \u_clk_500|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_clk_500|Add0~130_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~132\ : std_logic;
SIGNAL \u_clk_500|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_clk_500|Add0~135_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~120_combout\ : std_logic;
SIGNAL \u_clk_500|Add0~122\ : std_logic;
SIGNAL \u_clk_500|Add0~125_combout\ : std_logic;
SIGNAL \u_clk_500|Equal0~7\ : std_logic;
SIGNAL \u_clk_500|Equal0~3\ : std_logic;
SIGNAL \u_clk_500|Equal0~1\ : std_logic;
SIGNAL \u_clk_500|Equal0~0\ : std_logic;
SIGNAL \u_clk_500|Equal0~2\ : std_logic;
SIGNAL \u_clk_500|Equal0~4_combout\ : std_logic;
SIGNAL \u_clk_500|Equal0~8_combout\ : std_logic;
SIGNAL \u_clk_500|clkout~regout\ : std_logic;
SIGNAL \u_decode_lattice_startup|Decoder0~0_combout\ : std_logic;
SIGNAL \u_decode_lattice_startup|Decoder0~1_combout\ : std_logic;
SIGNAL \u_decode_lattice_startup|Decoder0~2_combout\ : std_logic;
SIGNAL \u_decode_lattice_startup|Decoder0~3_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~55_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~57\ : std_logic;
SIGNAL \u_clk_2|Add0~57COUT1_141\ : std_logic;
SIGNAL \u_clk_2|Add0~50_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~52\ : std_logic;
SIGNAL \u_clk_2|Add0~52COUT1_142\ : std_logic;
SIGNAL \u_clk_2|Add0~45_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~47\ : std_logic;
SIGNAL \u_clk_2|Add0~47COUT1_143\ : std_logic;
SIGNAL \u_clk_2|Add0~40_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~42\ : std_logic;
SIGNAL \u_clk_2|Add0~35_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~37\ : std_logic;
SIGNAL \u_clk_2|Add0~37COUT1_144\ : std_logic;
SIGNAL \u_clk_2|Add0~20_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~22\ : std_logic;
SIGNAL \u_clk_2|Add0~22COUT1_145\ : std_logic;
SIGNAL \u_clk_2|Add0~30_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~32\ : std_logic;
SIGNAL \u_clk_2|Add0~32COUT1_146\ : std_logic;
SIGNAL \u_clk_2|Add0~25_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~27\ : std_logic;
SIGNAL \u_clk_2|Add0~27COUT1_147\ : std_logic;
SIGNAL \u_clk_2|Add0~15_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~17\ : std_logic;
SIGNAL \u_clk_2|Add0~10_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~12\ : std_logic;
SIGNAL \u_clk_2|Add0~12COUT1_148\ : std_logic;
SIGNAL \u_clk_2|Add0~5_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~7\ : std_logic;
SIGNAL \u_clk_2|Add0~7COUT1_149\ : std_logic;
SIGNAL \u_clk_2|Add0~0_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~2\ : std_logic;
SIGNAL \u_clk_2|Add0~2COUT1_150\ : std_logic;
SIGNAL \u_clk_2|Add0~60_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~62\ : std_logic;
SIGNAL \u_clk_2|Add0~62COUT1_151\ : std_logic;
SIGNAL \u_clk_2|Add0~65_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~67\ : std_logic;
SIGNAL \u_clk_2|Add0~90_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~75_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~77\ : std_logic;
SIGNAL \u_clk_2|Add0~77COUT1_152\ : std_logic;
SIGNAL \u_clk_2|Add0~70_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~72\ : std_logic;
SIGNAL \u_clk_2|Add0~72COUT1_153\ : std_logic;
SIGNAL \u_clk_2|Add0~95_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~97\ : std_logic;
SIGNAL \u_clk_2|Add0~97COUT1_154\ : std_logic;
SIGNAL \u_clk_2|Add0~80_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~82\ : std_logic;
SIGNAL \u_clk_2|Add0~82COUT1_155\ : std_logic;
SIGNAL \u_clk_2|Add0~85_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~87\ : std_logic;
SIGNAL \u_clk_2|Add0~92\ : std_logic;
SIGNAL \u_clk_2|Add0~92COUT1_156\ : std_logic;
SIGNAL \u_clk_2|Add0~100_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~102\ : std_logic;
SIGNAL \u_clk_2|Add0~102COUT1_157\ : std_logic;
SIGNAL \u_clk_2|Add0~105_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~107\ : std_logic;
SIGNAL \u_clk_2|Add0~107COUT1_158\ : std_logic;
SIGNAL \u_clk_2|Add0~117\ : std_logic;
SIGNAL \u_clk_2|Add0~117COUT1_159\ : std_logic;
SIGNAL \u_clk_2|Add0~110_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~115_combout\ : std_logic;
SIGNAL \u_clk_2|Equal0~6\ : std_logic;
SIGNAL \u_clk_2|Add0~112\ : std_logic;
SIGNAL \u_clk_2|Add0~120_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~122\ : std_logic;
SIGNAL \u_clk_2|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_clk_2|Add0~125_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~127\ : std_logic;
SIGNAL \u_clk_2|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_clk_2|Add0~130_combout\ : std_logic;
SIGNAL \u_clk_2|Add0~132\ : std_logic;
SIGNAL \u_clk_2|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_clk_2|Add0~135_combout\ : std_logic;
SIGNAL \u_clk_2|Equal0~7\ : std_logic;
SIGNAL \u_clk_2|Equal0~5\ : std_logic;
SIGNAL \u_clk_2|Equal0~0\ : std_logic;
SIGNAL \u_clk_2|Equal0~3\ : std_logic;
SIGNAL \u_clk_2|Equal0~1\ : std_logic;
SIGNAL \u_clk_2|Equal0~2\ : std_logic;
SIGNAL \u_clk_2|Equal0~4_combout\ : std_logic;
SIGNAL \u_clk_2|Equal0~8_combout\ : std_logic;
SIGNAL \u_clk_2|clkout~regout\ : std_logic;
SIGNAL \flag~regout\ : std_logic;
SIGNAL \code_test~0_combout\ : std_logic;
SIGNAL \code_test~regout\ : std_logic;
SIGNAL \u_decode_seg_startup|digit_cath[1]~0_combout\ : std_logic;
SIGNAL \u_clk_2|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_decode_lattice_startup|row\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_decode_lattice_startup|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_decode_seg_startup|digit_cath\ : std_logic_vector(7 DOWNTO 0);
SIGNAL cnt : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_clk_500|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_code_test~regout\ : std_logic;

BEGIN

ww_clk <= clk;
row <= ww_row;
col <= ww_col;
digit_scan <= ww_digit_scan;
digit_cath <= ww_digit_cath;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_code_test~regout\ <= NOT \code_test~regout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X7_Y6_N5
\u_clk_500|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~0_combout\ = \u_clk_500|cnt\(4) $ ((((!\u_clk_500|Add0~12\))))
-- \u_clk_500|Add0~2\ = CARRY((\u_clk_500|cnt\(4) & ((!\u_clk_500|Add0~12\))))
-- \u_clk_500|Add0~2COUT1_144\ = CARRY((\u_clk_500|cnt\(4) & ((!\u_clk_500|Add0~12\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|cnt\(4),
	cin => \u_clk_500|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~0_combout\,
	cout0 => \u_clk_500|Add0~2\,
	cout1 => \u_clk_500|Add0~2COUT1_144\);

-- Location: LC_X6_Y6_N0
\u_clk_500|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(4) = DFFEAS((!\u_clk_500|Equal0~8_combout\ & (((\u_clk_500|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|Equal0~8_combout\,
	datad => \u_clk_500|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(4));

-- Location: LC_X7_Y6_N6
\u_clk_500|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~5_combout\ = (\u_clk_500|cnt\(5) $ (((!\u_clk_500|Add0~12\ & \u_clk_500|Add0~2\) # (\u_clk_500|Add0~12\ & \u_clk_500|Add0~2COUT1_144\))))
-- \u_clk_500|Add0~7\ = CARRY(((!\u_clk_500|Add0~2\) # (!\u_clk_500|cnt\(5))))
-- \u_clk_500|Add0~7COUT1_145\ = CARRY(((!\u_clk_500|Add0~2COUT1_144\) # (!\u_clk_500|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(5),
	cin => \u_clk_500|Add0~12\,
	cin0 => \u_clk_500|Add0~2\,
	cin1 => \u_clk_500|Add0~2COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~5_combout\,
	cout0 => \u_clk_500|Add0~7\,
	cout1 => \u_clk_500|Add0~7COUT1_145\);

-- Location: LC_X6_Y6_N6
\u_clk_500|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~0\ = (!\u_clk_500|cnt\(3) & (\u_clk_500|cnt\(4) & (!B1_cnt[5] & !\u_clk_500|cnt\(2))))
-- \u_clk_500|cnt\(5) = DFFEAS(\u_clk_500|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|cnt\(3),
	datab => \u_clk_500|cnt\(4),
	datac => \u_clk_500|Add0~5_combout\,
	datad => \u_clk_500|cnt\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~0\,
	regout => \u_clk_500|cnt\(5));

-- Location: LC_X7_Y6_N7
\u_clk_500|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~20_combout\ = (\u_clk_500|cnt\(6) $ ((!(!\u_clk_500|Add0~12\ & \u_clk_500|Add0~7\) # (\u_clk_500|Add0~12\ & \u_clk_500|Add0~7COUT1_145\))))
-- \u_clk_500|Add0~22\ = CARRY(((\u_clk_500|cnt\(6) & !\u_clk_500|Add0~7\)))
-- \u_clk_500|Add0~22COUT1_146\ = CARRY(((\u_clk_500|cnt\(6) & !\u_clk_500|Add0~7COUT1_145\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(6),
	cin => \u_clk_500|Add0~12\,
	cin0 => \u_clk_500|Add0~7\,
	cin1 => \u_clk_500|Add0~7COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~20_combout\,
	cout0 => \u_clk_500|Add0~22\,
	cout1 => \u_clk_500|Add0~22COUT1_146\);

-- Location: LC_X6_Y6_N8
\u_clk_500|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(6) = DFFEAS((!\u_clk_500|Equal0~8_combout\ & (((\u_clk_500|Add0~20_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|Equal0~8_combout\,
	datad => \u_clk_500|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(6));

-- Location: LC_X7_Y6_N8
\u_clk_500|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~35_combout\ = \u_clk_500|cnt\(7) $ (((((!\u_clk_500|Add0~12\ & \u_clk_500|Add0~22\) # (\u_clk_500|Add0~12\ & \u_clk_500|Add0~22COUT1_146\)))))
-- \u_clk_500|Add0~37\ = CARRY(((!\u_clk_500|Add0~22\)) # (!\u_clk_500|cnt\(7)))
-- \u_clk_500|Add0~37COUT1_147\ = CARRY(((!\u_clk_500|Add0~22COUT1_146\)) # (!\u_clk_500|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|cnt\(7),
	cin => \u_clk_500|Add0~12\,
	cin0 => \u_clk_500|Add0~22\,
	cin1 => \u_clk_500|Add0~22COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~35_combout\,
	cout0 => \u_clk_500|Add0~37\,
	cout1 => \u_clk_500|Add0~37COUT1_147\);

-- Location: LC_X6_Y6_N5
\u_clk_500|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(7));

-- Location: LC_X7_Y6_N1
\u_clk_500|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~30_combout\ = ((!\u_clk_500|cnt\(0)))
-- \u_clk_500|Add0~32\ = CARRY(((\u_clk_500|cnt\(0))))
-- \u_clk_500|Add0~32COUT1_141\ = CARRY(((\u_clk_500|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~30_combout\,
	cout0 => \u_clk_500|Add0~32\,
	cout1 => \u_clk_500|Add0~32COUT1_141\);

-- Location: LC_X7_Y6_N0
\u_clk_500|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(0) = DFFEAS(((!\u_clk_500|Equal0~8_combout\ & ((\u_clk_500|Add0~30_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_clk_500|Equal0~8_combout\,
	datad => \u_clk_500|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(0));

-- Location: LC_X7_Y6_N2
\u_clk_500|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~25_combout\ = (\u_clk_500|cnt\(1) $ ((\u_clk_500|Add0~32\)))
-- \u_clk_500|Add0~27\ = CARRY(((!\u_clk_500|Add0~32\) # (!\u_clk_500|cnt\(1))))
-- \u_clk_500|Add0~27COUT1_142\ = CARRY(((!\u_clk_500|Add0~32COUT1_141\) # (!\u_clk_500|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(1),
	cin0 => \u_clk_500|Add0~32\,
	cin1 => \u_clk_500|Add0~32COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~25_combout\,
	cout0 => \u_clk_500|Add0~27\,
	cout1 => \u_clk_500|Add0~27COUT1_142\);

-- Location: LC_X6_Y6_N7
\u_clk_500|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~1\ = (!\u_clk_500|cnt\(7) & (\u_clk_500|cnt\(6) & (!B1_cnt[1] & !\u_clk_500|cnt\(0))))
-- \u_clk_500|cnt\(1) = DFFEAS(\u_clk_500|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|cnt\(7),
	datab => \u_clk_500|cnt\(6),
	datac => \u_clk_500|Add0~25_combout\,
	datad => \u_clk_500|cnt\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~1\,
	regout => \u_clk_500|cnt\(1));

-- Location: LC_X7_Y6_N3
\u_clk_500|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~15_combout\ = \u_clk_500|cnt\(2) $ ((((!\u_clk_500|Add0~27\))))
-- \u_clk_500|Add0~17\ = CARRY((\u_clk_500|cnt\(2) & ((!\u_clk_500|Add0~27\))))
-- \u_clk_500|Add0~17COUT1_143\ = CARRY((\u_clk_500|cnt\(2) & ((!\u_clk_500|Add0~27COUT1_142\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|cnt\(2),
	cin0 => \u_clk_500|Add0~27\,
	cin1 => \u_clk_500|Add0~27COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~15_combout\,
	cout0 => \u_clk_500|Add0~17\,
	cout1 => \u_clk_500|Add0~17COUT1_143\);

-- Location: LC_X6_Y6_N9
\u_clk_500|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(2) = DFFEAS((((\u_clk_500|Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_500|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(2));

-- Location: LC_X7_Y6_N4
\u_clk_500|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~10_combout\ = (\u_clk_500|cnt\(3) $ ((\u_clk_500|Add0~17\)))
-- \u_clk_500|Add0~12\ = CARRY(((!\u_clk_500|Add0~17COUT1_143\) # (!\u_clk_500|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(3),
	cin0 => \u_clk_500|Add0~17\,
	cin1 => \u_clk_500|Add0~17COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~10_combout\,
	cout => \u_clk_500|Add0~12\);

-- Location: LC_X5_Y6_N5
\u_clk_500|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(3));

-- Location: LC_X7_Y6_N9
\u_clk_500|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~40_combout\ = \u_clk_500|cnt\(8) $ ((((!(!\u_clk_500|Add0~12\ & \u_clk_500|Add0~37\) # (\u_clk_500|Add0~12\ & \u_clk_500|Add0~37COUT1_147\)))))
-- \u_clk_500|Add0~42\ = CARRY((\u_clk_500|cnt\(8) & ((!\u_clk_500|Add0~37COUT1_147\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|cnt\(8),
	cin => \u_clk_500|Add0~12\,
	cin0 => \u_clk_500|Add0~37\,
	cin1 => \u_clk_500|Add0~37COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~40_combout\,
	cout => \u_clk_500|Add0~42\);

-- Location: LC_X6_Y6_N4
\u_clk_500|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(8) = DFFEAS((((\u_clk_500|Add0~40_combout\ & !\u_clk_500|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~40_combout\,
	datad => \u_clk_500|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(8));

-- Location: LC_X8_Y6_N5
\u_clk_500|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~60_combout\ = (\u_clk_500|cnt\(14) $ ((!\u_clk_500|Add0~77\)))
-- \u_clk_500|Add0~62\ = CARRY(((\u_clk_500|cnt\(14) & !\u_clk_500|Add0~77\)))
-- \u_clk_500|Add0~62COUT1_152\ = CARRY(((\u_clk_500|cnt\(14) & !\u_clk_500|Add0~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(14),
	cin => \u_clk_500|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~60_combout\,
	cout0 => \u_clk_500|Add0~62\,
	cout1 => \u_clk_500|Add0~62COUT1_152\);

-- Location: LC_X5_Y6_N7
\u_clk_500|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(14) = DFFEAS((((!\u_clk_500|Equal0~8_combout\ & \u_clk_500|Add0~60_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Equal0~8_combout\,
	datad => \u_clk_500|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(14));

-- Location: LC_X8_Y6_N6
\u_clk_500|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~65_combout\ = (\u_clk_500|cnt\(15) $ (((!\u_clk_500|Add0~77\ & \u_clk_500|Add0~62\) # (\u_clk_500|Add0~77\ & \u_clk_500|Add0~62COUT1_152\))))
-- \u_clk_500|Add0~67\ = CARRY(((!\u_clk_500|Add0~62\) # (!\u_clk_500|cnt\(15))))
-- \u_clk_500|Add0~67COUT1_153\ = CARRY(((!\u_clk_500|Add0~62COUT1_152\) # (!\u_clk_500|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(15),
	cin => \u_clk_500|Add0~77\,
	cin0 => \u_clk_500|Add0~62\,
	cin1 => \u_clk_500|Add0~62COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~65_combout\,
	cout0 => \u_clk_500|Add0~67\,
	cout1 => \u_clk_500|Add0~67COUT1_153\);

-- Location: LC_X5_Y6_N6
\u_clk_500|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(15) = DFFEAS((((!\u_clk_500|Equal0~8_combout\ & \u_clk_500|Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Equal0~8_combout\,
	datad => \u_clk_500|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(15));

-- Location: LC_X8_Y6_N0
\u_clk_500|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~45_combout\ = (\u_clk_500|cnt\(9) $ ((\u_clk_500|Add0~42\)))
-- \u_clk_500|Add0~47\ = CARRY(((!\u_clk_500|Add0~42\) # (!\u_clk_500|cnt\(9))))
-- \u_clk_500|Add0~47COUT1_148\ = CARRY(((!\u_clk_500|Add0~42\) # (!\u_clk_500|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(9),
	cin => \u_clk_500|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~45_combout\,
	cout0 => \u_clk_500|Add0~47\,
	cout1 => \u_clk_500|Add0~47COUT1_148\);

-- Location: LC_X5_Y6_N8
\u_clk_500|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(9) = DFFEAS((((!\u_clk_500|Equal0~8_combout\ & \u_clk_500|Add0~45_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Equal0~8_combout\,
	datad => \u_clk_500|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(9));

-- Location: LC_X8_Y6_N1
\u_clk_500|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~50_combout\ = (\u_clk_500|cnt\(10) $ ((!(!\u_clk_500|Add0~42\ & \u_clk_500|Add0~47\) # (\u_clk_500|Add0~42\ & \u_clk_500|Add0~47COUT1_148\))))
-- \u_clk_500|Add0~52\ = CARRY(((\u_clk_500|cnt\(10) & !\u_clk_500|Add0~47\)))
-- \u_clk_500|Add0~52COUT1_149\ = CARRY(((\u_clk_500|cnt\(10) & !\u_clk_500|Add0~47COUT1_148\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(10),
	cin => \u_clk_500|Add0~42\,
	cin0 => \u_clk_500|Add0~47\,
	cin1 => \u_clk_500|Add0~47COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~50_combout\,
	cout0 => \u_clk_500|Add0~52\,
	cout1 => \u_clk_500|Add0~52COUT1_149\);

-- Location: LC_X6_Y6_N1
\u_clk_500|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~2\ = (\u_clk_500|cnt\(9) & (\u_clk_500|cnt\(8) & (!B1_cnt[10] & !\u_clk_500|cnt\(11))))
-- \u_clk_500|cnt\(10) = DFFEAS(\u_clk_500|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|cnt\(9),
	datab => \u_clk_500|cnt\(8),
	datac => \u_clk_500|Add0~50_combout\,
	datad => \u_clk_500|cnt\(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~2\,
	regout => \u_clk_500|cnt\(10));

-- Location: LC_X8_Y6_N2
\u_clk_500|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~55_combout\ = (\u_clk_500|cnt\(11) $ (((!\u_clk_500|Add0~42\ & \u_clk_500|Add0~52\) # (\u_clk_500|Add0~42\ & \u_clk_500|Add0~52COUT1_149\))))
-- \u_clk_500|Add0~57\ = CARRY(((!\u_clk_500|Add0~52\) # (!\u_clk_500|cnt\(11))))
-- \u_clk_500|Add0~57COUT1_150\ = CARRY(((!\u_clk_500|Add0~52COUT1_149\) # (!\u_clk_500|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(11),
	cin => \u_clk_500|Add0~42\,
	cin0 => \u_clk_500|Add0~52\,
	cin1 => \u_clk_500|Add0~52COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~55_combout\,
	cout0 => \u_clk_500|Add0~57\,
	cout1 => \u_clk_500|Add0~57COUT1_150\);

-- Location: LC_X7_Y5_N6
\u_clk_500|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(11) = DFFEAS((((\u_clk_500|Add0~55_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_500|Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(11));

-- Location: LC_X8_Y6_N3
\u_clk_500|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~70_combout\ = (\u_clk_500|cnt\(12) $ ((!(!\u_clk_500|Add0~42\ & \u_clk_500|Add0~57\) # (\u_clk_500|Add0~42\ & \u_clk_500|Add0~57COUT1_150\))))
-- \u_clk_500|Add0~72\ = CARRY(((\u_clk_500|cnt\(12) & !\u_clk_500|Add0~57\)))
-- \u_clk_500|Add0~72COUT1_151\ = CARRY(((\u_clk_500|cnt\(12) & !\u_clk_500|Add0~57COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(12),
	cin => \u_clk_500|Add0~42\,
	cin0 => \u_clk_500|Add0~57\,
	cin1 => \u_clk_500|Add0~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~70_combout\,
	cout0 => \u_clk_500|Add0~72\,
	cout1 => \u_clk_500|Add0~72COUT1_151\);

-- Location: LC_X5_Y6_N0
\u_clk_500|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~3\ = (\u_clk_500|cnt\(15) & (\u_clk_500|cnt\(14) & (!B1_cnt[12] & !\u_clk_500|cnt\(13))))
-- \u_clk_500|cnt\(12) = DFFEAS(\u_clk_500|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|cnt\(15),
	datab => \u_clk_500|cnt\(14),
	datac => \u_clk_500|Add0~70_combout\,
	datad => \u_clk_500|cnt\(13),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~3\,
	regout => \u_clk_500|cnt\(12));

-- Location: LC_X8_Y6_N4
\u_clk_500|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~75_combout\ = (\u_clk_500|cnt\(13) $ (((!\u_clk_500|Add0~42\ & \u_clk_500|Add0~72\) # (\u_clk_500|Add0~42\ & \u_clk_500|Add0~72COUT1_151\))))
-- \u_clk_500|Add0~77\ = CARRY(((!\u_clk_500|Add0~72COUT1_151\) # (!\u_clk_500|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(13),
	cin => \u_clk_500|Add0~42\,
	cin0 => \u_clk_500|Add0~72\,
	cin1 => \u_clk_500|Add0~72COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~75_combout\,
	cout => \u_clk_500|Add0~77\);

-- Location: LC_X5_Y6_N9
\u_clk_500|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(13));

-- Location: LC_X9_Y6_N0
\u_clk_500|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~95_combout\ = \u_clk_500|cnt\(19) $ ((((\u_clk_500|Add0~92\))))
-- \u_clk_500|Add0~97\ = CARRY(((!\u_clk_500|Add0~92\)) # (!\u_clk_500|cnt\(19)))
-- \u_clk_500|Add0~97COUT1_156\ = CARRY(((!\u_clk_500|Add0~92\)) # (!\u_clk_500|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|cnt\(19),
	cin => \u_clk_500|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~95_combout\,
	cout0 => \u_clk_500|Add0~97\,
	cout1 => \u_clk_500|Add0~97COUT1_156\);

-- Location: LC_X10_Y6_N0
\u_clk_500|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(19) = DFFEAS((((\u_clk_500|Add0~95_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_500|Add0~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(19));

-- Location: LC_X8_Y6_N7
\u_clk_500|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~80_combout\ = (\u_clk_500|cnt\(16) $ ((!(!\u_clk_500|Add0~77\ & \u_clk_500|Add0~67\) # (\u_clk_500|Add0~77\ & \u_clk_500|Add0~67COUT1_153\))))
-- \u_clk_500|Add0~82\ = CARRY(((\u_clk_500|cnt\(16) & !\u_clk_500|Add0~67\)))
-- \u_clk_500|Add0~82COUT1_154\ = CARRY(((\u_clk_500|cnt\(16) & !\u_clk_500|Add0~67COUT1_153\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(16),
	cin => \u_clk_500|Add0~77\,
	cin0 => \u_clk_500|Add0~67\,
	cin1 => \u_clk_500|Add0~67COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~80_combout\,
	cout0 => \u_clk_500|Add0~82\,
	cout1 => \u_clk_500|Add0~82COUT1_154\);

-- Location: LC_X10_Y6_N7
\u_clk_500|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~5\ = (!\u_clk_500|cnt\(18) & (!\u_clk_500|cnt\(19) & (!B1_cnt[16] & !\u_clk_500|cnt\(17))))
-- \u_clk_500|cnt\(16) = DFFEAS(\u_clk_500|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|cnt\(18),
	datab => \u_clk_500|cnt\(19),
	datac => \u_clk_500|Add0~80_combout\,
	datad => \u_clk_500|cnt\(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~5\,
	regout => \u_clk_500|cnt\(16));

-- Location: LC_X8_Y6_N8
\u_clk_500|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~85_combout\ = (\u_clk_500|cnt\(17) $ (((!\u_clk_500|Add0~77\ & \u_clk_500|Add0~82\) # (\u_clk_500|Add0~77\ & \u_clk_500|Add0~82COUT1_154\))))
-- \u_clk_500|Add0~87\ = CARRY(((!\u_clk_500|Add0~82\) # (!\u_clk_500|cnt\(17))))
-- \u_clk_500|Add0~87COUT1_155\ = CARRY(((!\u_clk_500|Add0~82COUT1_154\) # (!\u_clk_500|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(17),
	cin => \u_clk_500|Add0~77\,
	cin0 => \u_clk_500|Add0~82\,
	cin1 => \u_clk_500|Add0~82COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~85_combout\,
	cout0 => \u_clk_500|Add0~87\,
	cout1 => \u_clk_500|Add0~87COUT1_155\);

-- Location: LC_X11_Y6_N4
\u_clk_500|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(17));

-- Location: LC_X8_Y6_N9
\u_clk_500|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~90_combout\ = (\u_clk_500|cnt\(18) $ ((!(!\u_clk_500|Add0~77\ & \u_clk_500|Add0~87\) # (\u_clk_500|Add0~77\ & \u_clk_500|Add0~87COUT1_155\))))
-- \u_clk_500|Add0~92\ = CARRY(((\u_clk_500|cnt\(18) & !\u_clk_500|Add0~87COUT1_155\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(18),
	cin => \u_clk_500|Add0~77\,
	cin0 => \u_clk_500|Add0~87\,
	cin1 => \u_clk_500|Add0~87COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~90_combout\,
	cout => \u_clk_500|Add0~92\);

-- Location: LC_X9_Y6_N9
\u_clk_500|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(18));

-- Location: LC_X9_Y6_N1
\u_clk_500|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~100_combout\ = (\u_clk_500|cnt\(20) $ ((!(!\u_clk_500|Add0~92\ & \u_clk_500|Add0~97\) # (\u_clk_500|Add0~92\ & \u_clk_500|Add0~97COUT1_156\))))
-- \u_clk_500|Add0~102\ = CARRY(((\u_clk_500|cnt\(20) & !\u_clk_500|Add0~97\)))
-- \u_clk_500|Add0~102COUT1_157\ = CARRY(((\u_clk_500|cnt\(20) & !\u_clk_500|Add0~97COUT1_156\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(20),
	cin => \u_clk_500|Add0~92\,
	cin0 => \u_clk_500|Add0~97\,
	cin1 => \u_clk_500|Add0~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~100_combout\,
	cout0 => \u_clk_500|Add0~102\,
	cout1 => \u_clk_500|Add0~102COUT1_157\);

-- Location: LC_X9_Y6_N2
\u_clk_500|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~105_combout\ = (\u_clk_500|cnt\(21) $ (((!\u_clk_500|Add0~92\ & \u_clk_500|Add0~102\) # (\u_clk_500|Add0~92\ & \u_clk_500|Add0~102COUT1_157\))))
-- \u_clk_500|Add0~107\ = CARRY(((!\u_clk_500|Add0~102\) # (!\u_clk_500|cnt\(21))))
-- \u_clk_500|Add0~107COUT1_158\ = CARRY(((!\u_clk_500|Add0~102COUT1_157\) # (!\u_clk_500|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(21),
	cin => \u_clk_500|Add0~92\,
	cin0 => \u_clk_500|Add0~102\,
	cin1 => \u_clk_500|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~105_combout\,
	cout0 => \u_clk_500|Add0~107\,
	cout1 => \u_clk_500|Add0~107COUT1_158\);

-- Location: LC_X9_Y6_N3
\u_clk_500|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~110_combout\ = (\u_clk_500|cnt\(22) $ ((!(!\u_clk_500|Add0~92\ & \u_clk_500|Add0~107\) # (\u_clk_500|Add0~92\ & \u_clk_500|Add0~107COUT1_158\))))
-- \u_clk_500|Add0~112\ = CARRY(((\u_clk_500|cnt\(22) & !\u_clk_500|Add0~107\)))
-- \u_clk_500|Add0~112COUT1_159\ = CARRY(((\u_clk_500|cnt\(22) & !\u_clk_500|Add0~107COUT1_158\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(22),
	cin => \u_clk_500|Add0~92\,
	cin0 => \u_clk_500|Add0~107\,
	cin1 => \u_clk_500|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~110_combout\,
	cout0 => \u_clk_500|Add0~112\,
	cout1 => \u_clk_500|Add0~112COUT1_159\);

-- Location: LC_X9_Y6_N4
\u_clk_500|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~115_combout\ = (\u_clk_500|cnt\(23) $ (((!\u_clk_500|Add0~92\ & \u_clk_500|Add0~112\) # (\u_clk_500|Add0~92\ & \u_clk_500|Add0~112COUT1_159\))))
-- \u_clk_500|Add0~117\ = CARRY(((!\u_clk_500|Add0~112COUT1_159\) # (!\u_clk_500|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(23),
	cin => \u_clk_500|Add0~92\,
	cin0 => \u_clk_500|Add0~112\,
	cin1 => \u_clk_500|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~115_combout\,
	cout => \u_clk_500|Add0~117\);

-- Location: LC_X10_Y6_N9
\u_clk_500|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(23));

-- Location: LC_X10_Y6_N4
\u_clk_500|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~6\ = (!\u_clk_500|cnt\(22) & (!\u_clk_500|cnt\(23) & (!B1_cnt[20] & !\u_clk_500|cnt\(21))))
-- \u_clk_500|cnt\(20) = DFFEAS(\u_clk_500|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|cnt\(22),
	datab => \u_clk_500|cnt\(23),
	datac => \u_clk_500|Add0~100_combout\,
	datad => \u_clk_500|cnt\(21),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~6\,
	regout => \u_clk_500|cnt\(20));

-- Location: LC_X10_Y6_N2
\u_clk_500|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(21) = DFFEAS((((\u_clk_500|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_500|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(21));

-- Location: LC_X10_Y6_N5
\u_clk_500|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(22) = DFFEAS((((\u_clk_500|Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_500|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(22));

-- Location: LC_X9_Y6_N5
\u_clk_500|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~120_combout\ = \u_clk_500|cnt\(24) $ ((((!\u_clk_500|Add0~117\))))
-- \u_clk_500|Add0~122\ = CARRY((\u_clk_500|cnt\(24) & ((!\u_clk_500|Add0~117\))))
-- \u_clk_500|Add0~122COUT1_160\ = CARRY((\u_clk_500|cnt\(24) & ((!\u_clk_500|Add0~117\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|cnt\(24),
	cin => \u_clk_500|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~120_combout\,
	cout0 => \u_clk_500|Add0~122\,
	cout1 => \u_clk_500|Add0~122COUT1_160\);

-- Location: LC_X9_Y6_N6
\u_clk_500|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~125_combout\ = \u_clk_500|cnt\(25) $ (((((!\u_clk_500|Add0~117\ & \u_clk_500|Add0~122\) # (\u_clk_500|Add0~117\ & \u_clk_500|Add0~122COUT1_160\)))))
-- \u_clk_500|Add0~127\ = CARRY(((!\u_clk_500|Add0~122\)) # (!\u_clk_500|cnt\(25)))
-- \u_clk_500|Add0~127COUT1_161\ = CARRY(((!\u_clk_500|Add0~122COUT1_160\)) # (!\u_clk_500|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|cnt\(25),
	cin => \u_clk_500|Add0~117\,
	cin0 => \u_clk_500|Add0~122\,
	cin1 => \u_clk_500|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~125_combout\,
	cout0 => \u_clk_500|Add0~127\,
	cout1 => \u_clk_500|Add0~127COUT1_161\);

-- Location: LC_X9_Y6_N7
\u_clk_500|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~130_combout\ = (\u_clk_500|cnt\(26) $ ((!(!\u_clk_500|Add0~117\ & \u_clk_500|Add0~127\) # (\u_clk_500|Add0~117\ & \u_clk_500|Add0~127COUT1_161\))))
-- \u_clk_500|Add0~132\ = CARRY(((\u_clk_500|cnt\(26) & !\u_clk_500|Add0~127\)))
-- \u_clk_500|Add0~132COUT1_162\ = CARRY(((\u_clk_500|cnt\(26) & !\u_clk_500|Add0~127COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_500|cnt\(26),
	cin => \u_clk_500|Add0~117\,
	cin0 => \u_clk_500|Add0~127\,
	cin1 => \u_clk_500|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~130_combout\,
	cout0 => \u_clk_500|Add0~132\,
	cout1 => \u_clk_500|Add0~132COUT1_162\);

-- Location: LC_X10_Y6_N8
\u_clk_500|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(26) = DFFEAS((((\u_clk_500|Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_500|Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(26));

-- Location: LC_X9_Y6_N8
\u_clk_500|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Add0~135_combout\ = (((!\u_clk_500|Add0~117\ & \u_clk_500|Add0~132\) # (\u_clk_500|Add0~117\ & \u_clk_500|Add0~132COUT1_162\) $ (\u_clk_500|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_clk_500|cnt\(27),
	cin => \u_clk_500|Add0~117\,
	cin0 => \u_clk_500|Add0~132\,
	cin1 => \u_clk_500|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Add0~135_combout\);

-- Location: LC_X10_Y6_N1
\u_clk_500|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(27));

-- Location: LC_X10_Y6_N3
\u_clk_500|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~7\ = (!\u_clk_500|cnt\(25) & (!\u_clk_500|cnt\(27) & (!B1_cnt[24] & !\u_clk_500|cnt\(26))))
-- \u_clk_500|cnt\(24) = DFFEAS(\u_clk_500|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_500|cnt\(25),
	datab => \u_clk_500|cnt\(27),
	datac => \u_clk_500|Add0~120_combout\,
	datad => \u_clk_500|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~7\,
	regout => \u_clk_500|cnt\(24));

-- Location: LC_X10_Y6_N6
\u_clk_500|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_500|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_500|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|cnt\(25));

-- Location: LC_X6_Y6_N2
\u_clk_500|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~4_combout\ = (\u_clk_500|Equal0~3\ & (\u_clk_500|Equal0~1\ & (\u_clk_500|Equal0~0\ & \u_clk_500|Equal0~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|Equal0~3\,
	datab => \u_clk_500|Equal0~1\,
	datac => \u_clk_500|Equal0~0\,
	datad => \u_clk_500|Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~4_combout\);

-- Location: LC_X6_Y6_N3
\u_clk_500|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|Equal0~8_combout\ = (\u_clk_500|Equal0~6\ & (\u_clk_500|Equal0~5\ & (\u_clk_500|Equal0~7\ & \u_clk_500|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_500|Equal0~6\,
	datab => \u_clk_500|Equal0~5\,
	datac => \u_clk_500|Equal0~7\,
	datad => \u_clk_500|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_500|Equal0~8_combout\);

-- Location: LC_X11_Y6_N2
\u_clk_500|clkout\ : maxii_lcell
-- Equation(s):
-- \u_clk_500|clkout~regout\ = DFFEAS((\u_clk_500|clkout~regout\ $ (((\u_clk_500|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_clk_500|clkout~regout\,
	datad => \u_clk_500|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_500|clkout~regout\);

-- Location: LC_X5_Y5_N7
\u_decode_lattice_startup|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|cnt\(0) = DFFEAS((((!\u_decode_lattice_startup|cnt\(0)))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datac => \u_decode_lattice_startup|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|cnt\(0));

-- Location: LC_X4_Y5_N0
\u_decode_lattice_startup|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|cnt\(1) = DFFEAS((((!\u_decode_lattice_startup|cnt\(1)))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , \u_decode_lattice_startup|cnt\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datac => \u_decode_lattice_startup|cnt\(1),
	aclr => GND,
	ena => \u_decode_lattice_startup|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|cnt\(1));

-- Location: LC_X5_Y5_N4
\u_decode_lattice_startup|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|cnt\(2) = DFFEAS(\u_decode_lattice_startup|cnt\(2) $ ((((\u_decode_lattice_startup|cnt\(0) & \u_decode_lattice_startup|cnt\(1))))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	dataa => \u_decode_lattice_startup|cnt\(2),
	datac => \u_decode_lattice_startup|cnt\(0),
	datad => \u_decode_lattice_startup|cnt\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|cnt\(2));

-- Location: LC_X5_Y5_N5
\u_decode_lattice_startup|Decoder0~0\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|Decoder0~0_combout\ = ((!\u_decode_lattice_startup|cnt\(0) & (!\u_decode_lattice_startup|cnt\(2) & !\u_decode_lattice_startup|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_decode_lattice_startup|cnt\(0),
	datac => \u_decode_lattice_startup|cnt\(2),
	datad => \u_decode_lattice_startup|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_decode_lattice_startup|Decoder0~0_combout\);

-- Location: LC_X5_Y5_N6
\u_decode_lattice_startup|row[0]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|row\(0) = DFFEAS((((!\u_decode_lattice_startup|Decoder0~0_combout\))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datad => \u_decode_lattice_startup|Decoder0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|row\(0));

-- Location: LC_X4_Y5_N1
\u_decode_lattice_startup|Decoder0~1\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|Decoder0~1_combout\ = ((!\u_decode_lattice_startup|cnt\(2) & (!\u_decode_lattice_startup|cnt\(1) & \u_decode_lattice_startup|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_decode_lattice_startup|cnt\(2),
	datac => \u_decode_lattice_startup|cnt\(1),
	datad => \u_decode_lattice_startup|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_decode_lattice_startup|Decoder0~1_combout\);

-- Location: LC_X3_Y5_N2
\u_decode_lattice_startup|row[1]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|row\(1) = DFFEAS((((!\u_decode_lattice_startup|Decoder0~1_combout\))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datad => \u_decode_lattice_startup|Decoder0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|row\(1));

-- Location: LC_X4_Y5_N7
\u_decode_lattice_startup|Decoder0~2\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|Decoder0~2_combout\ = ((!\u_decode_lattice_startup|cnt\(2) & (\u_decode_lattice_startup|cnt\(1) & !\u_decode_lattice_startup|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_decode_lattice_startup|cnt\(2),
	datac => \u_decode_lattice_startup|cnt\(1),
	datad => \u_decode_lattice_startup|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_decode_lattice_startup|Decoder0~2_combout\);

-- Location: LC_X3_Y5_N8
\u_decode_lattice_startup|row[2]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|row\(2) = DFFEAS((((!\u_decode_lattice_startup|Decoder0~2_combout\))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datad => \u_decode_lattice_startup|Decoder0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|row\(2));

-- Location: LC_X5_Y5_N8
\u_decode_lattice_startup|Decoder0~3\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|Decoder0~3_combout\ = ((\u_decode_lattice_startup|cnt\(0) & (!\u_decode_lattice_startup|cnt\(2) & \u_decode_lattice_startup|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_decode_lattice_startup|cnt\(0),
	datac => \u_decode_lattice_startup|cnt\(2),
	datad => \u_decode_lattice_startup|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_decode_lattice_startup|Decoder0~3_combout\);

-- Location: LC_X5_Y5_N9
\u_decode_lattice_startup|row[3]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|row\(3) = DFFEAS((((!\u_decode_lattice_startup|Decoder0~3_combout\))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datad => \u_decode_lattice_startup|Decoder0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|row\(3));

-- Location: LC_X3_Y5_N6
\u_decode_lattice_startup|row[4]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|row\(4) = DFFEAS((\u_decode_lattice_startup|cnt\(1)) # (((\u_decode_lattice_startup|cnt\(0)) # (!\u_decode_lattice_startup|cnt\(2)))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	dataa => \u_decode_lattice_startup|cnt\(1),
	datac => \u_decode_lattice_startup|cnt\(0),
	datad => \u_decode_lattice_startup|cnt\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|row\(4));

-- Location: LC_X3_Y5_N5
\u_decode_lattice_startup|row[5]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|row\(5) = DFFEAS((\u_decode_lattice_startup|cnt\(1)) # (((!\u_decode_lattice_startup|cnt\(2)) # (!\u_decode_lattice_startup|cnt\(0)))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	dataa => \u_decode_lattice_startup|cnt\(1),
	datac => \u_decode_lattice_startup|cnt\(0),
	datad => \u_decode_lattice_startup|cnt\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|row\(5));

-- Location: LC_X3_Y5_N4
\u_decode_lattice_startup|row[6]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|row\(6) = DFFEAS((((\u_decode_lattice_startup|cnt\(0)) # (!\u_decode_lattice_startup|cnt\(2)))) # (!\u_decode_lattice_startup|cnt\(1)), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	dataa => \u_decode_lattice_startup|cnt\(1),
	datac => \u_decode_lattice_startup|cnt\(0),
	datad => \u_decode_lattice_startup|cnt\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|row\(6));

-- Location: LC_X3_Y5_N9
\u_decode_lattice_startup|row[7]\ : maxii_lcell
-- Equation(s):
-- \u_decode_lattice_startup|row\(7) = DFFEAS((((!\u_decode_lattice_startup|cnt\(2)) # (!\u_decode_lattice_startup|cnt\(0)))) # (!\u_decode_lattice_startup|cnt\(1)), GLOBAL(\u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	dataa => \u_decode_lattice_startup|cnt\(1),
	datac => \u_decode_lattice_startup|cnt\(0),
	datad => \u_decode_lattice_startup|cnt\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_lattice_startup|row\(7));

-- Location: LC_X12_Y5_N1
\u_clk_2|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~55_combout\ = ((!\u_clk_2|cnt\(0)))
-- \u_clk_2|Add0~57\ = CARRY(((\u_clk_2|cnt\(0))))
-- \u_clk_2|Add0~57COUT1_141\ = CARRY(((\u_clk_2|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~55_combout\,
	cout0 => \u_clk_2|Add0~57\,
	cout1 => \u_clk_2|Add0~57COUT1_141\);

-- Location: LC_X11_Y5_N3
\u_clk_2|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(0) = DFFEAS((((\u_clk_2|Add0~55_combout\ & !\u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Add0~55_combout\,
	datad => \u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(0));

-- Location: LC_X12_Y5_N2
\u_clk_2|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~50_combout\ = (\u_clk_2|cnt\(1) $ ((\u_clk_2|Add0~57\)))
-- \u_clk_2|Add0~52\ = CARRY(((!\u_clk_2|Add0~57\) # (!\u_clk_2|cnt\(1))))
-- \u_clk_2|Add0~52COUT1_142\ = CARRY(((!\u_clk_2|Add0~57COUT1_141\) # (!\u_clk_2|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(1),
	cin0 => \u_clk_2|Add0~57\,
	cin1 => \u_clk_2|Add0~57COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~50_combout\,
	cout0 => \u_clk_2|Add0~52\,
	cout1 => \u_clk_2|Add0~52COUT1_142\);

-- Location: LC_X12_Y5_N0
\u_clk_2|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(1) = DFFEAS((((\u_clk_2|Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_2|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(1));

-- Location: LC_X12_Y5_N3
\u_clk_2|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~45_combout\ = (\u_clk_2|cnt\(2) $ ((!\u_clk_2|Add0~52\)))
-- \u_clk_2|Add0~47\ = CARRY(((\u_clk_2|cnt\(2) & !\u_clk_2|Add0~52\)))
-- \u_clk_2|Add0~47COUT1_143\ = CARRY(((\u_clk_2|cnt\(2) & !\u_clk_2|Add0~52COUT1_142\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(2),
	cin0 => \u_clk_2|Add0~52\,
	cin1 => \u_clk_2|Add0~52COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~45_combout\,
	cout0 => \u_clk_2|Add0~47\,
	cout1 => \u_clk_2|Add0~47COUT1_143\);

-- Location: LC_X11_Y5_N7
\u_clk_2|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(2));

-- Location: LC_X12_Y5_N4
\u_clk_2|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~40_combout\ = \u_clk_2|cnt\(3) $ ((((\u_clk_2|Add0~47\))))
-- \u_clk_2|Add0~42\ = CARRY(((!\u_clk_2|Add0~47COUT1_143\)) # (!\u_clk_2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|cnt\(3),
	cin0 => \u_clk_2|Add0~47\,
	cin1 => \u_clk_2|Add0~47COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~40_combout\,
	cout => \u_clk_2|Add0~42\);

-- Location: LC_X11_Y5_N5
\u_clk_2|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~2\ = (!\u_clk_2|cnt\(0) & (!\u_clk_2|cnt\(2) & (!B2_cnt[3] & !\u_clk_2|cnt\(1))))
-- \u_clk_2|cnt\(3) = DFFEAS(\u_clk_2|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|cnt\(0),
	datab => \u_clk_2|cnt\(2),
	datac => \u_clk_2|Add0~40_combout\,
	datad => \u_clk_2|cnt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~2\,
	regout => \u_clk_2|cnt\(3));

-- Location: LC_X12_Y5_N5
\u_clk_2|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~35_combout\ = \u_clk_2|cnt\(4) $ ((((!\u_clk_2|Add0~42\))))
-- \u_clk_2|Add0~37\ = CARRY((\u_clk_2|cnt\(4) & ((!\u_clk_2|Add0~42\))))
-- \u_clk_2|Add0~37COUT1_144\ = CARRY((\u_clk_2|cnt\(4) & ((!\u_clk_2|Add0~42\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|cnt\(4),
	cin => \u_clk_2|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~35_combout\,
	cout0 => \u_clk_2|Add0~37\,
	cout1 => \u_clk_2|Add0~37COUT1_144\);

-- Location: LC_X11_Y5_N9
\u_clk_2|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(4) = DFFEAS((((\u_clk_2|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_2|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(4));

-- Location: LC_X12_Y5_N6
\u_clk_2|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~20_combout\ = (\u_clk_2|cnt\(5) $ (((!\u_clk_2|Add0~42\ & \u_clk_2|Add0~37\) # (\u_clk_2|Add0~42\ & \u_clk_2|Add0~37COUT1_144\))))
-- \u_clk_2|Add0~22\ = CARRY(((!\u_clk_2|Add0~37\) # (!\u_clk_2|cnt\(5))))
-- \u_clk_2|Add0~22COUT1_145\ = CARRY(((!\u_clk_2|Add0~37COUT1_144\) # (!\u_clk_2|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(5),
	cin => \u_clk_2|Add0~42\,
	cin0 => \u_clk_2|Add0~37\,
	cin1 => \u_clk_2|Add0~37COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~20_combout\,
	cout0 => \u_clk_2|Add0~22\,
	cout1 => \u_clk_2|Add0~22COUT1_145\);

-- Location: LC_X11_Y5_N6
\u_clk_2|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(5) = DFFEAS((((\u_clk_2|Add0~20_combout\ & !\u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Add0~20_combout\,
	datad => \u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(5));

-- Location: LC_X12_Y5_N7
\u_clk_2|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~30_combout\ = (\u_clk_2|cnt\(6) $ ((!(!\u_clk_2|Add0~42\ & \u_clk_2|Add0~22\) # (\u_clk_2|Add0~42\ & \u_clk_2|Add0~22COUT1_145\))))
-- \u_clk_2|Add0~32\ = CARRY(((\u_clk_2|cnt\(6) & !\u_clk_2|Add0~22\)))
-- \u_clk_2|Add0~32COUT1_146\ = CARRY(((\u_clk_2|cnt\(6) & !\u_clk_2|Add0~22COUT1_145\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(6),
	cin => \u_clk_2|Add0~42\,
	cin0 => \u_clk_2|Add0~22\,
	cin1 => \u_clk_2|Add0~22COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~30_combout\,
	cout0 => \u_clk_2|Add0~32\,
	cout1 => \u_clk_2|Add0~32COUT1_146\);

-- Location: LC_X11_Y5_N2
\u_clk_2|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(6));

-- Location: LC_X12_Y5_N8
\u_clk_2|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~25_combout\ = \u_clk_2|cnt\(7) $ (((((!\u_clk_2|Add0~42\ & \u_clk_2|Add0~32\) # (\u_clk_2|Add0~42\ & \u_clk_2|Add0~32COUT1_146\)))))
-- \u_clk_2|Add0~27\ = CARRY(((!\u_clk_2|Add0~32\)) # (!\u_clk_2|cnt\(7)))
-- \u_clk_2|Add0~27COUT1_147\ = CARRY(((!\u_clk_2|Add0~32COUT1_146\)) # (!\u_clk_2|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|cnt\(7),
	cin => \u_clk_2|Add0~42\,
	cin0 => \u_clk_2|Add0~32\,
	cin1 => \u_clk_2|Add0~32COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~25_combout\,
	cout0 => \u_clk_2|Add0~27\,
	cout1 => \u_clk_2|Add0~27COUT1_147\);

-- Location: LC_X11_Y5_N0
\u_clk_2|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~1\ = (\u_clk_2|cnt\(5) & (!\u_clk_2|cnt\(4) & (!B2_cnt[7] & !\u_clk_2|cnt\(6))))
-- \u_clk_2|cnt\(7) = DFFEAS(\u_clk_2|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|cnt\(5),
	datab => \u_clk_2|cnt\(4),
	datac => \u_clk_2|Add0~25_combout\,
	datad => \u_clk_2|cnt\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~1\,
	regout => \u_clk_2|cnt\(7));

-- Location: LC_X12_Y5_N9
\u_clk_2|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~15_combout\ = (\u_clk_2|cnt\(8) $ ((!(!\u_clk_2|Add0~42\ & \u_clk_2|Add0~27\) # (\u_clk_2|Add0~42\ & \u_clk_2|Add0~27COUT1_147\))))
-- \u_clk_2|Add0~17\ = CARRY(((\u_clk_2|cnt\(8) & !\u_clk_2|Add0~27COUT1_147\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(8),
	cin => \u_clk_2|Add0~42\,
	cin0 => \u_clk_2|Add0~27\,
	cin1 => \u_clk_2|Add0~27COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~15_combout\,
	cout => \u_clk_2|Add0~17\);

-- Location: LC_X15_Y5_N7
\u_clk_2|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(8));

-- Location: LC_X13_Y5_N0
\u_clk_2|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~10_combout\ = (\u_clk_2|cnt\(9) $ ((\u_clk_2|Add0~17\)))
-- \u_clk_2|Add0~12\ = CARRY(((!\u_clk_2|Add0~17\) # (!\u_clk_2|cnt\(9))))
-- \u_clk_2|Add0~12COUT1_148\ = CARRY(((!\u_clk_2|Add0~17\) # (!\u_clk_2|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(9),
	cin => \u_clk_2|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~10_combout\,
	cout0 => \u_clk_2|Add0~12\,
	cout1 => \u_clk_2|Add0~12COUT1_148\);

-- Location: LC_X16_Y5_N6
\u_clk_2|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~0\ = (\u_clk_2|cnt\(11) & (\u_clk_2|cnt\(10) & (!B2_cnt[9] & !\u_clk_2|cnt\(8))))
-- \u_clk_2|cnt\(9) = DFFEAS(\u_clk_2|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|cnt\(11),
	datab => \u_clk_2|cnt\(10),
	datac => \u_clk_2|Add0~10_combout\,
	datad => \u_clk_2|cnt\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~0\,
	regout => \u_clk_2|cnt\(9));

-- Location: LC_X13_Y5_N1
\u_clk_2|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~5_combout\ = (\u_clk_2|cnt\(10) $ ((!(!\u_clk_2|Add0~17\ & \u_clk_2|Add0~12\) # (\u_clk_2|Add0~17\ & \u_clk_2|Add0~12COUT1_148\))))
-- \u_clk_2|Add0~7\ = CARRY(((\u_clk_2|cnt\(10) & !\u_clk_2|Add0~12\)))
-- \u_clk_2|Add0~7COUT1_149\ = CARRY(((\u_clk_2|cnt\(10) & !\u_clk_2|Add0~12COUT1_148\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(10),
	cin => \u_clk_2|Add0~17\,
	cin0 => \u_clk_2|Add0~12\,
	cin1 => \u_clk_2|Add0~12COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~5_combout\,
	cout0 => \u_clk_2|Add0~7\,
	cout1 => \u_clk_2|Add0~7COUT1_149\);

-- Location: LC_X16_Y5_N1
\u_clk_2|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(10) = DFFEAS((!\u_clk_2|Equal0~8_combout\ & (((\u_clk_2|Add0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(10));

-- Location: LC_X13_Y5_N2
\u_clk_2|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~0_combout\ = (\u_clk_2|cnt\(11) $ (((!\u_clk_2|Add0~17\ & \u_clk_2|Add0~7\) # (\u_clk_2|Add0~17\ & \u_clk_2|Add0~7COUT1_149\))))
-- \u_clk_2|Add0~2\ = CARRY(((!\u_clk_2|Add0~7\) # (!\u_clk_2|cnt\(11))))
-- \u_clk_2|Add0~2COUT1_150\ = CARRY(((!\u_clk_2|Add0~7COUT1_149\) # (!\u_clk_2|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(11),
	cin => \u_clk_2|Add0~17\,
	cin0 => \u_clk_2|Add0~7\,
	cin1 => \u_clk_2|Add0~7COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~0_combout\,
	cout0 => \u_clk_2|Add0~2\,
	cout1 => \u_clk_2|Add0~2COUT1_150\);

-- Location: LC_X16_Y5_N8
\u_clk_2|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(11) = DFFEAS((!\u_clk_2|Equal0~8_combout\ & (((\u_clk_2|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(11));

-- Location: LC_X13_Y5_N3
\u_clk_2|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~60_combout\ = (\u_clk_2|cnt\(12) $ ((!(!\u_clk_2|Add0~17\ & \u_clk_2|Add0~2\) # (\u_clk_2|Add0~17\ & \u_clk_2|Add0~2COUT1_150\))))
-- \u_clk_2|Add0~62\ = CARRY(((\u_clk_2|cnt\(12) & !\u_clk_2|Add0~2\)))
-- \u_clk_2|Add0~62COUT1_151\ = CARRY(((\u_clk_2|cnt\(12) & !\u_clk_2|Add0~2COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(12),
	cin => \u_clk_2|Add0~17\,
	cin0 => \u_clk_2|Add0~2\,
	cin1 => \u_clk_2|Add0~2COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~60_combout\,
	cout0 => \u_clk_2|Add0~62\,
	cout1 => \u_clk_2|Add0~62COUT1_151\);

-- Location: LC_X16_Y5_N4
\u_clk_2|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(12) = DFFEAS((!\u_clk_2|Equal0~8_combout\ & (((\u_clk_2|Add0~60_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(12));

-- Location: LC_X13_Y5_N4
\u_clk_2|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~65_combout\ = (\u_clk_2|cnt\(13) $ (((!\u_clk_2|Add0~17\ & \u_clk_2|Add0~62\) # (\u_clk_2|Add0~17\ & \u_clk_2|Add0~62COUT1_151\))))
-- \u_clk_2|Add0~67\ = CARRY(((!\u_clk_2|Add0~62COUT1_151\) # (!\u_clk_2|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(13),
	cin => \u_clk_2|Add0~17\,
	cin0 => \u_clk_2|Add0~62\,
	cin1 => \u_clk_2|Add0~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~65_combout\,
	cout => \u_clk_2|Add0~67\);

-- Location: LC_X16_Y5_N5
\u_clk_2|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(13) = DFFEAS((!\u_clk_2|Equal0~8_combout\ & (((\u_clk_2|Add0~65_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(13));

-- Location: LC_X14_Y5_N0
\u_clk_2|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~90_combout\ = \u_clk_2|cnt\(19) $ ((((\u_clk_2|Add0~87\))))
-- \u_clk_2|Add0~92\ = CARRY(((!\u_clk_2|Add0~87\)) # (!\u_clk_2|cnt\(19)))
-- \u_clk_2|Add0~92COUT1_156\ = CARRY(((!\u_clk_2|Add0~87\)) # (!\u_clk_2|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|cnt\(19),
	cin => \u_clk_2|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~90_combout\,
	cout0 => \u_clk_2|Add0~92\,
	cout1 => \u_clk_2|Add0~92COUT1_156\);

-- Location: LC_X15_Y5_N0
\u_clk_2|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(19) = DFFEAS((((!\u_clk_2|Equal0~8_combout\ & \u_clk_2|Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(19));

-- Location: LC_X13_Y5_N5
\u_clk_2|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~75_combout\ = (\u_clk_2|cnt\(14) $ ((!\u_clk_2|Add0~67\)))
-- \u_clk_2|Add0~77\ = CARRY(((\u_clk_2|cnt\(14) & !\u_clk_2|Add0~67\)))
-- \u_clk_2|Add0~77COUT1_152\ = CARRY(((\u_clk_2|cnt\(14) & !\u_clk_2|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(14),
	cin => \u_clk_2|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~75_combout\,
	cout0 => \u_clk_2|Add0~77\,
	cout1 => \u_clk_2|Add0~77COUT1_152\);

-- Location: LC_X16_Y5_N7
\u_clk_2|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~3\ = (\u_clk_2|cnt\(13) & (\u_clk_2|cnt\(15) & (!B2_cnt[14] & \u_clk_2|cnt\(12))))
-- \u_clk_2|cnt\(14) = DFFEAS(\u_clk_2|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|cnt\(13),
	datab => \u_clk_2|cnt\(15),
	datac => \u_clk_2|Add0~75_combout\,
	datad => \u_clk_2|cnt\(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~3\,
	regout => \u_clk_2|cnt\(14));

-- Location: LC_X13_Y5_N6
\u_clk_2|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~70_combout\ = \u_clk_2|cnt\(15) $ (((((!\u_clk_2|Add0~67\ & \u_clk_2|Add0~77\) # (\u_clk_2|Add0~67\ & \u_clk_2|Add0~77COUT1_152\)))))
-- \u_clk_2|Add0~72\ = CARRY(((!\u_clk_2|Add0~77\)) # (!\u_clk_2|cnt\(15)))
-- \u_clk_2|Add0~72COUT1_153\ = CARRY(((!\u_clk_2|Add0~77COUT1_152\)) # (!\u_clk_2|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|cnt\(15),
	cin => \u_clk_2|Add0~67\,
	cin0 => \u_clk_2|Add0~77\,
	cin1 => \u_clk_2|Add0~77COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~70_combout\,
	cout0 => \u_clk_2|Add0~72\,
	cout1 => \u_clk_2|Add0~72COUT1_153\);

-- Location: LC_X16_Y5_N0
\u_clk_2|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(15) = DFFEAS((((\u_clk_2|Add0~70_combout\ & !\u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Add0~70_combout\,
	datad => \u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(15));

-- Location: LC_X13_Y5_N7
\u_clk_2|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~95_combout\ = (\u_clk_2|cnt\(16) $ ((!(!\u_clk_2|Add0~67\ & \u_clk_2|Add0~72\) # (\u_clk_2|Add0~67\ & \u_clk_2|Add0~72COUT1_153\))))
-- \u_clk_2|Add0~97\ = CARRY(((\u_clk_2|cnt\(16) & !\u_clk_2|Add0~72\)))
-- \u_clk_2|Add0~97COUT1_154\ = CARRY(((\u_clk_2|cnt\(16) & !\u_clk_2|Add0~72COUT1_153\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(16),
	cin => \u_clk_2|Add0~67\,
	cin0 => \u_clk_2|Add0~72\,
	cin1 => \u_clk_2|Add0~72COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~95_combout\,
	cout0 => \u_clk_2|Add0~97\,
	cout1 => \u_clk_2|Add0~97COUT1_154\);

-- Location: LC_X14_Y5_N9
\u_clk_2|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~5\ = (\u_clk_2|cnt\(19) & (\u_clk_2|cnt\(17) & (!B2_cnt[16] & \u_clk_2|cnt\(18))))
-- \u_clk_2|cnt\(16) = DFFEAS(\u_clk_2|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|cnt\(19),
	datab => \u_clk_2|cnt\(17),
	datac => \u_clk_2|Add0~95_combout\,
	datad => \u_clk_2|cnt\(18),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~5\,
	regout => \u_clk_2|cnt\(16));

-- Location: LC_X13_Y5_N8
\u_clk_2|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~80_combout\ = (\u_clk_2|cnt\(17) $ (((!\u_clk_2|Add0~67\ & \u_clk_2|Add0~97\) # (\u_clk_2|Add0~67\ & \u_clk_2|Add0~97COUT1_154\))))
-- \u_clk_2|Add0~82\ = CARRY(((!\u_clk_2|Add0~97\) # (!\u_clk_2|cnt\(17))))
-- \u_clk_2|Add0~82COUT1_155\ = CARRY(((!\u_clk_2|Add0~97COUT1_154\) # (!\u_clk_2|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(17),
	cin => \u_clk_2|Add0~67\,
	cin0 => \u_clk_2|Add0~97\,
	cin1 => \u_clk_2|Add0~97COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~80_combout\,
	cout0 => \u_clk_2|Add0~82\,
	cout1 => \u_clk_2|Add0~82COUT1_155\);

-- Location: LC_X15_Y5_N8
\u_clk_2|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(17) = DFFEAS((((!\u_clk_2|Equal0~8_combout\ & \u_clk_2|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(17));

-- Location: LC_X13_Y5_N9
\u_clk_2|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~85_combout\ = (\u_clk_2|cnt\(18) $ ((!(!\u_clk_2|Add0~67\ & \u_clk_2|Add0~82\) # (\u_clk_2|Add0~67\ & \u_clk_2|Add0~82COUT1_155\))))
-- \u_clk_2|Add0~87\ = CARRY(((\u_clk_2|cnt\(18) & !\u_clk_2|Add0~82COUT1_155\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(18),
	cin => \u_clk_2|Add0~67\,
	cin0 => \u_clk_2|Add0~82\,
	cin1 => \u_clk_2|Add0~82COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~85_combout\,
	cout => \u_clk_2|Add0~87\);

-- Location: LC_X15_Y5_N6
\u_clk_2|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(18) = DFFEAS((((!\u_clk_2|Equal0~8_combout\ & \u_clk_2|Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(18));

-- Location: LC_X14_Y5_N1
\u_clk_2|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~100_combout\ = (\u_clk_2|cnt\(20) $ ((!(!\u_clk_2|Add0~87\ & \u_clk_2|Add0~92\) # (\u_clk_2|Add0~87\ & \u_clk_2|Add0~92COUT1_156\))))
-- \u_clk_2|Add0~102\ = CARRY(((\u_clk_2|cnt\(20) & !\u_clk_2|Add0~92\)))
-- \u_clk_2|Add0~102COUT1_157\ = CARRY(((\u_clk_2|cnt\(20) & !\u_clk_2|Add0~92COUT1_156\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(20),
	cin => \u_clk_2|Add0~87\,
	cin0 => \u_clk_2|Add0~92\,
	cin1 => \u_clk_2|Add0~92COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~100_combout\,
	cout0 => \u_clk_2|Add0~102\,
	cout1 => \u_clk_2|Add0~102COUT1_157\);

-- Location: LC_X15_Y5_N5
\u_clk_2|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(20) = DFFEAS((\u_clk_2|Add0~100_combout\ & (((!\u_clk_2|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|Add0~100_combout\,
	datac => \u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(20));

-- Location: LC_X14_Y5_N2
\u_clk_2|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~105_combout\ = \u_clk_2|cnt\(21) $ (((((!\u_clk_2|Add0~87\ & \u_clk_2|Add0~102\) # (\u_clk_2|Add0~87\ & \u_clk_2|Add0~102COUT1_157\)))))
-- \u_clk_2|Add0~107\ = CARRY(((!\u_clk_2|Add0~102\)) # (!\u_clk_2|cnt\(21)))
-- \u_clk_2|Add0~107COUT1_158\ = CARRY(((!\u_clk_2|Add0~102COUT1_157\)) # (!\u_clk_2|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|cnt\(21),
	cin => \u_clk_2|Add0~87\,
	cin0 => \u_clk_2|Add0~102\,
	cin1 => \u_clk_2|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~105_combout\,
	cout0 => \u_clk_2|Add0~107\,
	cout1 => \u_clk_2|Add0~107COUT1_158\);

-- Location: LC_X15_Y5_N1
\u_clk_2|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(21) = DFFEAS((((!\u_clk_2|Equal0~8_combout\ & \u_clk_2|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(21));

-- Location: LC_X14_Y5_N3
\u_clk_2|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~115_combout\ = (\u_clk_2|cnt\(22) $ ((!(!\u_clk_2|Add0~87\ & \u_clk_2|Add0~107\) # (\u_clk_2|Add0~87\ & \u_clk_2|Add0~107COUT1_158\))))
-- \u_clk_2|Add0~117\ = CARRY(((\u_clk_2|cnt\(22) & !\u_clk_2|Add0~107\)))
-- \u_clk_2|Add0~117COUT1_159\ = CARRY(((\u_clk_2|cnt\(22) & !\u_clk_2|Add0~107COUT1_158\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(22),
	cin => \u_clk_2|Add0~87\,
	cin0 => \u_clk_2|Add0~107\,
	cin1 => \u_clk_2|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~115_combout\,
	cout0 => \u_clk_2|Add0~117\,
	cout1 => \u_clk_2|Add0~117COUT1_159\);

-- Location: LC_X14_Y5_N4
\u_clk_2|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~110_combout\ = (\u_clk_2|cnt\(23) $ (((!\u_clk_2|Add0~87\ & \u_clk_2|Add0~117\) # (\u_clk_2|Add0~87\ & \u_clk_2|Add0~117COUT1_159\))))
-- \u_clk_2|Add0~112\ = CARRY(((!\u_clk_2|Add0~117COUT1_159\) # (!\u_clk_2|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(23),
	cin => \u_clk_2|Add0~87\,
	cin0 => \u_clk_2|Add0~117\,
	cin1 => \u_clk_2|Add0~117COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~110_combout\,
	cout => \u_clk_2|Add0~112\);

-- Location: LC_X15_Y5_N2
\u_clk_2|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(23) = DFFEAS((((!\u_clk_2|Equal0~8_combout\ & \u_clk_2|Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Equal0~8_combout\,
	datad => \u_clk_2|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(23));

-- Location: LC_X15_Y5_N9
\u_clk_2|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~6\ = (\u_clk_2|cnt\(20) & (\u_clk_2|cnt\(21) & (!B2_cnt[22] & \u_clk_2|cnt\(23))))
-- \u_clk_2|cnt\(22) = DFFEAS(\u_clk_2|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|cnt\(20),
	datab => \u_clk_2|cnt\(21),
	datac => \u_clk_2|Add0~115_combout\,
	datad => \u_clk_2|cnt\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~6\,
	regout => \u_clk_2|cnt\(22));

-- Location: LC_X14_Y5_N5
\u_clk_2|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~120_combout\ = \u_clk_2|cnt\(24) $ ((((!\u_clk_2|Add0~112\))))
-- \u_clk_2|Add0~122\ = CARRY((\u_clk_2|cnt\(24) & ((!\u_clk_2|Add0~112\))))
-- \u_clk_2|Add0~122COUT1_160\ = CARRY((\u_clk_2|cnt\(24) & ((!\u_clk_2|Add0~112\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|cnt\(24),
	cin => \u_clk_2|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~120_combout\,
	cout0 => \u_clk_2|Add0~122\,
	cout1 => \u_clk_2|Add0~122COUT1_160\);

-- Location: LC_X15_Y6_N6
\u_clk_2|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~7\ = (!\u_clk_2|cnt\(27) & (!\u_clk_2|cnt\(25) & (!B2_cnt[24] & !\u_clk_2|cnt\(26))))
-- \u_clk_2|cnt\(24) = DFFEAS(\u_clk_2|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_clk_2|cnt\(27),
	datab => \u_clk_2|cnt\(25),
	datac => \u_clk_2|Add0~120_combout\,
	datad => \u_clk_2|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~7\,
	regout => \u_clk_2|cnt\(24));

-- Location: LC_X14_Y5_N6
\u_clk_2|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~125_combout\ = (\u_clk_2|cnt\(25) $ (((!\u_clk_2|Add0~112\ & \u_clk_2|Add0~122\) # (\u_clk_2|Add0~112\ & \u_clk_2|Add0~122COUT1_160\))))
-- \u_clk_2|Add0~127\ = CARRY(((!\u_clk_2|Add0~122\) # (!\u_clk_2|cnt\(25))))
-- \u_clk_2|Add0~127COUT1_161\ = CARRY(((!\u_clk_2|Add0~122COUT1_160\) # (!\u_clk_2|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(25),
	cin => \u_clk_2|Add0~112\,
	cin0 => \u_clk_2|Add0~122\,
	cin1 => \u_clk_2|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~125_combout\,
	cout0 => \u_clk_2|Add0~127\,
	cout1 => \u_clk_2|Add0~127COUT1_161\);

-- Location: LC_X15_Y6_N9
\u_clk_2|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_clk_2|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_clk_2|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(25));

-- Location: LC_X14_Y5_N7
\u_clk_2|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~130_combout\ = (\u_clk_2|cnt\(26) $ ((!(!\u_clk_2|Add0~112\ & \u_clk_2|Add0~127\) # (\u_clk_2|Add0~112\ & \u_clk_2|Add0~127COUT1_161\))))
-- \u_clk_2|Add0~132\ = CARRY(((\u_clk_2|cnt\(26) & !\u_clk_2|Add0~127\)))
-- \u_clk_2|Add0~132COUT1_162\ = CARRY(((\u_clk_2|cnt\(26) & !\u_clk_2|Add0~127COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_2|cnt\(26),
	cin => \u_clk_2|Add0~112\,
	cin0 => \u_clk_2|Add0~127\,
	cin1 => \u_clk_2|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~130_combout\,
	cout0 => \u_clk_2|Add0~132\,
	cout1 => \u_clk_2|Add0~132COUT1_162\);

-- Location: LC_X15_Y5_N3
\u_clk_2|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(26) = DFFEAS((((\u_clk_2|Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_2|Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(26));

-- Location: LC_X14_Y5_N8
\u_clk_2|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Add0~135_combout\ = (((!\u_clk_2|Add0~112\ & \u_clk_2|Add0~132\) # (\u_clk_2|Add0~112\ & \u_clk_2|Add0~132COUT1_162\) $ (\u_clk_2|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_clk_2|cnt\(27),
	cin => \u_clk_2|Add0~112\,
	cin0 => \u_clk_2|Add0~132\,
	cin1 => \u_clk_2|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Add0~135_combout\);

-- Location: LC_X15_Y6_N8
\u_clk_2|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|cnt\(27) = DFFEAS((((\u_clk_2|Add0~135_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_clk_2|Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|cnt\(27));

-- Location: LC_X16_Y5_N2
\u_clk_2|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~4_combout\ = (\u_clk_2|Equal0~0\ & (\u_clk_2|Equal0~3\ & (\u_clk_2|Equal0~1\ & \u_clk_2|Equal0~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|Equal0~0\,
	datab => \u_clk_2|Equal0~3\,
	datac => \u_clk_2|Equal0~1\,
	datad => \u_clk_2|Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~4_combout\);

-- Location: LC_X16_Y5_N3
\u_clk_2|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|Equal0~8_combout\ = (\u_clk_2|Equal0~6\ & (\u_clk_2|Equal0~7\ & (\u_clk_2|Equal0~5\ & \u_clk_2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_2|Equal0~6\,
	datab => \u_clk_2|Equal0~7\,
	datac => \u_clk_2|Equal0~5\,
	datad => \u_clk_2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clk_2|Equal0~8_combout\);

-- Location: LC_X16_Y5_N9
\u_clk_2|clkout\ : maxii_lcell
-- Equation(s):
-- \u_clk_2|clkout~regout\ = DFFEAS((\u_clk_2|clkout~regout\ $ (((\u_clk_2|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_clk_2|clkout~regout\,
	datad => \u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clk_2|clkout~regout\);

-- Location: LC_X10_Y4_N2
flag : maxii_lcell
-- Equation(s):
-- \flag~regout\ = DFFEAS((((!\code_test~0_combout\))), GLOBAL(\u_clk_2|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_2|clkout~regout\,
	datad => \code_test~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \flag~regout\);

-- Location: LC_X10_Y4_N7
\cnt[2]\ : maxii_lcell
-- Equation(s):
-- cnt(2) = DFFEAS(cnt(2) $ (((cnt(1) & (!\flag~regout\ & cnt(0))))), GLOBAL(\u_clk_2|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_2|clkout~regout\,
	dataa => cnt(1),
	datab => \flag~regout\,
	datac => cnt(2),
	datad => cnt(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LC_X10_Y4_N4
\cnt[0]\ : maxii_lcell
-- Equation(s):
-- cnt(0) = DFFEAS((cnt(0) & (((\flag~regout\)))) # (!cnt(0) & (!\flag~regout\ & ((!cnt(1)) # (!cnt(2))))), GLOBAL(\u_clk_2|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f007",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_2|clkout~regout\,
	dataa => cnt(2),
	datab => cnt(1),
	datac => cnt(0),
	datad => \flag~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LC_X10_Y4_N8
\cnt[1]\ : maxii_lcell
-- Equation(s):
-- cnt(1) = DFFEAS(cnt(1) $ ((((cnt(0) & !\flag~regout\)))), GLOBAL(\u_clk_2|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_2|clkout~regout\,
	dataa => cnt(1),
	datac => cnt(0),
	datad => \flag~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LC_X10_Y4_N1
\code_test~0\ : maxii_lcell
-- Equation(s):
-- \code_test~0_combout\ = (!\flag~regout\ & (((cnt(0)) # (!cnt(2))) # (!cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(2),
	datac => cnt(0),
	datad => \flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \code_test~0_combout\);

-- Location: LC_X10_Y4_N5
code_test : maxii_lcell
-- Equation(s):
-- \code_test~regout\ = DFFEAS((((!\code_test~0_combout\) # (!\code_test~regout\))), GLOBAL(\u_clk_2|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_2|clkout~regout\,
	datac => \code_test~regout\,
	datad => \code_test~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \code_test~regout\);

-- Location: LC_X4_Y5_N4
\u_decode_seg_startup|digit_cath[1]~0\ : maxii_lcell
-- Equation(s):
-- \u_decode_seg_startup|digit_cath[1]~0_combout\ = (((!\u_decode_lattice_startup|cnt\(2)) # (!\u_decode_lattice_startup|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_decode_lattice_startup|cnt\(1),
	datad => \u_decode_lattice_startup|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_decode_seg_startup|digit_cath[1]~0_combout\);

-- Location: LC_X4_Y5_N3
\u_decode_seg_startup|digit_cath[0]\ : maxii_lcell
-- Equation(s):
-- \u_decode_seg_startup|digit_cath\(0) = DFFEAS((((!\u_decode_lattice_startup|Decoder0~0_combout\))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , \u_decode_seg_startup|digit_cath[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datad => \u_decode_lattice_startup|Decoder0~0_combout\,
	aclr => GND,
	ena => \u_decode_seg_startup|digit_cath[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_seg_startup|digit_cath\(0));

-- Location: LC_X4_Y5_N9
\u_decode_seg_startup|digit_cath[1]\ : maxii_lcell
-- Equation(s):
-- \u_decode_seg_startup|digit_cath\(1) = DFFEAS((((!\u_decode_lattice_startup|Decoder0~1_combout\))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , \u_decode_seg_startup|digit_cath[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datad => \u_decode_lattice_startup|Decoder0~1_combout\,
	aclr => GND,
	ena => \u_decode_seg_startup|digit_cath[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_seg_startup|digit_cath\(1));

-- Location: LC_X4_Y5_N8
\u_decode_seg_startup|digit_cath[2]\ : maxii_lcell
-- Equation(s):
-- \u_decode_seg_startup|digit_cath\(2) = DFFEAS((((!\u_decode_lattice_startup|Decoder0~2_combout\))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , \u_decode_seg_startup|digit_cath[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datad => \u_decode_lattice_startup|Decoder0~2_combout\,
	aclr => GND,
	ena => \u_decode_seg_startup|digit_cath[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_seg_startup|digit_cath\(2));

-- Location: LC_X4_Y5_N5
\u_decode_seg_startup|digit_cath[3]\ : maxii_lcell
-- Equation(s):
-- \u_decode_seg_startup|digit_cath\(3) = DFFEAS((((!\u_decode_lattice_startup|Decoder0~3_combout\))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , \u_decode_seg_startup|digit_cath[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datad => \u_decode_lattice_startup|Decoder0~3_combout\,
	aclr => GND,
	ena => \u_decode_seg_startup|digit_cath[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_seg_startup|digit_cath\(3));

-- Location: LC_X4_Y5_N6
\u_decode_seg_startup|digit_cath[4]\ : maxii_lcell
-- Equation(s):
-- \u_decode_seg_startup|digit_cath\(4) = DFFEAS((((\u_decode_lattice_startup|cnt\(0)) # (!\u_decode_lattice_startup|cnt\(2)))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , \u_decode_seg_startup|digit_cath[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datac => \u_decode_lattice_startup|cnt\(2),
	datad => \u_decode_lattice_startup|cnt\(0),
	aclr => GND,
	ena => \u_decode_seg_startup|digit_cath[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_seg_startup|digit_cath\(4));

-- Location: LC_X4_Y5_N2
\u_decode_seg_startup|digit_cath[5]\ : maxii_lcell
-- Equation(s):
-- \u_decode_seg_startup|digit_cath\(5) = DFFEAS((((!\u_decode_lattice_startup|cnt\(0)) # (!\u_decode_lattice_startup|cnt\(2)))), GLOBAL(\u_clk_500|clkout~regout\), VCC, , \u_decode_seg_startup|digit_cath[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_500|clkout~regout\,
	datac => \u_decode_lattice_startup|cnt\(2),
	datad => \u_decode_lattice_startup|cnt\(0),
	aclr => GND,
	ena => \u_decode_seg_startup|digit_cath[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_decode_seg_startup|digit_cath\(5));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_lattice_startup|row\(0),
	oe => VCC,
	padio => ww_row(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_lattice_startup|row\(1),
	oe => VCC,
	padio => ww_row(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_lattice_startup|row\(2),
	oe => VCC,
	padio => ww_row(2));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_lattice_startup|row\(3),
	oe => VCC,
	padio => ww_row(3));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_lattice_startup|row\(4),
	oe => VCC,
	padio => ww_row(4));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_lattice_startup|row\(5),
	oe => VCC,
	padio => ww_row(5));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_lattice_startup|row\(6),
	oe => VCC,
	padio => ww_row(6));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_lattice_startup|row\(7),
	oe => VCC,
	padio => ww_row(7));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_col(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_col(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_col(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_col(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_col(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_col(5));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_col(6));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_col(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_digit_scan(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_digit_scan(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_digit_scan(2));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_digit_scan(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_digit_scan(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_digit_scan(5));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_digit_scan(6));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_code_test~regout\,
	oe => VCC,
	padio => ww_digit_scan(7));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_seg_startup|digit_cath\(0),
	oe => VCC,
	padio => ww_digit_cath(0));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_seg_startup|digit_cath\(1),
	oe => VCC,
	padio => ww_digit_cath(1));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_seg_startup|digit_cath\(2),
	oe => VCC,
	padio => ww_digit_cath(2));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_seg_startup|digit_cath\(3),
	oe => VCC,
	padio => ww_digit_cath(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_seg_startup|digit_cath\(4),
	oe => VCC,
	padio => ww_digit_cath(4));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_decode_seg_startup|digit_cath\(5),
	oe => VCC,
	padio => ww_digit_cath(5));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_digit_cath(6));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_digit_cath(7));
END structure;


