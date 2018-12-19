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

-- DATE "12/07/2018 21:52:59"

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

ENTITY 	selecting_machine_startup_test IS
    PORT (
	clk : IN std_logic;
	sw : IN std_logic;
	BTN_7 : IN std_logic;
	BTN : IN std_logic_vector(6 DOWNTO 0);
	row : OUT std_logic_vector(7 DOWNTO 0);
	col : OUT std_logic_vector(7 DOWNTO 0);
	digit_scan : OUT std_logic_vector(7 DOWNTO 0);
	digit_cath : OUT std_logic_vector(7 DOWNTO 0)
	);
END selecting_machine_startup_test;

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
-- sw	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BTN_7	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BTN[6]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BTN[5]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BTN[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BTN[3]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BTN[2]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BTN[1]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BTN[0]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF selecting_machine_startup_test IS
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
SIGNAL ww_sw : std_logic;
SIGNAL ww_BTN_7 : std_logic;
SIGNAL ww_BTN : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_col : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_digit_scan : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_digit_cath : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~30_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~0_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~2\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~2COUT1_144\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~5_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~7\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~7COUT1_145\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~20_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~32\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~32COUT1_141\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~25_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~22\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~22COUT1_146\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~35_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~27\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~27COUT1_142\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~15_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~17\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~17COUT1_143\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~10_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~12\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~37\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~37COUT1_147\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~40_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~42\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~60_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~62\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~62COUT1_152\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~65_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~45_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~47\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~47COUT1_148\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~50_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~52\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~52COUT1_149\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~55_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~57\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~57COUT1_150\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~70_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~72\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~72COUT1_151\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~75_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~77\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~67\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~67COUT1_153\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~80_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~82\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~82COUT1_154\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~85_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~87\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~87COUT1_155\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~90_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~92\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~95_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~5\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~97\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~97COUT1_156\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~100_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~102\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~102COUT1_157\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~105_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~107\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~107COUT1_158\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~110_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~112\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~112COUT1_159\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~115_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~117\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~127\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~130_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~132\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~135_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~120_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~122\ : std_logic;
SIGNAL \u_startup|u_clk_500|Add0~125_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~7\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~6\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~1\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~0\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~2\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~3\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~4_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|Equal0~8_combout\ : std_logic;
SIGNAL \u_startup|u_clk_500|clkout~regout\ : std_logic;
SIGNAL \u_startup|u_decode_lattice_startup|Decoder0~0_combout\ : std_logic;
SIGNAL \u_basic|u_clk_500|clkout~regout\ : std_logic;
SIGNAL \BTN_7~combout\ : std_logic;
SIGNAL \sw~combout\ : std_logic;
SIGNAL \row~0_combout\ : std_logic;
SIGNAL \u_startup|u_decode_lattice_startup|Decoder0~1_combout\ : std_logic;
SIGNAL \row~1_combout\ : std_logic;
SIGNAL \u_startup|u_decode_lattice_startup|Decoder0~2_combout\ : std_logic;
SIGNAL \row~2_combout\ : std_logic;
SIGNAL \u_startup|u_decode_lattice_startup|Decoder0~3_combout\ : std_logic;
SIGNAL \row~3_combout\ : std_logic;
SIGNAL \row~4_combout\ : std_logic;
SIGNAL \row~5_combout\ : std_logic;
SIGNAL \row~6_combout\ : std_logic;
SIGNAL \row~7_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~55_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~57\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~57COUT1_141\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~50_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~52\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~52COUT1_142\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~45_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~47\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~47COUT1_143\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~40_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~42\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~35_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~37\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~37COUT1_144\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~20_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~22\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~22COUT1_145\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~30_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~32\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~32COUT1_146\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~25_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~27\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~27COUT1_147\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~15_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~17\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~10_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~12\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~12COUT1_148\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~5_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~7\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~7COUT1_149\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~0_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~2\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~2COUT1_150\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~60_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~62\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~62COUT1_151\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~65_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~67\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~90_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~75_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~77\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~77COUT1_152\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~70_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~72\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~72COUT1_153\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~95_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~97\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~97COUT1_154\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~80_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~82\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~82COUT1_155\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~85_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~87\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~92\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~92COUT1_156\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~100_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~102\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~102COUT1_157\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~105_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~107\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~107COUT1_158\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~115_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~117\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~117COUT1_159\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~110_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~112\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~132\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~135_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~120_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~122\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~125_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~127\ : std_logic;
SIGNAL \u_startup|u_clk_2|Add0~130_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~7\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~5\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~6\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~3\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~1\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~0\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~2\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~4_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|Equal0~8_combout\ : std_logic;
SIGNAL \u_basic|u_clk_6|clkout~regout\ : std_logic;
SIGNAL \u_basic|u_debounce|WideOr0~0\ : std_logic;
SIGNAL \u_basic|u_debounce|WideOr0~2\ : std_logic;
SIGNAL \u_basic|u_debounce|WideOr0~1\ : std_logic;
SIGNAL \u_basic|u_debounce|WideOr0~3_combout\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[0]~5\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[0]~5COUT1_37\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[1]~7\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[1]~7COUT1_38\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[2]~9\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[2]~9COUT1_39\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[3]~11\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[4]~13\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[4]~13COUT1_40\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[5]~15\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[5]~15COUT1_41\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[6]~17\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[6]~17COUT1_42\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[7]~19\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[7]~19COUT1_43\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[8]~21\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[9]~23\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[9]~23COUT1_44\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[10]~25\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[10]~25COUT1_45\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[11]~27\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[11]~27COUT1_46\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[12]~29\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[12]~29COUT1_47\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[13]~31\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[14]~33\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[14]~33COUT1_48\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[15]~35\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[15]~35COUT1_49\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[16]~1\ : std_logic;
SIGNAL \u_basic|u_debounce|cnt[16]~1COUT1_50\ : std_logic;
SIGNAL \u_basic|u_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_basic|u_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \u_basic|u_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \u_basic|u_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \u_basic|u_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \u_basic|u_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \u_basic|u_flag|always0~0\ : std_logic;
SIGNAL \u_basic|u_sequencer_chi|Add0~0_combout\ : std_logic;
SIGNAL \u_basic|u2|col_temp[19]~0_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~0_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~1_combout\ : std_logic;
SIGNAL \u_startup|u_clk_2|clkout~regout\ : std_logic;
SIGNAL \u_startup|flag~regout\ : std_logic;
SIGNAL \u_startup|code_test~0_combout\ : std_logic;
SIGNAL \u_startup|code_test~regout\ : std_logic;
SIGNAL \col~0_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux6~2_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux6~0_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux6~1_combout\ : std_logic;
SIGNAL \col~1_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~6_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~3_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~5_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~4_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux5~0_combout\ : std_logic;
SIGNAL \col~2_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~8_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~7\ : std_logic;
SIGNAL \u_basic|u2|Mux4~1_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux4~2_combout\ : std_logic;
SIGNAL \col~3_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~11_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~10_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~9_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux3~0_combout\ : std_logic;
SIGNAL \col~4_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux2~0_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux2~1_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux2~2_combout\ : std_logic;
SIGNAL \col~5_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~13_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux7~12_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux1~0_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux1~1_combout\ : std_logic;
SIGNAL \col~6_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux0~0_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux0~1_combout\ : std_logic;
SIGNAL \u_basic|u2|Mux0~2_combout\ : std_logic;
SIGNAL \col~7_combout\ : std_logic;
SIGNAL \digit_scan~0_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~45_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~25_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~27\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~27COUT1_144\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~20_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~22\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~22COUT1_145\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~5_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~7\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~7COUT1_146\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~0_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~10_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~12\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~12COUT1_148\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~50_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~52\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~52COUT1_149\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~55_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~47\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~47COUT1_141\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~40_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~42\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~42COUT1_142\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~35_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~37\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~37COUT1_143\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~30_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~32\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~2\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~2COUT1_147\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~15_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~17\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~57\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~57COUT1_150\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~60_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~62\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~62COUT1_151\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~65_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~67\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~70_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~72\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~72COUT1_152\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~75_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~77\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~77COUT1_153\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~85_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~95_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~87\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~87COUT1_154\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~80_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~82\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~82COUT1_155\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~90_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~92\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~97\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~97COUT1_156\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~100_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~102\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~102COUT1_157\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~105_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~107\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~107COUT1_158\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~110_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~112\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~112COUT1_159\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~115_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~6\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~5\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~117\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~127\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~130_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~132\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~135_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~120_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~122\ : std_logic;
SIGNAL \u_basic|u_clk_4|Add0~125_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~7\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~1\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~3\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~0\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~2\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~4_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|Equal0~8_combout\ : std_logic;
SIGNAL \u_basic|u_clk_4|clkout~regout\ : std_logic;
SIGNAL \u_basic|u_flag|flag[4]~0\ : std_logic;
SIGNAL \u_basic|u_flag|always0~1\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~35_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~37\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~37COUT1_141\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~30_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~32\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~32COUT1_142\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~25_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~27\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~27COUT1_143\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~20_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~22\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~15_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~17\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~17COUT1_144\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~10_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~12\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~12COUT1_145\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~0_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~2\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~2COUT1_146\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~5_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~7\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~7COUT1_147\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~40_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~42\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~60_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~45_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~47\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~47COUT1_148\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~55_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~57\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~57COUT1_149\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~50_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~52\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~52COUT1_150\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~65_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~62\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~62COUT1_152\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~75_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~67\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~67COUT1_151\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~70_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~72\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~85_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~77\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~77COUT1_153\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~90_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~92\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~92COUT1_154\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~95_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~97\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~97COUT1_155\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~80_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~82\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~87\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~87COUT1_156\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~105_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~107\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~107COUT1_157\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~110_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~112\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~112COUT1_158\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~100_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~102\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~102COUT1_159\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~115_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~117\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~127\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~130_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~132\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~135_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~120_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~122\ : std_logic;
SIGNAL \u_basic|u_clk_3|Add0~125_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~7\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~5\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~6\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~2\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~3\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~1\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~0\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~4_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|Equal0~8_combout\ : std_logic;
SIGNAL \u_basic|u_clk_3|clkout~regout\ : std_logic;
SIGNAL \u_basic|u_flag|always0~2\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~35_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~37\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~37COUT1_141\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~30_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~32\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~32COUT1_142\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~25_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~27\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~27COUT1_143\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~20_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~22\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~15_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~17\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~17COUT1_144\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~5_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~7\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~7COUT1_145\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~10_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~12\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~12COUT1_146\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~0_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~2\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~2COUT1_147\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~40_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~42\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~70_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~50_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~52\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~52COUT1_148\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~45_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~47\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~47COUT1_149\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~55_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~57\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~57COUT1_150\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~65_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~72\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~72COUT1_152\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~75_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~67\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~67COUT1_151\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~60_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~62\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~77\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~77COUT1_153\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~92COUT1_154\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~82\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~82COUT1_155\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~85_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~90_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~87\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~95_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~92\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~80_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~5\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~97\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~97COUT1_156\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~105_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~107\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~107COUT1_157\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~100_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~102\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~102COUT1_158\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~110_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~112\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~112COUT1_159\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~115_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~117\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~127\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~130_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~120_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~132\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~135_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~122\ : std_logic;
SIGNAL \u_basic|u_clk_2|Add0~125_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~7\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~6\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~3\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~1\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~2\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~0\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~4_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|Equal0~8_combout\ : std_logic;
SIGNAL \u_basic|u_clk_2|clkout~regout\ : std_logic;
SIGNAL \u_basic|u_flag|always0~3\ : std_logic;
SIGNAL \u_basic|u_flag|flag[0]~3_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~50_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~52\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~52COUT1_148\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~40_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~10_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~12\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~12COUT1_144\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~5_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~7\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~7COUT1_145\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~0_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~2\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~2COUT1_146\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~20_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~35_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~37\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~37COUT1_141\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~30_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~32\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~32COUT1_142\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~25_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~27\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~27COUT1_143\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~15_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~17\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~22\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~22COUT1_147\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~45_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~42\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~42COUT1_149\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~55_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~47\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~75_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~77\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~77COUT1_152\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~60_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~57\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~57COUT1_150\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~65_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~67\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~67COUT1_151\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~70_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~72\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~62\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~62COUT1_153\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~95_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~97COUT1_154\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~82COUT1_155\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~87\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~90_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~97\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~80_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~82\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~85_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~5\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~92\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~92COUT1_156\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~100_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~102\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~102COUT1_157\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~105_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~107\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~107COUT1_158\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~110_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~112\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~112COUT1_159\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~115_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~117\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~120_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~132\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~135_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~122\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~125_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~127\ : std_logic;
SIGNAL \u_basic|u_clk_1|Add0~130_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~7\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~6\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~2\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~3\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~1\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~0\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~4_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|Equal0~8_combout\ : std_logic;
SIGNAL \u_basic|u_clk_1|clkout~regout\ : std_logic;
SIGNAL \u_basic|u_flag|always0~4\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~70_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~40_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~42\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~42COUT1_148\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~50_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~52\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~52COUT1_149\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~55_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~35_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~37\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~37COUT1_141\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~30_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~32\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~32COUT1_142\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~25_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~27\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~27COUT1_143\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~20_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~22\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~10_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~12\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~12COUT1_144\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~15_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~17\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~17COUT1_145\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~5_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~7\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~7COUT1_146\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~0_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~2\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~2COUT1_147\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~45_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~47\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~57\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~57COUT1_150\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~60_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~62\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~62COUT1_151\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~65_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~72\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~72COUT1_152\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~75_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~67\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~77\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~77COUT1_153\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~80_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~82\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~82COUT1_154\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~85_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~87\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~87COUT1_155\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~90_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~95_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~92\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~97\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~97COUT1_156\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~100_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~102\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~102COUT1_157\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~105_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~107COUT1_158\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~112\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~112COUT1_159\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~115_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~107\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~110_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~6\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~117\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~127\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~130_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~132\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~135_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~120_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~122\ : std_logic;
SIGNAL \u_basic|u_clk_0|Add0~125_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~7\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~5\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~3\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~2\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~0\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~1\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~4_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|Equal0~8_combout\ : std_logic;
SIGNAL \u_basic|u_clk_0|clkout~regout\ : std_logic;
SIGNAL \u_basic|u_flag|flag[0]~6\ : std_logic;
SIGNAL \u_basic|u_decode_seg|Mux9~0_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|Mux9~1_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~40_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~42\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~42COUT1_148\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~45_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~47\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~47COUT1_149\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~55_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~35_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~37\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~37COUT1_141\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~30_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~32\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~32COUT1_142\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~25_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~27\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~27COUT1_143\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~20_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~22\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~15_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~17\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~17COUT1_144\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~10_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~12\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~12COUT1_145\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~5_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~7\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~7COUT1_146\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~0_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~2\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~2COUT1_147\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~50_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~52\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~57\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~57COUT1_150\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~60_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~75_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~62\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~62COUT1_151\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~70_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~77\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~77COUT1_152\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~65_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~72\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~67\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~67COUT1_153\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~87COUT1_154\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~92COUT1_155\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~97\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~80_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~85_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~87\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~90_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~92\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~95_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~5\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~82\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~82COUT1_156\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~100_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~102\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~102COUT1_157\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~110_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~112\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~112COUT1_158\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~115_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~117\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~117COUT1_159\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~105_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~107\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~122COUT1_160\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~127\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~127COUT1_161\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~130_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~132\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~132COUT1_162\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~135_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~120_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~122\ : std_logic;
SIGNAL \u_basic|u_clk_5|Add0~125_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~7\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~6\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~2\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~3\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~1\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~0\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~4_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|Equal0~8_combout\ : std_logic;
SIGNAL \u_basic|u_clk_5|clkout~regout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|digit[0]~0_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|Mux7~0_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|Mux7~1_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|Mux8~0_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|Mux8~1_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|Mux6~0_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|Mux6~1_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|WideOr6~0_combout\ : std_logic;
SIGNAL \digit_scan~1_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|WideOr5~0_combout\ : std_logic;
SIGNAL \digit_scan~2_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|WideOr4~0_combout\ : std_logic;
SIGNAL \digit_scan~3_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|WideOr3~0_combout\ : std_logic;
SIGNAL \digit_scan~4_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|WideOr2~0_combout\ : std_logic;
SIGNAL \digit_scan~5_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|WideOr1~0_combout\ : std_logic;
SIGNAL \digit_scan~6_combout\ : std_logic;
SIGNAL \u_basic|u_decode_seg|WideOr0~0_combout\ : std_logic;
SIGNAL \digit_scan~7_combout\ : std_logic;
SIGNAL \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\ : std_logic;
SIGNAL \digit_cath~0_combout\ : std_logic;
SIGNAL \digit_cath~1_combout\ : std_logic;
SIGNAL \digit_cath~2_combout\ : std_logic;
SIGNAL \digit_cath~3_combout\ : std_logic;
SIGNAL \digit_cath~4_combout\ : std_logic;
SIGNAL \digit_cath~5_combout\ : std_logic;
SIGNAL \u_basic|u_debounce|key_sec\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_basic|u2|row\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_startup|u_decode_lattice_startup|row\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_basic|u_debounce|key_rst\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_basic|u_sequencer_num_0|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_basic|u2|col\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_basic|u_decode_seg|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_basic|u_debounce|key_edge\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_basic|u2|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_basic|u_decode_seg|digit_cath\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_basic|u_clk_2|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_startup|u_decode_lattice_startup|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_startup|u_decode_seg_startup|digit_cath\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_basic|u_debounce|key_rst_pre\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_basic|u2|col_temp\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u_startup|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_basic|u_sequencer_num_4|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_basic|u_sequencer_eng|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_basic|u_sequencer_num_2|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_basic|u_decode_seg|cath_control\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_basic|u_sequencer_num_1|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_basic|u_sequencer_num_3|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_startup|u_clk_500|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_basic|u_sequencer_chi|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_startup|u_clk_2|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_basic|u_flag|flag\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_basic|u_clk_4|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_basic|u_debounce|key_sec_pre\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_basic|u_clk_5|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_basic|u_clk_1|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_basic|u_clk_0|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_basic|u_clk_3|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \BTN~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_basic|u_debounce|cnt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u_basic|u_flag|ALT_INV_flag\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_basic|u_decode_seg|ALT_INV_cath_control\ : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_clk <= clk;
ww_sw <= sw;
ww_BTN_7 <= BTN_7;
ww_BTN <= BTN;
row <= ww_row;
col <= ww_col;
digit_scan <= ww_digit_scan;
digit_cath <= ww_digit_cath;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u_basic|u_flag|ALT_INV_flag\(6) <= NOT \u_basic|u_flag|flag\(6);
\u_basic|u_flag|ALT_INV_flag\(3) <= NOT \u_basic|u_flag|flag\(3);
\u_basic|u_flag|ALT_INV_flag\(0) <= NOT \u_basic|u_flag|flag\(0);
\u_basic|u_flag|ALT_INV_flag\(1) <= NOT \u_basic|u_flag|flag\(1);
\u_basic|u_flag|ALT_INV_flag\(2) <= NOT \u_basic|u_flag|flag\(2);
\u_basic|u_flag|ALT_INV_flag\(5) <= NOT \u_basic|u_flag|flag\(5);
\u_basic|u_flag|ALT_INV_flag\(4) <= NOT \u_basic|u_flag|flag\(4);
\u_basic|u_decode_seg|ALT_INV_cath_control\(2) <= NOT \u_basic|u_decode_seg|cath_control\(2);

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

-- Location: LC_X14_Y3_N1
\u_startup|u_clk_500|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~30_combout\ = ((!\u_startup|u_clk_500|cnt\(0)))
-- \u_startup|u_clk_500|Add0~32\ = CARRY(((\u_startup|u_clk_500|cnt\(0))))
-- \u_startup|u_clk_500|Add0~32COUT1_141\ = CARRY(((\u_startup|u_clk_500|cnt\(0))))

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
	datab => \u_startup|u_clk_500|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~30_combout\,
	cout0 => \u_startup|u_clk_500|Add0~32\,
	cout1 => \u_startup|u_clk_500|Add0~32COUT1_141\);

-- Location: LC_X13_Y3_N4
\u_startup|u_clk_500|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(0) = DFFEAS((\u_startup|u_clk_500|Add0~30_combout\ & (((!\u_startup|u_clk_500|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_startup|u_clk_500|Add0~30_combout\,
	datad => \u_startup|u_clk_500|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(0));

-- Location: LC_X14_Y3_N5
\u_startup|u_clk_500|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~0_combout\ = (\u_startup|u_clk_500|cnt\(4) $ ((!\u_startup|u_clk_500|Add0~12\)))
-- \u_startup|u_clk_500|Add0~2\ = CARRY(((\u_startup|u_clk_500|cnt\(4) & !\u_startup|u_clk_500|Add0~12\)))
-- \u_startup|u_clk_500|Add0~2COUT1_144\ = CARRY(((\u_startup|u_clk_500|cnt\(4) & !\u_startup|u_clk_500|Add0~12\)))

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
	datab => \u_startup|u_clk_500|cnt\(4),
	cin => \u_startup|u_clk_500|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~0_combout\,
	cout0 => \u_startup|u_clk_500|Add0~2\,
	cout1 => \u_startup|u_clk_500|Add0~2COUT1_144\);

-- Location: LC_X13_Y3_N8
\u_startup|u_clk_500|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(4) = DFFEAS(((\u_startup|u_clk_500|Add0~0_combout\ & ((!\u_startup|u_clk_500|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_startup|u_clk_500|Add0~0_combout\,
	datad => \u_startup|u_clk_500|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(4));

-- Location: LC_X14_Y3_N6
\u_startup|u_clk_500|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~5_combout\ = \u_startup|u_clk_500|cnt\(5) $ (((((!\u_startup|u_clk_500|Add0~12\ & \u_startup|u_clk_500|Add0~2\) # (\u_startup|u_clk_500|Add0~12\ & \u_startup|u_clk_500|Add0~2COUT1_144\)))))
-- \u_startup|u_clk_500|Add0~7\ = CARRY(((!\u_startup|u_clk_500|Add0~2\)) # (!\u_startup|u_clk_500|cnt\(5)))
-- \u_startup|u_clk_500|Add0~7COUT1_145\ = CARRY(((!\u_startup|u_clk_500|Add0~2COUT1_144\)) # (!\u_startup|u_clk_500|cnt\(5)))

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
	dataa => \u_startup|u_clk_500|cnt\(5),
	cin => \u_startup|u_clk_500|Add0~12\,
	cin0 => \u_startup|u_clk_500|Add0~2\,
	cin1 => \u_startup|u_clk_500|Add0~2COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~5_combout\,
	cout0 => \u_startup|u_clk_500|Add0~7\,
	cout1 => \u_startup|u_clk_500|Add0~7COUT1_145\);

-- Location: LC_X13_Y3_N1
\u_startup|u_clk_500|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~0\ = (!\u_startup|u_clk_500|cnt\(3) & (!\u_startup|u_clk_500|cnt\(2) & (!E1_cnt[5] & \u_startup|u_clk_500|cnt\(4))))
-- \u_startup|u_clk_500|cnt\(5) = DFFEAS(\u_startup|u_clk_500|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_startup|u_clk_500|cnt\(3),
	datab => \u_startup|u_clk_500|cnt\(2),
	datac => \u_startup|u_clk_500|Add0~5_combout\,
	datad => \u_startup|u_clk_500|cnt\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~0\,
	regout => \u_startup|u_clk_500|cnt\(5));

-- Location: LC_X14_Y3_N7
\u_startup|u_clk_500|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~20_combout\ = \u_startup|u_clk_500|cnt\(6) $ ((((!(!\u_startup|u_clk_500|Add0~12\ & \u_startup|u_clk_500|Add0~7\) # (\u_startup|u_clk_500|Add0~12\ & \u_startup|u_clk_500|Add0~7COUT1_145\)))))
-- \u_startup|u_clk_500|Add0~22\ = CARRY((\u_startup|u_clk_500|cnt\(6) & ((!\u_startup|u_clk_500|Add0~7\))))
-- \u_startup|u_clk_500|Add0~22COUT1_146\ = CARRY((\u_startup|u_clk_500|cnt\(6) & ((!\u_startup|u_clk_500|Add0~7COUT1_145\))))

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
	dataa => \u_startup|u_clk_500|cnt\(6),
	cin => \u_startup|u_clk_500|Add0~12\,
	cin0 => \u_startup|u_clk_500|Add0~7\,
	cin1 => \u_startup|u_clk_500|Add0~7COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~20_combout\,
	cout0 => \u_startup|u_clk_500|Add0~22\,
	cout1 => \u_startup|u_clk_500|Add0~22COUT1_146\);

-- Location: LC_X13_Y3_N0
\u_startup|u_clk_500|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(6) = DFFEAS((\u_startup|u_clk_500|Add0~20_combout\ & (((!\u_startup|u_clk_500|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_startup|u_clk_500|Add0~20_combout\,
	datad => \u_startup|u_clk_500|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(6));

-- Location: LC_X14_Y3_N2
\u_startup|u_clk_500|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~25_combout\ = (\u_startup|u_clk_500|cnt\(1) $ ((\u_startup|u_clk_500|Add0~32\)))
-- \u_startup|u_clk_500|Add0~27\ = CARRY(((!\u_startup|u_clk_500|Add0~32\) # (!\u_startup|u_clk_500|cnt\(1))))
-- \u_startup|u_clk_500|Add0~27COUT1_142\ = CARRY(((!\u_startup|u_clk_500|Add0~32COUT1_141\) # (!\u_startup|u_clk_500|cnt\(1))))

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
	datab => \u_startup|u_clk_500|cnt\(1),
	cin0 => \u_startup|u_clk_500|Add0~32\,
	cin1 => \u_startup|u_clk_500|Add0~32COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~25_combout\,
	cout0 => \u_startup|u_clk_500|Add0~27\,
	cout1 => \u_startup|u_clk_500|Add0~27COUT1_142\);

-- Location: LC_X14_Y3_N8
\u_startup|u_clk_500|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~35_combout\ = \u_startup|u_clk_500|cnt\(7) $ (((((!\u_startup|u_clk_500|Add0~12\ & \u_startup|u_clk_500|Add0~22\) # (\u_startup|u_clk_500|Add0~12\ & \u_startup|u_clk_500|Add0~22COUT1_146\)))))
-- \u_startup|u_clk_500|Add0~37\ = CARRY(((!\u_startup|u_clk_500|Add0~22\)) # (!\u_startup|u_clk_500|cnt\(7)))
-- \u_startup|u_clk_500|Add0~37COUT1_147\ = CARRY(((!\u_startup|u_clk_500|Add0~22COUT1_146\)) # (!\u_startup|u_clk_500|cnt\(7)))

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
	dataa => \u_startup|u_clk_500|cnt\(7),
	cin => \u_startup|u_clk_500|Add0~12\,
	cin0 => \u_startup|u_clk_500|Add0~22\,
	cin1 => \u_startup|u_clk_500|Add0~22COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~35_combout\,
	cout0 => \u_startup|u_clk_500|Add0~37\,
	cout1 => \u_startup|u_clk_500|Add0~37COUT1_147\);

-- Location: LC_X13_Y3_N5
\u_startup|u_clk_500|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(7) = DFFEAS((((\u_startup|u_clk_500|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_startup|u_clk_500|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(7));

-- Location: LC_X13_Y3_N7
\u_startup|u_clk_500|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~1\ = (!\u_startup|u_clk_500|cnt\(0) & (\u_startup|u_clk_500|cnt\(6) & (!E1_cnt[1] & !\u_startup|u_clk_500|cnt\(7))))
-- \u_startup|u_clk_500|cnt\(1) = DFFEAS(\u_startup|u_clk_500|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~25_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_500|cnt\(0),
	datab => \u_startup|u_clk_500|cnt\(6),
	datac => \u_startup|u_clk_500|Add0~25_combout\,
	datad => \u_startup|u_clk_500|cnt\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~1\,
	regout => \u_startup|u_clk_500|cnt\(1));

-- Location: LC_X14_Y3_N3
\u_startup|u_clk_500|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~15_combout\ = (\u_startup|u_clk_500|cnt\(2) $ ((!\u_startup|u_clk_500|Add0~27\)))
-- \u_startup|u_clk_500|Add0~17\ = CARRY(((\u_startup|u_clk_500|cnt\(2) & !\u_startup|u_clk_500|Add0~27\)))
-- \u_startup|u_clk_500|Add0~17COUT1_143\ = CARRY(((\u_startup|u_clk_500|cnt\(2) & !\u_startup|u_clk_500|Add0~27COUT1_142\)))

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
	datab => \u_startup|u_clk_500|cnt\(2),
	cin0 => \u_startup|u_clk_500|Add0~27\,
	cin1 => \u_startup|u_clk_500|Add0~27COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~15_combout\,
	cout0 => \u_startup|u_clk_500|Add0~17\,
	cout1 => \u_startup|u_clk_500|Add0~17COUT1_143\);

-- Location: LC_X13_Y3_N2
\u_startup|u_clk_500|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~15_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(2));

-- Location: LC_X14_Y3_N4
\u_startup|u_clk_500|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~10_combout\ = (\u_startup|u_clk_500|cnt\(3) $ ((\u_startup|u_clk_500|Add0~17\)))
-- \u_startup|u_clk_500|Add0~12\ = CARRY(((!\u_startup|u_clk_500|Add0~17COUT1_143\) # (!\u_startup|u_clk_500|cnt\(3))))

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
	datab => \u_startup|u_clk_500|cnt\(3),
	cin0 => \u_startup|u_clk_500|Add0~17\,
	cin1 => \u_startup|u_clk_500|Add0~17COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~10_combout\,
	cout => \u_startup|u_clk_500|Add0~12\);

-- Location: LC_X13_Y3_N6
\u_startup|u_clk_500|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(3) = DFFEAS((((\u_startup|u_clk_500|Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_startup|u_clk_500|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(3));

-- Location: LC_X14_Y3_N9
\u_startup|u_clk_500|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~40_combout\ = \u_startup|u_clk_500|cnt\(8) $ ((((!(!\u_startup|u_clk_500|Add0~12\ & \u_startup|u_clk_500|Add0~37\) # (\u_startup|u_clk_500|Add0~12\ & \u_startup|u_clk_500|Add0~37COUT1_147\)))))
-- \u_startup|u_clk_500|Add0~42\ = CARRY((\u_startup|u_clk_500|cnt\(8) & ((!\u_startup|u_clk_500|Add0~37COUT1_147\))))

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
	dataa => \u_startup|u_clk_500|cnt\(8),
	cin => \u_startup|u_clk_500|Add0~12\,
	cin0 => \u_startup|u_clk_500|Add0~37\,
	cin1 => \u_startup|u_clk_500|Add0~37COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~40_combout\,
	cout => \u_startup|u_clk_500|Add0~42\);

-- Location: LC_X13_Y3_N9
\u_startup|u_clk_500|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(8) = DFFEAS((((\u_startup|u_clk_500|Add0~40_combout\ & !\u_startup|u_clk_500|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_500|Add0~40_combout\,
	datad => \u_startup|u_clk_500|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(8));

-- Location: LC_X15_Y3_N5
\u_startup|u_clk_500|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~60_combout\ = (\u_startup|u_clk_500|cnt\(14) $ ((!\u_startup|u_clk_500|Add0~77\)))
-- \u_startup|u_clk_500|Add0~62\ = CARRY(((\u_startup|u_clk_500|cnt\(14) & !\u_startup|u_clk_500|Add0~77\)))
-- \u_startup|u_clk_500|Add0~62COUT1_152\ = CARRY(((\u_startup|u_clk_500|cnt\(14) & !\u_startup|u_clk_500|Add0~77\)))

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
	datab => \u_startup|u_clk_500|cnt\(14),
	cin => \u_startup|u_clk_500|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~60_combout\,
	cout0 => \u_startup|u_clk_500|Add0~62\,
	cout1 => \u_startup|u_clk_500|Add0~62COUT1_152\);

-- Location: LC_X15_Y2_N7
\u_startup|u_clk_500|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(14) = DFFEAS((((\u_startup|u_clk_500|Add0~60_combout\ & !\u_startup|u_clk_500|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_500|Add0~60_combout\,
	datad => \u_startup|u_clk_500|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(14));

-- Location: LC_X15_Y3_N6
\u_startup|u_clk_500|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~65_combout\ = (\u_startup|u_clk_500|cnt\(15) $ (((!\u_startup|u_clk_500|Add0~77\ & \u_startup|u_clk_500|Add0~62\) # (\u_startup|u_clk_500|Add0~77\ & \u_startup|u_clk_500|Add0~62COUT1_152\))))
-- \u_startup|u_clk_500|Add0~67\ = CARRY(((!\u_startup|u_clk_500|Add0~62\) # (!\u_startup|u_clk_500|cnt\(15))))
-- \u_startup|u_clk_500|Add0~67COUT1_153\ = CARRY(((!\u_startup|u_clk_500|Add0~62COUT1_152\) # (!\u_startup|u_clk_500|cnt\(15))))

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
	datab => \u_startup|u_clk_500|cnt\(15),
	cin => \u_startup|u_clk_500|Add0~77\,
	cin0 => \u_startup|u_clk_500|Add0~62\,
	cin1 => \u_startup|u_clk_500|Add0~62COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~65_combout\,
	cout0 => \u_startup|u_clk_500|Add0~67\,
	cout1 => \u_startup|u_clk_500|Add0~67COUT1_153\);

-- Location: LC_X12_Y3_N8
\u_startup|u_clk_500|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(15) = DFFEAS((((!\u_startup|u_clk_500|Equal0~8_combout\ & \u_startup|u_clk_500|Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_500|Equal0~8_combout\,
	datad => \u_startup|u_clk_500|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(15));

-- Location: LC_X15_Y3_N0
\u_startup|u_clk_500|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~45_combout\ = (\u_startup|u_clk_500|cnt\(9) $ ((\u_startup|u_clk_500|Add0~42\)))
-- \u_startup|u_clk_500|Add0~47\ = CARRY(((!\u_startup|u_clk_500|Add0~42\) # (!\u_startup|u_clk_500|cnt\(9))))
-- \u_startup|u_clk_500|Add0~47COUT1_148\ = CARRY(((!\u_startup|u_clk_500|Add0~42\) # (!\u_startup|u_clk_500|cnt\(9))))

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
	datab => \u_startup|u_clk_500|cnt\(9),
	cin => \u_startup|u_clk_500|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~45_combout\,
	cout0 => \u_startup|u_clk_500|Add0~47\,
	cout1 => \u_startup|u_clk_500|Add0~47COUT1_148\);

-- Location: LC_X12_Y3_N6
\u_startup|u_clk_500|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(9) = DFFEAS((((!\u_startup|u_clk_500|Equal0~8_combout\ & \u_startup|u_clk_500|Add0~45_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_500|Equal0~8_combout\,
	datad => \u_startup|u_clk_500|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(9));

-- Location: LC_X15_Y3_N1
\u_startup|u_clk_500|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~50_combout\ = (\u_startup|u_clk_500|cnt\(10) $ ((!(!\u_startup|u_clk_500|Add0~42\ & \u_startup|u_clk_500|Add0~47\) # (\u_startup|u_clk_500|Add0~42\ & \u_startup|u_clk_500|Add0~47COUT1_148\))))
-- \u_startup|u_clk_500|Add0~52\ = CARRY(((\u_startup|u_clk_500|cnt\(10) & !\u_startup|u_clk_500|Add0~47\)))
-- \u_startup|u_clk_500|Add0~52COUT1_149\ = CARRY(((\u_startup|u_clk_500|cnt\(10) & !\u_startup|u_clk_500|Add0~47COUT1_148\)))

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
	datab => \u_startup|u_clk_500|cnt\(10),
	cin => \u_startup|u_clk_500|Add0~42\,
	cin0 => \u_startup|u_clk_500|Add0~47\,
	cin1 => \u_startup|u_clk_500|Add0~47COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~50_combout\,
	cout0 => \u_startup|u_clk_500|Add0~52\,
	cout1 => \u_startup|u_clk_500|Add0~52COUT1_149\);

-- Location: LC_X13_Y3_N3
\u_startup|u_clk_500|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~2\ = (!\u_startup|u_clk_500|cnt\(11) & (\u_startup|u_clk_500|cnt\(9) & (!E1_cnt[10] & \u_startup|u_clk_500|cnt\(8))))
-- \u_startup|u_clk_500|cnt\(10) = DFFEAS(\u_startup|u_clk_500|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_startup|u_clk_500|cnt\(11),
	datab => \u_startup|u_clk_500|cnt\(9),
	datac => \u_startup|u_clk_500|Add0~50_combout\,
	datad => \u_startup|u_clk_500|cnt\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~2\,
	regout => \u_startup|u_clk_500|cnt\(10));

-- Location: LC_X15_Y3_N2
\u_startup|u_clk_500|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~55_combout\ = \u_startup|u_clk_500|cnt\(11) $ (((((!\u_startup|u_clk_500|Add0~42\ & \u_startup|u_clk_500|Add0~52\) # (\u_startup|u_clk_500|Add0~42\ & \u_startup|u_clk_500|Add0~52COUT1_149\)))))
-- \u_startup|u_clk_500|Add0~57\ = CARRY(((!\u_startup|u_clk_500|Add0~52\)) # (!\u_startup|u_clk_500|cnt\(11)))
-- \u_startup|u_clk_500|Add0~57COUT1_150\ = CARRY(((!\u_startup|u_clk_500|Add0~52COUT1_149\)) # (!\u_startup|u_clk_500|cnt\(11)))

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
	dataa => \u_startup|u_clk_500|cnt\(11),
	cin => \u_startup|u_clk_500|Add0~42\,
	cin0 => \u_startup|u_clk_500|Add0~52\,
	cin1 => \u_startup|u_clk_500|Add0~52COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~55_combout\,
	cout0 => \u_startup|u_clk_500|Add0~57\,
	cout1 => \u_startup|u_clk_500|Add0~57COUT1_150\);

-- Location: LC_X14_Y3_N0
\u_startup|u_clk_500|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~55_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(11));

-- Location: LC_X15_Y3_N3
\u_startup|u_clk_500|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~70_combout\ = (\u_startup|u_clk_500|cnt\(12) $ ((!(!\u_startup|u_clk_500|Add0~42\ & \u_startup|u_clk_500|Add0~57\) # (\u_startup|u_clk_500|Add0~42\ & \u_startup|u_clk_500|Add0~57COUT1_150\))))
-- \u_startup|u_clk_500|Add0~72\ = CARRY(((\u_startup|u_clk_500|cnt\(12) & !\u_startup|u_clk_500|Add0~57\)))
-- \u_startup|u_clk_500|Add0~72COUT1_151\ = CARRY(((\u_startup|u_clk_500|cnt\(12) & !\u_startup|u_clk_500|Add0~57COUT1_150\)))

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
	datab => \u_startup|u_clk_500|cnt\(12),
	cin => \u_startup|u_clk_500|Add0~42\,
	cin0 => \u_startup|u_clk_500|Add0~57\,
	cin1 => \u_startup|u_clk_500|Add0~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~70_combout\,
	cout0 => \u_startup|u_clk_500|Add0~72\,
	cout1 => \u_startup|u_clk_500|Add0~72COUT1_151\);

-- Location: LC_X12_Y3_N3
\u_startup|u_clk_500|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~3\ = (\u_startup|u_clk_500|cnt\(15) & (!\u_startup|u_clk_500|cnt\(13) & (!E1_cnt[12] & \u_startup|u_clk_500|cnt\(14))))
-- \u_startup|u_clk_500|cnt\(12) = DFFEAS(\u_startup|u_clk_500|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_startup|u_clk_500|cnt\(15),
	datab => \u_startup|u_clk_500|cnt\(13),
	datac => \u_startup|u_clk_500|Add0~70_combout\,
	datad => \u_startup|u_clk_500|cnt\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~3\,
	regout => \u_startup|u_clk_500|cnt\(12));

-- Location: LC_X15_Y3_N4
\u_startup|u_clk_500|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~75_combout\ = (\u_startup|u_clk_500|cnt\(13) $ (((!\u_startup|u_clk_500|Add0~42\ & \u_startup|u_clk_500|Add0~72\) # (\u_startup|u_clk_500|Add0~42\ & \u_startup|u_clk_500|Add0~72COUT1_151\))))
-- \u_startup|u_clk_500|Add0~77\ = CARRY(((!\u_startup|u_clk_500|Add0~72COUT1_151\) # (!\u_startup|u_clk_500|cnt\(13))))

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
	datab => \u_startup|u_clk_500|cnt\(13),
	cin => \u_startup|u_clk_500|Add0~42\,
	cin0 => \u_startup|u_clk_500|Add0~72\,
	cin1 => \u_startup|u_clk_500|Add0~72COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~75_combout\,
	cout => \u_startup|u_clk_500|Add0~77\);

-- Location: LC_X12_Y3_N7
\u_startup|u_clk_500|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~75_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(13));

-- Location: LC_X15_Y3_N7
\u_startup|u_clk_500|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~80_combout\ = (\u_startup|u_clk_500|cnt\(16) $ ((!(!\u_startup|u_clk_500|Add0~77\ & \u_startup|u_clk_500|Add0~67\) # (\u_startup|u_clk_500|Add0~77\ & \u_startup|u_clk_500|Add0~67COUT1_153\))))
-- \u_startup|u_clk_500|Add0~82\ = CARRY(((\u_startup|u_clk_500|cnt\(16) & !\u_startup|u_clk_500|Add0~67\)))
-- \u_startup|u_clk_500|Add0~82COUT1_154\ = CARRY(((\u_startup|u_clk_500|cnt\(16) & !\u_startup|u_clk_500|Add0~67COUT1_153\)))

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
	datab => \u_startup|u_clk_500|cnt\(16),
	cin => \u_startup|u_clk_500|Add0~77\,
	cin0 => \u_startup|u_clk_500|Add0~67\,
	cin1 => \u_startup|u_clk_500|Add0~67COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~80_combout\,
	cout0 => \u_startup|u_clk_500|Add0~82\,
	cout1 => \u_startup|u_clk_500|Add0~82COUT1_154\);

-- Location: LC_X15_Y2_N2
\u_startup|u_clk_500|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~5\ = (!\u_startup|u_clk_500|cnt\(19) & (!\u_startup|u_clk_500|cnt\(18) & (!E1_cnt[16] & !\u_startup|u_clk_500|cnt\(17))))
-- \u_startup|u_clk_500|cnt\(16) = DFFEAS(\u_startup|u_clk_500|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~80_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_500|cnt\(19),
	datab => \u_startup|u_clk_500|cnt\(18),
	datac => \u_startup|u_clk_500|Add0~80_combout\,
	datad => \u_startup|u_clk_500|cnt\(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~5\,
	regout => \u_startup|u_clk_500|cnt\(16));

-- Location: LC_X15_Y3_N8
\u_startup|u_clk_500|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~85_combout\ = (\u_startup|u_clk_500|cnt\(17) $ (((!\u_startup|u_clk_500|Add0~77\ & \u_startup|u_clk_500|Add0~82\) # (\u_startup|u_clk_500|Add0~77\ & \u_startup|u_clk_500|Add0~82COUT1_154\))))
-- \u_startup|u_clk_500|Add0~87\ = CARRY(((!\u_startup|u_clk_500|Add0~82\) # (!\u_startup|u_clk_500|cnt\(17))))
-- \u_startup|u_clk_500|Add0~87COUT1_155\ = CARRY(((!\u_startup|u_clk_500|Add0~82COUT1_154\) # (!\u_startup|u_clk_500|cnt\(17))))

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
	datab => \u_startup|u_clk_500|cnt\(17),
	cin => \u_startup|u_clk_500|Add0~77\,
	cin0 => \u_startup|u_clk_500|Add0~82\,
	cin1 => \u_startup|u_clk_500|Add0~82COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~85_combout\,
	cout0 => \u_startup|u_clk_500|Add0~87\,
	cout1 => \u_startup|u_clk_500|Add0~87COUT1_155\);

-- Location: LC_X15_Y2_N8
\u_startup|u_clk_500|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~85_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(17));

-- Location: LC_X15_Y3_N9
\u_startup|u_clk_500|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~90_combout\ = (\u_startup|u_clk_500|cnt\(18) $ ((!(!\u_startup|u_clk_500|Add0~77\ & \u_startup|u_clk_500|Add0~87\) # (\u_startup|u_clk_500|Add0~77\ & \u_startup|u_clk_500|Add0~87COUT1_155\))))
-- \u_startup|u_clk_500|Add0~92\ = CARRY(((\u_startup|u_clk_500|cnt\(18) & !\u_startup|u_clk_500|Add0~87COUT1_155\)))

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
	datab => \u_startup|u_clk_500|cnt\(18),
	cin => \u_startup|u_clk_500|Add0~77\,
	cin0 => \u_startup|u_clk_500|Add0~87\,
	cin1 => \u_startup|u_clk_500|Add0~87COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~90_combout\,
	cout => \u_startup|u_clk_500|Add0~92\);

-- Location: LC_X15_Y2_N0
\u_startup|u_clk_500|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~90_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(18));

-- Location: LC_X16_Y3_N0
\u_startup|u_clk_500|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~95_combout\ = \u_startup|u_clk_500|cnt\(19) $ ((((\u_startup|u_clk_500|Add0~92\))))
-- \u_startup|u_clk_500|Add0~97\ = CARRY(((!\u_startup|u_clk_500|Add0~92\)) # (!\u_startup|u_clk_500|cnt\(19)))
-- \u_startup|u_clk_500|Add0~97COUT1_156\ = CARRY(((!\u_startup|u_clk_500|Add0~92\)) # (!\u_startup|u_clk_500|cnt\(19)))

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
	dataa => \u_startup|u_clk_500|cnt\(19),
	cin => \u_startup|u_clk_500|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~95_combout\,
	cout0 => \u_startup|u_clk_500|Add0~97\,
	cout1 => \u_startup|u_clk_500|Add0~97COUT1_156\);

-- Location: LC_X15_Y2_N5
\u_startup|u_clk_500|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~95_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(19));

-- Location: LC_X16_Y3_N1
\u_startup|u_clk_500|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~100_combout\ = (\u_startup|u_clk_500|cnt\(20) $ ((!(!\u_startup|u_clk_500|Add0~92\ & \u_startup|u_clk_500|Add0~97\) # (\u_startup|u_clk_500|Add0~92\ & \u_startup|u_clk_500|Add0~97COUT1_156\))))
-- \u_startup|u_clk_500|Add0~102\ = CARRY(((\u_startup|u_clk_500|cnt\(20) & !\u_startup|u_clk_500|Add0~97\)))
-- \u_startup|u_clk_500|Add0~102COUT1_157\ = CARRY(((\u_startup|u_clk_500|cnt\(20) & !\u_startup|u_clk_500|Add0~97COUT1_156\)))

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
	datab => \u_startup|u_clk_500|cnt\(20),
	cin => \u_startup|u_clk_500|Add0~92\,
	cin0 => \u_startup|u_clk_500|Add0~97\,
	cin1 => \u_startup|u_clk_500|Add0~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~100_combout\,
	cout0 => \u_startup|u_clk_500|Add0~102\,
	cout1 => \u_startup|u_clk_500|Add0~102COUT1_157\);

-- Location: LC_X16_Y2_N5
\u_startup|u_clk_500|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~6\ = (!\u_startup|u_clk_500|cnt\(21) & (!\u_startup|u_clk_500|cnt\(22) & (!E1_cnt[20] & !\u_startup|u_clk_500|cnt\(23))))
-- \u_startup|u_clk_500|cnt\(20) = DFFEAS(\u_startup|u_clk_500|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~100_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_500|cnt\(21),
	datab => \u_startup|u_clk_500|cnt\(22),
	datac => \u_startup|u_clk_500|Add0~100_combout\,
	datad => \u_startup|u_clk_500|cnt\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~6\,
	regout => \u_startup|u_clk_500|cnt\(20));

-- Location: LC_X16_Y3_N2
\u_startup|u_clk_500|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~105_combout\ = \u_startup|u_clk_500|cnt\(21) $ (((((!\u_startup|u_clk_500|Add0~92\ & \u_startup|u_clk_500|Add0~102\) # (\u_startup|u_clk_500|Add0~92\ & \u_startup|u_clk_500|Add0~102COUT1_157\)))))
-- \u_startup|u_clk_500|Add0~107\ = CARRY(((!\u_startup|u_clk_500|Add0~102\)) # (!\u_startup|u_clk_500|cnt\(21)))
-- \u_startup|u_clk_500|Add0~107COUT1_158\ = CARRY(((!\u_startup|u_clk_500|Add0~102COUT1_157\)) # (!\u_startup|u_clk_500|cnt\(21)))

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
	dataa => \u_startup|u_clk_500|cnt\(21),
	cin => \u_startup|u_clk_500|Add0~92\,
	cin0 => \u_startup|u_clk_500|Add0~102\,
	cin1 => \u_startup|u_clk_500|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~105_combout\,
	cout0 => \u_startup|u_clk_500|Add0~107\,
	cout1 => \u_startup|u_clk_500|Add0~107COUT1_158\);

-- Location: LC_X16_Y2_N6
\u_startup|u_clk_500|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(21) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~105_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~105_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(21));

-- Location: LC_X16_Y3_N3
\u_startup|u_clk_500|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~110_combout\ = \u_startup|u_clk_500|cnt\(22) $ ((((!(!\u_startup|u_clk_500|Add0~92\ & \u_startup|u_clk_500|Add0~107\) # (\u_startup|u_clk_500|Add0~92\ & \u_startup|u_clk_500|Add0~107COUT1_158\)))))
-- \u_startup|u_clk_500|Add0~112\ = CARRY((\u_startup|u_clk_500|cnt\(22) & ((!\u_startup|u_clk_500|Add0~107\))))
-- \u_startup|u_clk_500|Add0~112COUT1_159\ = CARRY((\u_startup|u_clk_500|cnt\(22) & ((!\u_startup|u_clk_500|Add0~107COUT1_158\))))

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
	dataa => \u_startup|u_clk_500|cnt\(22),
	cin => \u_startup|u_clk_500|Add0~92\,
	cin0 => \u_startup|u_clk_500|Add0~107\,
	cin1 => \u_startup|u_clk_500|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~110_combout\,
	cout0 => \u_startup|u_clk_500|Add0~112\,
	cout1 => \u_startup|u_clk_500|Add0~112COUT1_159\);

-- Location: LC_X16_Y2_N7
\u_startup|u_clk_500|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~110_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(22));

-- Location: LC_X16_Y3_N4
\u_startup|u_clk_500|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~115_combout\ = (\u_startup|u_clk_500|cnt\(23) $ (((!\u_startup|u_clk_500|Add0~92\ & \u_startup|u_clk_500|Add0~112\) # (\u_startup|u_clk_500|Add0~92\ & \u_startup|u_clk_500|Add0~112COUT1_159\))))
-- \u_startup|u_clk_500|Add0~117\ = CARRY(((!\u_startup|u_clk_500|Add0~112COUT1_159\) # (!\u_startup|u_clk_500|cnt\(23))))

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
	datab => \u_startup|u_clk_500|cnt\(23),
	cin => \u_startup|u_clk_500|Add0~92\,
	cin0 => \u_startup|u_clk_500|Add0~112\,
	cin1 => \u_startup|u_clk_500|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~115_combout\,
	cout => \u_startup|u_clk_500|Add0~117\);

-- Location: LC_X16_Y2_N0
\u_startup|u_clk_500|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~115_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(23));

-- Location: LC_X16_Y3_N5
\u_startup|u_clk_500|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~120_combout\ = \u_startup|u_clk_500|cnt\(24) $ ((((!\u_startup|u_clk_500|Add0~117\))))
-- \u_startup|u_clk_500|Add0~122\ = CARRY((\u_startup|u_clk_500|cnt\(24) & ((!\u_startup|u_clk_500|Add0~117\))))
-- \u_startup|u_clk_500|Add0~122COUT1_160\ = CARRY((\u_startup|u_clk_500|cnt\(24) & ((!\u_startup|u_clk_500|Add0~117\))))

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
	dataa => \u_startup|u_clk_500|cnt\(24),
	cin => \u_startup|u_clk_500|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~120_combout\,
	cout0 => \u_startup|u_clk_500|Add0~122\,
	cout1 => \u_startup|u_clk_500|Add0~122COUT1_160\);

-- Location: LC_X16_Y3_N6
\u_startup|u_clk_500|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~125_combout\ = (\u_startup|u_clk_500|cnt\(25) $ (((!\u_startup|u_clk_500|Add0~117\ & \u_startup|u_clk_500|Add0~122\) # (\u_startup|u_clk_500|Add0~117\ & \u_startup|u_clk_500|Add0~122COUT1_160\))))
-- \u_startup|u_clk_500|Add0~127\ = CARRY(((!\u_startup|u_clk_500|Add0~122\) # (!\u_startup|u_clk_500|cnt\(25))))
-- \u_startup|u_clk_500|Add0~127COUT1_161\ = CARRY(((!\u_startup|u_clk_500|Add0~122COUT1_160\) # (!\u_startup|u_clk_500|cnt\(25))))

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
	datab => \u_startup|u_clk_500|cnt\(25),
	cin => \u_startup|u_clk_500|Add0~117\,
	cin0 => \u_startup|u_clk_500|Add0~122\,
	cin1 => \u_startup|u_clk_500|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~125_combout\,
	cout0 => \u_startup|u_clk_500|Add0~127\,
	cout1 => \u_startup|u_clk_500|Add0~127COUT1_161\);

-- Location: LC_X16_Y3_N7
\u_startup|u_clk_500|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~130_combout\ = (\u_startup|u_clk_500|cnt\(26) $ ((!(!\u_startup|u_clk_500|Add0~117\ & \u_startup|u_clk_500|Add0~127\) # (\u_startup|u_clk_500|Add0~117\ & \u_startup|u_clk_500|Add0~127COUT1_161\))))
-- \u_startup|u_clk_500|Add0~132\ = CARRY(((\u_startup|u_clk_500|cnt\(26) & !\u_startup|u_clk_500|Add0~127\)))
-- \u_startup|u_clk_500|Add0~132COUT1_162\ = CARRY(((\u_startup|u_clk_500|cnt\(26) & !\u_startup|u_clk_500|Add0~127COUT1_161\)))

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
	datab => \u_startup|u_clk_500|cnt\(26),
	cin => \u_startup|u_clk_500|Add0~117\,
	cin0 => \u_startup|u_clk_500|Add0~127\,
	cin1 => \u_startup|u_clk_500|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~130_combout\,
	cout0 => \u_startup|u_clk_500|Add0~132\,
	cout1 => \u_startup|u_clk_500|Add0~132COUT1_162\);

-- Location: LC_X16_Y2_N3
\u_startup|u_clk_500|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~130_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(26));

-- Location: LC_X16_Y3_N8
\u_startup|u_clk_500|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Add0~135_combout\ = (((!\u_startup|u_clk_500|Add0~117\ & \u_startup|u_clk_500|Add0~132\) # (\u_startup|u_clk_500|Add0~117\ & \u_startup|u_clk_500|Add0~132COUT1_162\) $ (\u_startup|u_clk_500|cnt\(27))))

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
	datad => \u_startup|u_clk_500|cnt\(27),
	cin => \u_startup|u_clk_500|Add0~117\,
	cin0 => \u_startup|u_clk_500|Add0~132\,
	cin1 => \u_startup|u_clk_500|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Add0~135_combout\);

-- Location: LC_X12_Y3_N9
\u_startup|u_clk_500|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~135_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(27));

-- Location: LC_X12_Y3_N0
\u_startup|u_clk_500|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~7\ = (!\u_startup|u_clk_500|cnt\(25) & (!\u_startup|u_clk_500|cnt\(27) & (!E1_cnt[24] & !\u_startup|u_clk_500|cnt\(26))))
-- \u_startup|u_clk_500|cnt\(24) = DFFEAS(\u_startup|u_clk_500|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~120_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_500|cnt\(25),
	datab => \u_startup|u_clk_500|cnt\(27),
	datac => \u_startup|u_clk_500|Add0~120_combout\,
	datad => \u_startup|u_clk_500|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~7\,
	regout => \u_startup|u_clk_500|cnt\(24));

-- Location: LC_X16_Y3_N9
\u_startup|u_clk_500|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_500|Add0~125_combout\, , , VCC)

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
	datac => \u_startup|u_clk_500|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|cnt\(25));

-- Location: LC_X12_Y3_N4
\u_startup|u_clk_500|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~4_combout\ = (\u_startup|u_clk_500|Equal0~1\ & (\u_startup|u_clk_500|Equal0~0\ & (\u_startup|u_clk_500|Equal0~2\ & \u_startup|u_clk_500|Equal0~3\)))

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
	dataa => \u_startup|u_clk_500|Equal0~1\,
	datab => \u_startup|u_clk_500|Equal0~0\,
	datac => \u_startup|u_clk_500|Equal0~2\,
	datad => \u_startup|u_clk_500|Equal0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~4_combout\);

-- Location: LC_X12_Y3_N5
\u_startup|u_clk_500|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|Equal0~8_combout\ = (\u_startup|u_clk_500|Equal0~5\ & (\u_startup|u_clk_500|Equal0~7\ & (\u_startup|u_clk_500|Equal0~6\ & \u_startup|u_clk_500|Equal0~4_combout\)))

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
	dataa => \u_startup|u_clk_500|Equal0~5\,
	datab => \u_startup|u_clk_500|Equal0~7\,
	datac => \u_startup|u_clk_500|Equal0~6\,
	datad => \u_startup|u_clk_500|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_500|Equal0~8_combout\);

-- Location: LC_X12_Y3_N2
\u_startup|u_clk_500|clkout\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_500|clkout~regout\ = DFFEAS((((!\u_startup|u_clk_500|clkout~regout\))), GLOBAL(\clk~combout\), VCC, , \u_startup|u_clk_500|Equal0~8_combout\, , , , )

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
	clk => \clk~combout\,
	datad => \u_startup|u_clk_500|clkout~regout\,
	aclr => GND,
	ena => \u_startup|u_clk_500|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_500|clkout~regout\);

-- Location: LC_X8_Y7_N1
\u_startup|u_decode_lattice_startup|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|cnt\(0) = DFFEAS((((!\u_startup|u_decode_lattice_startup|cnt\(0)))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datad => \u_startup|u_decode_lattice_startup|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|cnt\(0));

-- Location: LC_X8_Y7_N7
\u_startup|u_decode_lattice_startup|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|cnt\(1) = DFFEAS((((!\u_startup|u_decode_lattice_startup|cnt\(1)))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , \u_startup|u_decode_lattice_startup|cnt\(0), , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datac => \u_startup|u_decode_lattice_startup|cnt\(1),
	aclr => GND,
	ena => \u_startup|u_decode_lattice_startup|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|cnt\(1));

-- Location: LC_X7_Y7_N4
\u_startup|u_decode_lattice_startup|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|cnt\(2) = DFFEAS((\u_startup|u_decode_lattice_startup|cnt\(2) $ (((\u_startup|u_decode_lattice_startup|cnt\(1) & \u_startup|u_decode_lattice_startup|cnt\(0))))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_startup|u_clk_500|clkout~regout\,
	datab => \u_startup|u_decode_lattice_startup|cnt\(1),
	datac => \u_startup|u_decode_lattice_startup|cnt\(2),
	datad => \u_startup|u_decode_lattice_startup|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|cnt\(2));

-- Location: LC_X8_Y7_N4
\u_startup|u_decode_lattice_startup|Decoder0~0\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|Decoder0~0_combout\ = ((!\u_startup|u_decode_lattice_startup|cnt\(0) & (!\u_startup|u_decode_lattice_startup|cnt\(1) & !\u_startup|u_decode_lattice_startup|cnt\(2))))

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
	datab => \u_startup|u_decode_lattice_startup|cnt\(0),
	datac => \u_startup|u_decode_lattice_startup|cnt\(1),
	datad => \u_startup|u_decode_lattice_startup|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_decode_lattice_startup|Decoder0~0_combout\);

-- Location: LC_X8_Y7_N2
\u_startup|u_decode_lattice_startup|row[0]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|row\(0) = DFFEAS((((!\u_startup|u_decode_lattice_startup|Decoder0~0_combout\))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datac => \u_startup|u_decode_lattice_startup|Decoder0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|row\(0));

-- Location: LC_X12_Y3_N1
\u_basic|u_clk_500|clkout\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_500|clkout~regout\ = DFFEAS((((!\u_basic|u_clk_500|clkout~regout\))), GLOBAL(\clk~combout\), VCC, , \u_startup|u_clk_500|Equal0~8_combout\, , , , )

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
	clk => \clk~combout\,
	datad => \u_basic|u_clk_500|clkout~regout\,
	aclr => GND,
	ena => \u_startup|u_clk_500|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_500|clkout~regout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN_7~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN_7,
	combout => \BTN_7~combout\);

-- Location: LC_X16_Y7_N2
\u_basic|u2|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|cnt\(0) = DFFEAS((((!\BTN_7~combout\ & !\u_basic|u2|cnt\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \BTN_7~combout\,
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|cnt\(0));

-- Location: LC_X14_Y5_N7
\u_basic|u2|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|cnt\(1) = DFFEAS(((\u_basic|u2|cnt\(1) $ (\u_basic|u2|cnt\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , \BTN_7~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	sclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|cnt\(1));

-- Location: LC_X12_Y6_N5
\u_basic|u2|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|cnt\(2) = DFFEAS(\u_basic|u2|cnt\(2) $ (((\u_basic|u2|cnt\(1) & ((\u_basic|u2|cnt\(0)))))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , \BTN_7~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	sclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|cnt\(2));

-- Location: LC_X11_Y6_N9
\u_basic|u2|row[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|row\(0) = DFFEAS(((\u_basic|u2|cnt\(2)) # ((\u_basic|u2|cnt\(1)) # (\u_basic|u2|cnt\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(2),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|row\(0));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sw,
	combout => \sw~combout\);

-- Location: LC_X9_Y7_N2
\row~0\ : maxii_lcell
-- Equation(s):
-- \row~0_combout\ = ((\sw~combout\ & ((\u_basic|u2|row\(0)))) # (!\sw~combout\ & (\u_startup|u_decode_lattice_startup|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_startup|u_decode_lattice_startup|row\(0),
	datac => \u_basic|u2|row\(0),
	datad => \sw~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \row~0_combout\);

-- Location: LC_X8_Y7_N8
\u_startup|u_decode_lattice_startup|Decoder0~1\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|Decoder0~1_combout\ = ((\u_startup|u_decode_lattice_startup|cnt\(0) & (!\u_startup|u_decode_lattice_startup|cnt\(1) & !\u_startup|u_decode_lattice_startup|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_startup|u_decode_lattice_startup|cnt\(0),
	datac => \u_startup|u_decode_lattice_startup|cnt\(1),
	datad => \u_startup|u_decode_lattice_startup|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_decode_lattice_startup|Decoder0~1_combout\);

-- Location: LC_X8_Y7_N0
\u_startup|u_decode_lattice_startup|row[1]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|row\(1) = DFFEAS((((!\u_startup|u_decode_lattice_startup|Decoder0~1_combout\))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datad => \u_startup|u_decode_lattice_startup|Decoder0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|row\(1));

-- Location: LC_X10_Y8_N2
\u_basic|u2|row[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|row\(1) = DFFEAS(((\u_basic|u2|cnt\(1)) # ((\u_basic|u2|cnt\(2)) # (!\u_basic|u2|cnt\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|cnt\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|row\(1));

-- Location: LC_X8_Y8_N8
\row~1\ : maxii_lcell
-- Equation(s):
-- \row~1_combout\ = ((\sw~combout\ & ((\u_basic|u2|row\(1)))) # (!\sw~combout\ & (\u_startup|u_decode_lattice_startup|row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\,
	datac => \u_startup|u_decode_lattice_startup|row\(1),
	datad => \u_basic|u2|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \row~1_combout\);

-- Location: LC_X8_Y7_N5
\u_startup|u_decode_lattice_startup|Decoder0~2\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|Decoder0~2_combout\ = ((!\u_startup|u_decode_lattice_startup|cnt\(0) & (\u_startup|u_decode_lattice_startup|cnt\(1) & !\u_startup|u_decode_lattice_startup|cnt\(2))))

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
	datab => \u_startup|u_decode_lattice_startup|cnt\(0),
	datac => \u_startup|u_decode_lattice_startup|cnt\(1),
	datad => \u_startup|u_decode_lattice_startup|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_decode_lattice_startup|Decoder0~2_combout\);

-- Location: LC_X8_Y7_N6
\u_startup|u_decode_lattice_startup|row[2]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|row\(2) = DFFEAS((((!\u_startup|u_decode_lattice_startup|Decoder0~2_combout\))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datad => \u_startup|u_decode_lattice_startup|Decoder0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|row\(2));

-- Location: LC_X10_Y8_N6
\u_basic|u2|row[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|row\(2) = DFFEAS((((\u_basic|u2|cnt\(2)) # (\u_basic|u2|cnt\(0))) # (!\u_basic|u2|cnt\(1))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|cnt\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|row\(2));

-- Location: LC_X8_Y8_N4
\row~2\ : maxii_lcell
-- Equation(s):
-- \row~2_combout\ = ((\sw~combout\ & ((\u_basic|u2|row\(2)))) # (!\sw~combout\ & (\u_startup|u_decode_lattice_startup|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\,
	datac => \u_startup|u_decode_lattice_startup|row\(2),
	datad => \u_basic|u2|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \row~2_combout\);

-- Location: LC_X7_Y7_N2
\u_startup|u_decode_lattice_startup|Decoder0~3\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|Decoder0~3_combout\ = (\u_startup|u_decode_lattice_startup|cnt\(1) & (((!\u_startup|u_decode_lattice_startup|cnt\(2) & \u_startup|u_decode_lattice_startup|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_startup|u_decode_lattice_startup|cnt\(1),
	datac => \u_startup|u_decode_lattice_startup|cnt\(2),
	datad => \u_startup|u_decode_lattice_startup|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_decode_lattice_startup|Decoder0~3_combout\);

-- Location: LC_X7_Y7_N1
\u_startup|u_decode_lattice_startup|row[3]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|row\(3) = DFFEAS((((!\u_startup|u_decode_lattice_startup|Decoder0~3_combout\))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datad => \u_startup|u_decode_lattice_startup|Decoder0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|row\(3));

-- Location: LC_X11_Y6_N2
\u_basic|u2|row[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|row\(3) = DFFEAS(((\u_basic|u2|cnt\(2)) # ((!\u_basic|u2|cnt\(0)) # (!\u_basic|u2|cnt\(1)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(2),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|row\(3));

-- Location: LC_X9_Y7_N9
\row~3\ : maxii_lcell
-- Equation(s):
-- \row~3_combout\ = ((\sw~combout\ & ((\u_basic|u2|row\(3)))) # (!\sw~combout\ & (\u_startup|u_decode_lattice_startup|row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_startup|u_decode_lattice_startup|row\(3),
	datac => \u_basic|u2|row\(3),
	datad => \sw~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \row~3_combout\);

-- Location: LC_X8_Y7_N3
\u_startup|u_decode_lattice_startup|row[4]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|row\(4) = DFFEAS((((\u_startup|u_decode_lattice_startup|cnt\(1)) # (\u_startup|u_decode_lattice_startup|cnt\(0))) # (!\u_startup|u_decode_lattice_startup|cnt\(2))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_startup|u_clk_500|clkout~regout\,
	datab => \u_startup|u_decode_lattice_startup|cnt\(2),
	datac => \u_startup|u_decode_lattice_startup|cnt\(1),
	datad => \u_startup|u_decode_lattice_startup|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|row\(4));

-- Location: LC_X11_Y6_N4
\u_basic|u2|row[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|row\(4) = DFFEAS((((\u_basic|u2|cnt\(1)) # (\u_basic|u2|cnt\(0))) # (!\u_basic|u2|cnt\(2))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(2),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|row\(4));

-- Location: LC_X8_Y7_N9
\row~4\ : maxii_lcell
-- Equation(s):
-- \row~4_combout\ = ((\sw~combout\ & ((\u_basic|u2|row\(4)))) # (!\sw~combout\ & (\u_startup|u_decode_lattice_startup|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_startup|u_decode_lattice_startup|row\(4),
	datac => \sw~combout\,
	datad => \u_basic|u2|row\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \row~4_combout\);

-- Location: LC_X9_Y7_N6
\u_startup|u_decode_lattice_startup|row[5]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|row\(5) = DFFEAS(((\u_startup|u_decode_lattice_startup|cnt\(1)) # ((!\u_startup|u_decode_lattice_startup|cnt\(2)) # (!\u_startup|u_decode_lattice_startup|cnt\(0)))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_startup|u_clk_500|clkout~regout\,
	datab => \u_startup|u_decode_lattice_startup|cnt\(1),
	datac => \u_startup|u_decode_lattice_startup|cnt\(0),
	datad => \u_startup|u_decode_lattice_startup|cnt\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|row\(5));

-- Location: LC_X10_Y8_N5
\u_basic|u2|row[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|row\(5) = DFFEAS(((\u_basic|u2|cnt\(1)) # ((!\u_basic|u2|cnt\(0)) # (!\u_basic|u2|cnt\(2)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|cnt\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|row\(5));

-- Location: LC_X9_Y8_N4
\row~5\ : maxii_lcell
-- Equation(s):
-- \row~5_combout\ = ((\sw~combout\ & ((\u_basic|u2|row\(5)))) # (!\sw~combout\ & (\u_startup|u_decode_lattice_startup|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\,
	datac => \u_startup|u_decode_lattice_startup|row\(5),
	datad => \u_basic|u2|row\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \row~5_combout\);

-- Location: LC_X9_Y7_N8
\u_startup|u_decode_lattice_startup|row[6]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|row\(6) = DFFEAS((((\u_startup|u_decode_lattice_startup|cnt\(0)) # (!\u_startup|u_decode_lattice_startup|cnt\(2))) # (!\u_startup|u_decode_lattice_startup|cnt\(1))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_startup|u_clk_500|clkout~regout\,
	datab => \u_startup|u_decode_lattice_startup|cnt\(1),
	datac => \u_startup|u_decode_lattice_startup|cnt\(0),
	datad => \u_startup|u_decode_lattice_startup|cnt\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|row\(6));

-- Location: LC_X10_Y8_N4
\u_basic|u2|row[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|row\(6) = DFFEAS((((\u_basic|u2|cnt\(0)) # (!\u_basic|u2|cnt\(2))) # (!\u_basic|u2|cnt\(1))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|cnt\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|row\(6));

-- Location: LC_X9_Y8_N1
\row~6\ : maxii_lcell
-- Equation(s):
-- \row~6_combout\ = ((\sw~combout\ & ((\u_basic|u2|row\(6)))) # (!\sw~combout\ & (\u_startup|u_decode_lattice_startup|row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\,
	datac => \u_startup|u_decode_lattice_startup|row\(6),
	datad => \u_basic|u2|row\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \row~6_combout\);

-- Location: LC_X9_Y7_N4
\u_startup|u_decode_lattice_startup|row[7]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_lattice_startup|row\(7) = DFFEAS((((!\u_startup|u_decode_lattice_startup|cnt\(2)) # (!\u_startup|u_decode_lattice_startup|cnt\(0))) # (!\u_startup|u_decode_lattice_startup|cnt\(1))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_startup|u_clk_500|clkout~regout\,
	datab => \u_startup|u_decode_lattice_startup|cnt\(1),
	datac => \u_startup|u_decode_lattice_startup|cnt\(0),
	datad => \u_startup|u_decode_lattice_startup|cnt\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_lattice_startup|row\(7));

-- Location: LC_X11_Y6_N3
\u_basic|u2|row[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|row\(7) = DFFEAS((((!\u_basic|u2|cnt\(0)) # (!\u_basic|u2|cnt\(1))) # (!\u_basic|u2|cnt\(2))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(2),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|row\(7));

-- Location: LC_X9_Y7_N3
\row~7\ : maxii_lcell
-- Equation(s):
-- \row~7_combout\ = ((\sw~combout\ & ((\u_basic|u2|row\(7)))) # (!\sw~combout\ & (\u_startup|u_decode_lattice_startup|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\,
	datac => \u_startup|u_decode_lattice_startup|row\(7),
	datad => \u_basic|u2|row\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \row~7_combout\);

-- Location: LC_X7_Y4_N1
\u_startup|u_clk_2|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~55_combout\ = ((!\u_startup|u_clk_2|cnt\(0)))
-- \u_startup|u_clk_2|Add0~57\ = CARRY(((\u_startup|u_clk_2|cnt\(0))))
-- \u_startup|u_clk_2|Add0~57COUT1_141\ = CARRY(((\u_startup|u_clk_2|cnt\(0))))

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
	datab => \u_startup|u_clk_2|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~55_combout\,
	cout0 => \u_startup|u_clk_2|Add0~57\,
	cout1 => \u_startup|u_clk_2|Add0~57COUT1_141\);

-- Location: LC_X11_Y4_N2
\u_startup|u_clk_2|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(0) = DFFEAS((((\u_startup|u_clk_2|Add0~55_combout\ & !\u_startup|u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_2|Add0~55_combout\,
	datad => \u_startup|u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(0));

-- Location: LC_X7_Y4_N2
\u_startup|u_clk_2|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~50_combout\ = (\u_startup|u_clk_2|cnt\(1) $ ((\u_startup|u_clk_2|Add0~57\)))
-- \u_startup|u_clk_2|Add0~52\ = CARRY(((!\u_startup|u_clk_2|Add0~57\) # (!\u_startup|u_clk_2|cnt\(1))))
-- \u_startup|u_clk_2|Add0~52COUT1_142\ = CARRY(((!\u_startup|u_clk_2|Add0~57COUT1_141\) # (!\u_startup|u_clk_2|cnt\(1))))

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
	datab => \u_startup|u_clk_2|cnt\(1),
	cin0 => \u_startup|u_clk_2|Add0~57\,
	cin1 => \u_startup|u_clk_2|Add0~57COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~50_combout\,
	cout0 => \u_startup|u_clk_2|Add0~52\,
	cout1 => \u_startup|u_clk_2|Add0~52COUT1_142\);

-- Location: LC_X7_Y4_N0
\u_startup|u_clk_2|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(1) = DFFEAS((((\u_startup|u_clk_2|Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_startup|u_clk_2|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(1));

-- Location: LC_X7_Y4_N3
\u_startup|u_clk_2|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~45_combout\ = (\u_startup|u_clk_2|cnt\(2) $ ((!\u_startup|u_clk_2|Add0~52\)))
-- \u_startup|u_clk_2|Add0~47\ = CARRY(((\u_startup|u_clk_2|cnt\(2) & !\u_startup|u_clk_2|Add0~52\)))
-- \u_startup|u_clk_2|Add0~47COUT1_143\ = CARRY(((\u_startup|u_clk_2|cnt\(2) & !\u_startup|u_clk_2|Add0~52COUT1_142\)))

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
	datab => \u_startup|u_clk_2|cnt\(2),
	cin0 => \u_startup|u_clk_2|Add0~52\,
	cin1 => \u_startup|u_clk_2|Add0~52COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~45_combout\,
	cout0 => \u_startup|u_clk_2|Add0~47\,
	cout1 => \u_startup|u_clk_2|Add0~47COUT1_143\);

-- Location: LC_X6_Y4_N6
\u_startup|u_clk_2|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~45_combout\, , , VCC)

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
	datac => \u_startup|u_clk_2|Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(2));

-- Location: LC_X7_Y4_N4
\u_startup|u_clk_2|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~40_combout\ = (\u_startup|u_clk_2|cnt\(3) $ ((\u_startup|u_clk_2|Add0~47\)))
-- \u_startup|u_clk_2|Add0~42\ = CARRY(((!\u_startup|u_clk_2|Add0~47COUT1_143\) # (!\u_startup|u_clk_2|cnt\(3))))

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
	datab => \u_startup|u_clk_2|cnt\(3),
	cin0 => \u_startup|u_clk_2|Add0~47\,
	cin1 => \u_startup|u_clk_2|Add0~47COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~40_combout\,
	cout => \u_startup|u_clk_2|Add0~42\);

-- Location: LC_X10_Y4_N7
\u_startup|u_clk_2|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~2\ = (!\u_startup|u_clk_2|cnt\(0) & (!\u_startup|u_clk_2|cnt\(2) & (!E2_cnt[3] & !\u_startup|u_clk_2|cnt\(1))))
-- \u_startup|u_clk_2|cnt\(3) = DFFEAS(\u_startup|u_clk_2|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~40_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_2|cnt\(0),
	datab => \u_startup|u_clk_2|cnt\(2),
	datac => \u_startup|u_clk_2|Add0~40_combout\,
	datad => \u_startup|u_clk_2|cnt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~2\,
	regout => \u_startup|u_clk_2|cnt\(3));

-- Location: LC_X7_Y4_N5
\u_startup|u_clk_2|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~35_combout\ = (\u_startup|u_clk_2|cnt\(4) $ ((!\u_startup|u_clk_2|Add0~42\)))
-- \u_startup|u_clk_2|Add0~37\ = CARRY(((\u_startup|u_clk_2|cnt\(4) & !\u_startup|u_clk_2|Add0~42\)))
-- \u_startup|u_clk_2|Add0~37COUT1_144\ = CARRY(((\u_startup|u_clk_2|cnt\(4) & !\u_startup|u_clk_2|Add0~42\)))

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
	datab => \u_startup|u_clk_2|cnt\(4),
	cin => \u_startup|u_clk_2|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~35_combout\,
	cout0 => \u_startup|u_clk_2|Add0~37\,
	cout1 => \u_startup|u_clk_2|Add0~37COUT1_144\);

-- Location: LC_X6_Y4_N4
\u_startup|u_clk_2|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(4) = DFFEAS((((\u_startup|u_clk_2|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_startup|u_clk_2|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(4));

-- Location: LC_X7_Y4_N6
\u_startup|u_clk_2|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~20_combout\ = (\u_startup|u_clk_2|cnt\(5) $ (((!\u_startup|u_clk_2|Add0~42\ & \u_startup|u_clk_2|Add0~37\) # (\u_startup|u_clk_2|Add0~42\ & \u_startup|u_clk_2|Add0~37COUT1_144\))))
-- \u_startup|u_clk_2|Add0~22\ = CARRY(((!\u_startup|u_clk_2|Add0~37\) # (!\u_startup|u_clk_2|cnt\(5))))
-- \u_startup|u_clk_2|Add0~22COUT1_145\ = CARRY(((!\u_startup|u_clk_2|Add0~37COUT1_144\) # (!\u_startup|u_clk_2|cnt\(5))))

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
	datab => \u_startup|u_clk_2|cnt\(5),
	cin => \u_startup|u_clk_2|Add0~42\,
	cin0 => \u_startup|u_clk_2|Add0~37\,
	cin1 => \u_startup|u_clk_2|Add0~37COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~20_combout\,
	cout0 => \u_startup|u_clk_2|Add0~22\,
	cout1 => \u_startup|u_clk_2|Add0~22COUT1_145\);

-- Location: LC_X6_Y4_N7
\u_startup|u_clk_2|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(5) = DFFEAS((((\u_startup|u_clk_2|Add0~20_combout\ & !\u_startup|u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_2|Add0~20_combout\,
	datad => \u_startup|u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(5));

-- Location: LC_X7_Y4_N7
\u_startup|u_clk_2|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~30_combout\ = (\u_startup|u_clk_2|cnt\(6) $ ((!(!\u_startup|u_clk_2|Add0~42\ & \u_startup|u_clk_2|Add0~22\) # (\u_startup|u_clk_2|Add0~42\ & \u_startup|u_clk_2|Add0~22COUT1_145\))))
-- \u_startup|u_clk_2|Add0~32\ = CARRY(((\u_startup|u_clk_2|cnt\(6) & !\u_startup|u_clk_2|Add0~22\)))
-- \u_startup|u_clk_2|Add0~32COUT1_146\ = CARRY(((\u_startup|u_clk_2|cnt\(6) & !\u_startup|u_clk_2|Add0~22COUT1_145\)))

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
	datab => \u_startup|u_clk_2|cnt\(6),
	cin => \u_startup|u_clk_2|Add0~42\,
	cin0 => \u_startup|u_clk_2|Add0~22\,
	cin1 => \u_startup|u_clk_2|Add0~22COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~30_combout\,
	cout0 => \u_startup|u_clk_2|Add0~32\,
	cout1 => \u_startup|u_clk_2|Add0~32COUT1_146\);

-- Location: LC_X6_Y4_N2
\u_startup|u_clk_2|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(6) = DFFEAS((((\u_startup|u_clk_2|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_startup|u_clk_2|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(6));

-- Location: LC_X7_Y4_N8
\u_startup|u_clk_2|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~25_combout\ = (\u_startup|u_clk_2|cnt\(7) $ (((!\u_startup|u_clk_2|Add0~42\ & \u_startup|u_clk_2|Add0~32\) # (\u_startup|u_clk_2|Add0~42\ & \u_startup|u_clk_2|Add0~32COUT1_146\))))
-- \u_startup|u_clk_2|Add0~27\ = CARRY(((!\u_startup|u_clk_2|Add0~32\) # (!\u_startup|u_clk_2|cnt\(7))))
-- \u_startup|u_clk_2|Add0~27COUT1_147\ = CARRY(((!\u_startup|u_clk_2|Add0~32COUT1_146\) # (!\u_startup|u_clk_2|cnt\(7))))

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
	datab => \u_startup|u_clk_2|cnt\(7),
	cin => \u_startup|u_clk_2|Add0~42\,
	cin0 => \u_startup|u_clk_2|Add0~32\,
	cin1 => \u_startup|u_clk_2|Add0~32COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~25_combout\,
	cout0 => \u_startup|u_clk_2|Add0~27\,
	cout1 => \u_startup|u_clk_2|Add0~27COUT1_147\);

-- Location: LC_X6_Y4_N3
\u_startup|u_clk_2|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~1\ = (!\u_startup|u_clk_2|cnt\(4) & (\u_startup|u_clk_2|cnt\(5) & (!E2_cnt[7] & !\u_startup|u_clk_2|cnt\(6))))
-- \u_startup|u_clk_2|cnt\(7) = DFFEAS(\u_startup|u_clk_2|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~25_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_2|cnt\(4),
	datab => \u_startup|u_clk_2|cnt\(5),
	datac => \u_startup|u_clk_2|Add0~25_combout\,
	datad => \u_startup|u_clk_2|cnt\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~1\,
	regout => \u_startup|u_clk_2|cnt\(7));

-- Location: LC_X7_Y4_N9
\u_startup|u_clk_2|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~15_combout\ = \u_startup|u_clk_2|cnt\(8) $ ((((!(!\u_startup|u_clk_2|Add0~42\ & \u_startup|u_clk_2|Add0~27\) # (\u_startup|u_clk_2|Add0~42\ & \u_startup|u_clk_2|Add0~27COUT1_147\)))))
-- \u_startup|u_clk_2|Add0~17\ = CARRY((\u_startup|u_clk_2|cnt\(8) & ((!\u_startup|u_clk_2|Add0~27COUT1_147\))))

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
	dataa => \u_startup|u_clk_2|cnt\(8),
	cin => \u_startup|u_clk_2|Add0~42\,
	cin0 => \u_startup|u_clk_2|Add0~27\,
	cin1 => \u_startup|u_clk_2|Add0~27COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~15_combout\,
	cout => \u_startup|u_clk_2|Add0~17\);

-- Location: LC_X6_Y4_N0
\u_startup|u_clk_2|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~15_combout\, , , VCC)

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
	datac => \u_startup|u_clk_2|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(8));

-- Location: LC_X8_Y4_N0
\u_startup|u_clk_2|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~10_combout\ = (\u_startup|u_clk_2|cnt\(9) $ ((\u_startup|u_clk_2|Add0~17\)))
-- \u_startup|u_clk_2|Add0~12\ = CARRY(((!\u_startup|u_clk_2|Add0~17\) # (!\u_startup|u_clk_2|cnt\(9))))
-- \u_startup|u_clk_2|Add0~12COUT1_148\ = CARRY(((!\u_startup|u_clk_2|Add0~17\) # (!\u_startup|u_clk_2|cnt\(9))))

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
	datab => \u_startup|u_clk_2|cnt\(9),
	cin => \u_startup|u_clk_2|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~10_combout\,
	cout0 => \u_startup|u_clk_2|Add0~12\,
	cout1 => \u_startup|u_clk_2|Add0~12COUT1_148\);

-- Location: LC_X10_Y4_N4
\u_startup|u_clk_2|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~0\ = (\u_startup|u_clk_2|cnt\(10) & (!\u_startup|u_clk_2|cnt\(8) & (!E2_cnt[9] & \u_startup|u_clk_2|cnt\(11))))
-- \u_startup|u_clk_2|cnt\(9) = DFFEAS(\u_startup|u_clk_2|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_startup|u_clk_2|cnt\(10),
	datab => \u_startup|u_clk_2|cnt\(8),
	datac => \u_startup|u_clk_2|Add0~10_combout\,
	datad => \u_startup|u_clk_2|cnt\(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~0\,
	regout => \u_startup|u_clk_2|cnt\(9));

-- Location: LC_X8_Y4_N1
\u_startup|u_clk_2|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~5_combout\ = (\u_startup|u_clk_2|cnt\(10) $ ((!(!\u_startup|u_clk_2|Add0~17\ & \u_startup|u_clk_2|Add0~12\) # (\u_startup|u_clk_2|Add0~17\ & \u_startup|u_clk_2|Add0~12COUT1_148\))))
-- \u_startup|u_clk_2|Add0~7\ = CARRY(((\u_startup|u_clk_2|cnt\(10) & !\u_startup|u_clk_2|Add0~12\)))
-- \u_startup|u_clk_2|Add0~7COUT1_149\ = CARRY(((\u_startup|u_clk_2|cnt\(10) & !\u_startup|u_clk_2|Add0~12COUT1_148\)))

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
	datab => \u_startup|u_clk_2|cnt\(10),
	cin => \u_startup|u_clk_2|Add0~17\,
	cin0 => \u_startup|u_clk_2|Add0~12\,
	cin1 => \u_startup|u_clk_2|Add0~12COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~5_combout\,
	cout0 => \u_startup|u_clk_2|Add0~7\,
	cout1 => \u_startup|u_clk_2|Add0~7COUT1_149\);

-- Location: LC_X9_Y4_N9
\u_startup|u_clk_2|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(10) = DFFEAS((((\u_startup|u_clk_2|Add0~5_combout\ & !\u_startup|u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_2|Add0~5_combout\,
	datad => \u_startup|u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(10));

-- Location: LC_X8_Y4_N2
\u_startup|u_clk_2|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~0_combout\ = (\u_startup|u_clk_2|cnt\(11) $ (((!\u_startup|u_clk_2|Add0~17\ & \u_startup|u_clk_2|Add0~7\) # (\u_startup|u_clk_2|Add0~17\ & \u_startup|u_clk_2|Add0~7COUT1_149\))))
-- \u_startup|u_clk_2|Add0~2\ = CARRY(((!\u_startup|u_clk_2|Add0~7\) # (!\u_startup|u_clk_2|cnt\(11))))
-- \u_startup|u_clk_2|Add0~2COUT1_150\ = CARRY(((!\u_startup|u_clk_2|Add0~7COUT1_149\) # (!\u_startup|u_clk_2|cnt\(11))))

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
	datab => \u_startup|u_clk_2|cnt\(11),
	cin => \u_startup|u_clk_2|Add0~17\,
	cin0 => \u_startup|u_clk_2|Add0~7\,
	cin1 => \u_startup|u_clk_2|Add0~7COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~0_combout\,
	cout0 => \u_startup|u_clk_2|Add0~2\,
	cout1 => \u_startup|u_clk_2|Add0~2COUT1_150\);

-- Location: LC_X11_Y4_N8
\u_startup|u_clk_2|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(11) = DFFEAS((!\u_startup|u_clk_2|Equal0~8_combout\ & (((\u_startup|u_clk_2|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(11));

-- Location: LC_X8_Y4_N3
\u_startup|u_clk_2|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~60_combout\ = (\u_startup|u_clk_2|cnt\(12) $ ((!(!\u_startup|u_clk_2|Add0~17\ & \u_startup|u_clk_2|Add0~2\) # (\u_startup|u_clk_2|Add0~17\ & \u_startup|u_clk_2|Add0~2COUT1_150\))))
-- \u_startup|u_clk_2|Add0~62\ = CARRY(((\u_startup|u_clk_2|cnt\(12) & !\u_startup|u_clk_2|Add0~2\)))
-- \u_startup|u_clk_2|Add0~62COUT1_151\ = CARRY(((\u_startup|u_clk_2|cnt\(12) & !\u_startup|u_clk_2|Add0~2COUT1_150\)))

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
	datab => \u_startup|u_clk_2|cnt\(12),
	cin => \u_startup|u_clk_2|Add0~17\,
	cin0 => \u_startup|u_clk_2|Add0~2\,
	cin1 => \u_startup|u_clk_2|Add0~2COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~60_combout\,
	cout0 => \u_startup|u_clk_2|Add0~62\,
	cout1 => \u_startup|u_clk_2|Add0~62COUT1_151\);

-- Location: LC_X11_Y4_N9
\u_startup|u_clk_2|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(12) = DFFEAS((!\u_startup|u_clk_2|Equal0~8_combout\ & (((\u_startup|u_clk_2|Add0~60_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(12));

-- Location: LC_X8_Y4_N4
\u_startup|u_clk_2|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~65_combout\ = \u_startup|u_clk_2|cnt\(13) $ (((((!\u_startup|u_clk_2|Add0~17\ & \u_startup|u_clk_2|Add0~62\) # (\u_startup|u_clk_2|Add0~17\ & \u_startup|u_clk_2|Add0~62COUT1_151\)))))
-- \u_startup|u_clk_2|Add0~67\ = CARRY(((!\u_startup|u_clk_2|Add0~62COUT1_151\)) # (!\u_startup|u_clk_2|cnt\(13)))

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
	dataa => \u_startup|u_clk_2|cnt\(13),
	cin => \u_startup|u_clk_2|Add0~17\,
	cin0 => \u_startup|u_clk_2|Add0~62\,
	cin1 => \u_startup|u_clk_2|Add0~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~65_combout\,
	cout => \u_startup|u_clk_2|Add0~67\);

-- Location: LC_X11_Y4_N1
\u_startup|u_clk_2|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(13) = DFFEAS((!\u_startup|u_clk_2|Equal0~8_combout\ & (((\u_startup|u_clk_2|Add0~65_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(13));

-- Location: LC_X9_Y4_N0
\u_startup|u_clk_2|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~90_combout\ = \u_startup|u_clk_2|cnt\(19) $ ((((\u_startup|u_clk_2|Add0~87\))))
-- \u_startup|u_clk_2|Add0~92\ = CARRY(((!\u_startup|u_clk_2|Add0~87\)) # (!\u_startup|u_clk_2|cnt\(19)))
-- \u_startup|u_clk_2|Add0~92COUT1_156\ = CARRY(((!\u_startup|u_clk_2|Add0~87\)) # (!\u_startup|u_clk_2|cnt\(19)))

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
	dataa => \u_startup|u_clk_2|cnt\(19),
	cin => \u_startup|u_clk_2|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~90_combout\,
	cout0 => \u_startup|u_clk_2|Add0~92\,
	cout1 => \u_startup|u_clk_2|Add0~92COUT1_156\);

-- Location: LC_X10_Y4_N6
\u_startup|u_clk_2|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(19) = DFFEAS((((!\u_startup|u_clk_2|Equal0~8_combout\ & \u_startup|u_clk_2|Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(19));

-- Location: LC_X8_Y4_N5
\u_startup|u_clk_2|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~75_combout\ = \u_startup|u_clk_2|cnt\(14) $ ((((!\u_startup|u_clk_2|Add0~67\))))
-- \u_startup|u_clk_2|Add0~77\ = CARRY((\u_startup|u_clk_2|cnt\(14) & ((!\u_startup|u_clk_2|Add0~67\))))
-- \u_startup|u_clk_2|Add0~77COUT1_152\ = CARRY((\u_startup|u_clk_2|cnt\(14) & ((!\u_startup|u_clk_2|Add0~67\))))

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
	dataa => \u_startup|u_clk_2|cnt\(14),
	cin => \u_startup|u_clk_2|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~75_combout\,
	cout0 => \u_startup|u_clk_2|Add0~77\,
	cout1 => \u_startup|u_clk_2|Add0~77COUT1_152\);

-- Location: LC_X11_Y4_N0
\u_startup|u_clk_2|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~3\ = (\u_startup|u_clk_2|cnt\(15) & (\u_startup|u_clk_2|cnt\(13) & (!E2_cnt[14] & \u_startup|u_clk_2|cnt\(12))))
-- \u_startup|u_clk_2|cnt\(14) = DFFEAS(\u_startup|u_clk_2|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~75_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_2|cnt\(15),
	datab => \u_startup|u_clk_2|cnt\(13),
	datac => \u_startup|u_clk_2|Add0~75_combout\,
	datad => \u_startup|u_clk_2|cnt\(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~3\,
	regout => \u_startup|u_clk_2|cnt\(14));

-- Location: LC_X8_Y4_N6
\u_startup|u_clk_2|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~70_combout\ = (\u_startup|u_clk_2|cnt\(15) $ (((!\u_startup|u_clk_2|Add0~67\ & \u_startup|u_clk_2|Add0~77\) # (\u_startup|u_clk_2|Add0~67\ & \u_startup|u_clk_2|Add0~77COUT1_152\))))
-- \u_startup|u_clk_2|Add0~72\ = CARRY(((!\u_startup|u_clk_2|Add0~77\) # (!\u_startup|u_clk_2|cnt\(15))))
-- \u_startup|u_clk_2|Add0~72COUT1_153\ = CARRY(((!\u_startup|u_clk_2|Add0~77COUT1_152\) # (!\u_startup|u_clk_2|cnt\(15))))

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
	datab => \u_startup|u_clk_2|cnt\(15),
	cin => \u_startup|u_clk_2|Add0~67\,
	cin0 => \u_startup|u_clk_2|Add0~77\,
	cin1 => \u_startup|u_clk_2|Add0~77COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~70_combout\,
	cout0 => \u_startup|u_clk_2|Add0~72\,
	cout1 => \u_startup|u_clk_2|Add0~72COUT1_153\);

-- Location: LC_X11_Y4_N6
\u_startup|u_clk_2|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(15) = DFFEAS((((\u_startup|u_clk_2|Add0~70_combout\ & !\u_startup|u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_2|Add0~70_combout\,
	datad => \u_startup|u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(15));

-- Location: LC_X8_Y4_N7
\u_startup|u_clk_2|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~95_combout\ = \u_startup|u_clk_2|cnt\(16) $ ((((!(!\u_startup|u_clk_2|Add0~67\ & \u_startup|u_clk_2|Add0~72\) # (\u_startup|u_clk_2|Add0~67\ & \u_startup|u_clk_2|Add0~72COUT1_153\)))))
-- \u_startup|u_clk_2|Add0~97\ = CARRY((\u_startup|u_clk_2|cnt\(16) & ((!\u_startup|u_clk_2|Add0~72\))))
-- \u_startup|u_clk_2|Add0~97COUT1_154\ = CARRY((\u_startup|u_clk_2|cnt\(16) & ((!\u_startup|u_clk_2|Add0~72COUT1_153\))))

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
	dataa => \u_startup|u_clk_2|cnt\(16),
	cin => \u_startup|u_clk_2|Add0~67\,
	cin0 => \u_startup|u_clk_2|Add0~72\,
	cin1 => \u_startup|u_clk_2|Add0~72COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~95_combout\,
	cout0 => \u_startup|u_clk_2|Add0~97\,
	cout1 => \u_startup|u_clk_2|Add0~97COUT1_154\);

-- Location: LC_X10_Y4_N1
\u_startup|u_clk_2|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~5\ = (\u_startup|u_clk_2|cnt\(17) & (\u_startup|u_clk_2|cnt\(19) & (!E2_cnt[16] & \u_startup|u_clk_2|cnt\(18))))
-- \u_startup|u_clk_2|cnt\(16) = DFFEAS(\u_startup|u_clk_2|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~95_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_2|cnt\(17),
	datab => \u_startup|u_clk_2|cnt\(19),
	datac => \u_startup|u_clk_2|Add0~95_combout\,
	datad => \u_startup|u_clk_2|cnt\(18),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~5\,
	regout => \u_startup|u_clk_2|cnt\(16));

-- Location: LC_X8_Y4_N8
\u_startup|u_clk_2|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~80_combout\ = (\u_startup|u_clk_2|cnt\(17) $ (((!\u_startup|u_clk_2|Add0~67\ & \u_startup|u_clk_2|Add0~97\) # (\u_startup|u_clk_2|Add0~67\ & \u_startup|u_clk_2|Add0~97COUT1_154\))))
-- \u_startup|u_clk_2|Add0~82\ = CARRY(((!\u_startup|u_clk_2|Add0~97\) # (!\u_startup|u_clk_2|cnt\(17))))
-- \u_startup|u_clk_2|Add0~82COUT1_155\ = CARRY(((!\u_startup|u_clk_2|Add0~97COUT1_154\) # (!\u_startup|u_clk_2|cnt\(17))))

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
	datab => \u_startup|u_clk_2|cnt\(17),
	cin => \u_startup|u_clk_2|Add0~67\,
	cin0 => \u_startup|u_clk_2|Add0~97\,
	cin1 => \u_startup|u_clk_2|Add0~97COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~80_combout\,
	cout0 => \u_startup|u_clk_2|Add0~82\,
	cout1 => \u_startup|u_clk_2|Add0~82COUT1_155\);

-- Location: LC_X11_Y4_N3
\u_startup|u_clk_2|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(17) = DFFEAS((!\u_startup|u_clk_2|Equal0~8_combout\ & (((\u_startup|u_clk_2|Add0~80_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(17));

-- Location: LC_X8_Y4_N9
\u_startup|u_clk_2|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~85_combout\ = (\u_startup|u_clk_2|cnt\(18) $ ((!(!\u_startup|u_clk_2|Add0~67\ & \u_startup|u_clk_2|Add0~82\) # (\u_startup|u_clk_2|Add0~67\ & \u_startup|u_clk_2|Add0~82COUT1_155\))))
-- \u_startup|u_clk_2|Add0~87\ = CARRY(((\u_startup|u_clk_2|cnt\(18) & !\u_startup|u_clk_2|Add0~82COUT1_155\)))

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
	datab => \u_startup|u_clk_2|cnt\(18),
	cin => \u_startup|u_clk_2|Add0~67\,
	cin0 => \u_startup|u_clk_2|Add0~82\,
	cin1 => \u_startup|u_clk_2|Add0~82COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~85_combout\,
	cout => \u_startup|u_clk_2|Add0~87\);

-- Location: LC_X11_Y4_N7
\u_startup|u_clk_2|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(18) = DFFEAS((!\u_startup|u_clk_2|Equal0~8_combout\ & (((\u_startup|u_clk_2|Add0~85_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(18));

-- Location: LC_X9_Y4_N1
\u_startup|u_clk_2|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~100_combout\ = \u_startup|u_clk_2|cnt\(20) $ ((((!(!\u_startup|u_clk_2|Add0~87\ & \u_startup|u_clk_2|Add0~92\) # (\u_startup|u_clk_2|Add0~87\ & \u_startup|u_clk_2|Add0~92COUT1_156\)))))
-- \u_startup|u_clk_2|Add0~102\ = CARRY((\u_startup|u_clk_2|cnt\(20) & ((!\u_startup|u_clk_2|Add0~92\))))
-- \u_startup|u_clk_2|Add0~102COUT1_157\ = CARRY((\u_startup|u_clk_2|cnt\(20) & ((!\u_startup|u_clk_2|Add0~92COUT1_156\))))

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
	dataa => \u_startup|u_clk_2|cnt\(20),
	cin => \u_startup|u_clk_2|Add0~87\,
	cin0 => \u_startup|u_clk_2|Add0~92\,
	cin1 => \u_startup|u_clk_2|Add0~92COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~100_combout\,
	cout0 => \u_startup|u_clk_2|Add0~102\,
	cout1 => \u_startup|u_clk_2|Add0~102COUT1_157\);

-- Location: LC_X11_Y4_N4
\u_startup|u_clk_2|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(20) = DFFEAS((!\u_startup|u_clk_2|Equal0~8_combout\ & (((\u_startup|u_clk_2|Add0~100_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(20));

-- Location: LC_X9_Y4_N2
\u_startup|u_clk_2|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~105_combout\ = (\u_startup|u_clk_2|cnt\(21) $ (((!\u_startup|u_clk_2|Add0~87\ & \u_startup|u_clk_2|Add0~102\) # (\u_startup|u_clk_2|Add0~87\ & \u_startup|u_clk_2|Add0~102COUT1_157\))))
-- \u_startup|u_clk_2|Add0~107\ = CARRY(((!\u_startup|u_clk_2|Add0~102\) # (!\u_startup|u_clk_2|cnt\(21))))
-- \u_startup|u_clk_2|Add0~107COUT1_158\ = CARRY(((!\u_startup|u_clk_2|Add0~102COUT1_157\) # (!\u_startup|u_clk_2|cnt\(21))))

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
	datab => \u_startup|u_clk_2|cnt\(21),
	cin => \u_startup|u_clk_2|Add0~87\,
	cin0 => \u_startup|u_clk_2|Add0~102\,
	cin1 => \u_startup|u_clk_2|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~105_combout\,
	cout0 => \u_startup|u_clk_2|Add0~107\,
	cout1 => \u_startup|u_clk_2|Add0~107COUT1_158\);

-- Location: LC_X12_Y4_N8
\u_startup|u_clk_2|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(21) = DFFEAS((((!\u_startup|u_clk_2|Equal0~8_combout\ & \u_startup|u_clk_2|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(21));

-- Location: LC_X9_Y4_N3
\u_startup|u_clk_2|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~115_combout\ = (\u_startup|u_clk_2|cnt\(22) $ ((!(!\u_startup|u_clk_2|Add0~87\ & \u_startup|u_clk_2|Add0~107\) # (\u_startup|u_clk_2|Add0~87\ & \u_startup|u_clk_2|Add0~107COUT1_158\))))
-- \u_startup|u_clk_2|Add0~117\ = CARRY(((\u_startup|u_clk_2|cnt\(22) & !\u_startup|u_clk_2|Add0~107\)))
-- \u_startup|u_clk_2|Add0~117COUT1_159\ = CARRY(((\u_startup|u_clk_2|cnt\(22) & !\u_startup|u_clk_2|Add0~107COUT1_158\)))

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
	datab => \u_startup|u_clk_2|cnt\(22),
	cin => \u_startup|u_clk_2|Add0~87\,
	cin0 => \u_startup|u_clk_2|Add0~107\,
	cin1 => \u_startup|u_clk_2|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~115_combout\,
	cout0 => \u_startup|u_clk_2|Add0~117\,
	cout1 => \u_startup|u_clk_2|Add0~117COUT1_159\);

-- Location: LC_X12_Y4_N9
\u_startup|u_clk_2|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~6\ = (\u_startup|u_clk_2|cnt\(21) & (\u_startup|u_clk_2|cnt\(23) & (!E2_cnt[22] & \u_startup|u_clk_2|cnt\(20))))
-- \u_startup|u_clk_2|cnt\(22) = DFFEAS(\u_startup|u_clk_2|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~115_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_2|cnt\(21),
	datab => \u_startup|u_clk_2|cnt\(23),
	datac => \u_startup|u_clk_2|Add0~115_combout\,
	datad => \u_startup|u_clk_2|cnt\(20),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~6\,
	regout => \u_startup|u_clk_2|cnt\(22));

-- Location: LC_X9_Y4_N4
\u_startup|u_clk_2|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~110_combout\ = (\u_startup|u_clk_2|cnt\(23) $ (((!\u_startup|u_clk_2|Add0~87\ & \u_startup|u_clk_2|Add0~117\) # (\u_startup|u_clk_2|Add0~87\ & \u_startup|u_clk_2|Add0~117COUT1_159\))))
-- \u_startup|u_clk_2|Add0~112\ = CARRY(((!\u_startup|u_clk_2|Add0~117COUT1_159\) # (!\u_startup|u_clk_2|cnt\(23))))

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
	datab => \u_startup|u_clk_2|cnt\(23),
	cin => \u_startup|u_clk_2|Add0~87\,
	cin0 => \u_startup|u_clk_2|Add0~117\,
	cin1 => \u_startup|u_clk_2|Add0~117COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~110_combout\,
	cout => \u_startup|u_clk_2|Add0~112\);

-- Location: LC_X12_Y4_N7
\u_startup|u_clk_2|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(23) = DFFEAS((((!\u_startup|u_clk_2|Equal0~8_combout\ & \u_startup|u_clk_2|Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_startup|u_clk_2|Equal0~8_combout\,
	datad => \u_startup|u_clk_2|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(23));

-- Location: LC_X9_Y4_N5
\u_startup|u_clk_2|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~120_combout\ = (\u_startup|u_clk_2|cnt\(24) $ ((!\u_startup|u_clk_2|Add0~112\)))
-- \u_startup|u_clk_2|Add0~122\ = CARRY(((\u_startup|u_clk_2|cnt\(24) & !\u_startup|u_clk_2|Add0~112\)))
-- \u_startup|u_clk_2|Add0~122COUT1_160\ = CARRY(((\u_startup|u_clk_2|cnt\(24) & !\u_startup|u_clk_2|Add0~112\)))

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
	datab => \u_startup|u_clk_2|cnt\(24),
	cin => \u_startup|u_clk_2|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~120_combout\,
	cout0 => \u_startup|u_clk_2|Add0~122\,
	cout1 => \u_startup|u_clk_2|Add0~122COUT1_160\);

-- Location: LC_X9_Y4_N6
\u_startup|u_clk_2|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~125_combout\ = (\u_startup|u_clk_2|cnt\(25) $ (((!\u_startup|u_clk_2|Add0~112\ & \u_startup|u_clk_2|Add0~122\) # (\u_startup|u_clk_2|Add0~112\ & \u_startup|u_clk_2|Add0~122COUT1_160\))))
-- \u_startup|u_clk_2|Add0~127\ = CARRY(((!\u_startup|u_clk_2|Add0~122\) # (!\u_startup|u_clk_2|cnt\(25))))
-- \u_startup|u_clk_2|Add0~127COUT1_161\ = CARRY(((!\u_startup|u_clk_2|Add0~122COUT1_160\) # (!\u_startup|u_clk_2|cnt\(25))))

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
	datab => \u_startup|u_clk_2|cnt\(25),
	cin => \u_startup|u_clk_2|Add0~112\,
	cin0 => \u_startup|u_clk_2|Add0~122\,
	cin1 => \u_startup|u_clk_2|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~125_combout\,
	cout0 => \u_startup|u_clk_2|Add0~127\,
	cout1 => \u_startup|u_clk_2|Add0~127COUT1_161\);

-- Location: LC_X9_Y4_N7
\u_startup|u_clk_2|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~130_combout\ = \u_startup|u_clk_2|cnt\(26) $ ((((!(!\u_startup|u_clk_2|Add0~112\ & \u_startup|u_clk_2|Add0~127\) # (\u_startup|u_clk_2|Add0~112\ & \u_startup|u_clk_2|Add0~127COUT1_161\)))))
-- \u_startup|u_clk_2|Add0~132\ = CARRY((\u_startup|u_clk_2|cnt\(26) & ((!\u_startup|u_clk_2|Add0~127\))))
-- \u_startup|u_clk_2|Add0~132COUT1_162\ = CARRY((\u_startup|u_clk_2|cnt\(26) & ((!\u_startup|u_clk_2|Add0~127COUT1_161\))))

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
	dataa => \u_startup|u_clk_2|cnt\(26),
	cin => \u_startup|u_clk_2|Add0~112\,
	cin0 => \u_startup|u_clk_2|Add0~127\,
	cin1 => \u_startup|u_clk_2|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~130_combout\,
	cout0 => \u_startup|u_clk_2|Add0~132\,
	cout1 => \u_startup|u_clk_2|Add0~132COUT1_162\);

-- Location: LC_X9_Y4_N8
\u_startup|u_clk_2|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Add0~135_combout\ = (((!\u_startup|u_clk_2|Add0~112\ & \u_startup|u_clk_2|Add0~132\) # (\u_startup|u_clk_2|Add0~112\ & \u_startup|u_clk_2|Add0~132COUT1_162\) $ (\u_startup|u_clk_2|cnt\(27))))

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
	datad => \u_startup|u_clk_2|cnt\(27),
	cin => \u_startup|u_clk_2|Add0~112\,
	cin0 => \u_startup|u_clk_2|Add0~132\,
	cin1 => \u_startup|u_clk_2|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Add0~135_combout\);

-- Location: LC_X10_Y4_N9
\u_startup|u_clk_2|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~135_combout\, , , VCC)

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
	datac => \u_startup|u_clk_2|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(27));

-- Location: LC_X10_Y4_N5
\u_startup|u_clk_2|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~7\ = (!\u_startup|u_clk_2|cnt\(26) & (!\u_startup|u_clk_2|cnt\(27) & (!E2_cnt[24] & !\u_startup|u_clk_2|cnt\(25))))
-- \u_startup|u_clk_2|cnt\(24) = DFFEAS(\u_startup|u_clk_2|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~120_combout\, , , VCC)

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
	dataa => \u_startup|u_clk_2|cnt\(26),
	datab => \u_startup|u_clk_2|cnt\(27),
	datac => \u_startup|u_clk_2|Add0~120_combout\,
	datad => \u_startup|u_clk_2|cnt\(25),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~7\,
	regout => \u_startup|u_clk_2|cnt\(24));

-- Location: LC_X10_Y4_N2
\u_startup|u_clk_2|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_startup|u_clk_2|Add0~125_combout\, , , VCC)

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
	datac => \u_startup|u_clk_2|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(25));

-- Location: LC_X10_Y4_N3
\u_startup|u_clk_2|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|cnt\(26) = DFFEAS((((\u_startup|u_clk_2|Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_startup|u_clk_2|Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|cnt\(26));

-- Location: LC_X10_Y4_N8
\u_startup|u_clk_2|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~4_combout\ = (\u_startup|u_clk_2|Equal0~3\ & (\u_startup|u_clk_2|Equal0~1\ & (\u_startup|u_clk_2|Equal0~0\ & \u_startup|u_clk_2|Equal0~2\)))

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
	dataa => \u_startup|u_clk_2|Equal0~3\,
	datab => \u_startup|u_clk_2|Equal0~1\,
	datac => \u_startup|u_clk_2|Equal0~0\,
	datad => \u_startup|u_clk_2|Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~4_combout\);

-- Location: LC_X10_Y4_N0
\u_startup|u_clk_2|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|Equal0~8_combout\ = (\u_startup|u_clk_2|Equal0~7\ & (\u_startup|u_clk_2|Equal0~5\ & (\u_startup|u_clk_2|Equal0~6\ & \u_startup|u_clk_2|Equal0~4_combout\)))

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
	dataa => \u_startup|u_clk_2|Equal0~7\,
	datab => \u_startup|u_clk_2|Equal0~5\,
	datac => \u_startup|u_clk_2|Equal0~6\,
	datad => \u_startup|u_clk_2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_clk_2|Equal0~8_combout\);

-- Location: LC_X11_Y6_N1
\u_basic|u_clk_6|clkout\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_6|clkout~regout\ = DFFEAS((((!\u_basic|u_clk_6|clkout~regout\))), GLOBAL(\clk~combout\), VCC, , \u_startup|u_clk_2|Equal0~8_combout\, , , , )

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
	clk => \clk~combout\,
	datad => \u_basic|u_clk_6|clkout~regout\,
	aclr => GND,
	ena => \u_startup|u_clk_2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_6|clkout~regout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN(6),
	combout => \BTN~combout\(6));

-- Location: LC_X12_Y8_N9
\u_basic|u_debounce|key_rst[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst\(6) = DFFEAS((\BTN~combout\(6)), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \BTN~combout\(6),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst\(6));

-- Location: LC_X12_Y8_N5
\u_basic|u_debounce|key_rst_pre[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_edge\(6) = (((!F1_key_rst_pre[6] & \u_basic|u_debounce|key_rst\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_basic|u_debounce|key_rst\(6),
	datad => \u_basic|u_debounce|key_rst\(6),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|key_edge\(6),
	regout => \u_basic|u_debounce|key_rst_pre\(6));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN(1),
	combout => \BTN~combout\(1));

-- Location: LC_X12_Y8_N3
\u_basic|u_debounce|key_rst[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst\(1) = DFFEAS((((\BTN~combout\(1)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

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
	datad => \BTN~combout\(1),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst\(1));

-- Location: LC_X12_Y8_N1
\u_basic|u_debounce|key_rst_pre[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst_pre\(1) = DFFEAS((((\u_basic|u_debounce|key_rst\(1)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

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
	datad => \u_basic|u_debounce|key_rst\(1),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst_pre\(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN(0),
	combout => \BTN~combout\(0));

-- Location: LC_X11_Y8_N4
\u_basic|u_debounce|key_rst[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst\(0) = DFFEAS(((\BTN~combout\(0))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \BTN~combout\(0),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst\(0));

-- Location: LC_X12_Y8_N0
\u_basic|u_debounce|key_rst_pre[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|WideOr0~0\ = (\u_basic|u_debounce|key_rst\(1) & (((!F1_key_rst_pre[0] & \u_basic|u_debounce|key_rst\(0))) # (!\u_basic|u_debounce|key_rst_pre\(1)))) # (!\u_basic|u_debounce|key_rst\(1) & (((!F1_key_rst_pre[0] & 
-- \u_basic|u_debounce|key_rst\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|key_rst\(1),
	datab => \u_basic|u_debounce|key_rst_pre\(1),
	datac => \u_basic|u_debounce|key_rst\(0),
	datad => \u_basic|u_debounce|key_rst\(0),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|WideOr0~0\,
	regout => \u_basic|u_debounce|key_rst_pre\(0));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN(5),
	combout => \BTN~combout\(5));

-- Location: LC_X11_Y8_N3
\u_basic|u_debounce|key_rst[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst\(5) = DFFEAS(((\BTN~combout\(5))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \BTN~combout\(5),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst\(5));

-- Location: LC_X11_Y8_N8
\u_basic|u_debounce|key_rst_pre[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst_pre\(5) = DFFEAS((((\u_basic|u_debounce|key_rst\(5)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

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
	datad => \u_basic|u_debounce|key_rst\(5),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst_pre\(5));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN(4),
	combout => \BTN~combout\(4));

-- Location: LC_X11_Y8_N7
\u_basic|u_debounce|key_rst[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst\(4) = DFFEAS(((\BTN~combout\(4))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \BTN~combout\(4),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst\(4));

-- Location: LC_X11_Y8_N6
\u_basic|u_debounce|key_rst_pre[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|WideOr0~2\ = (\u_basic|u_debounce|key_rst_pre\(5) & (\u_basic|u_debounce|key_rst\(4) & (!F1_key_rst_pre[4]))) # (!\u_basic|u_debounce|key_rst_pre\(5) & ((\u_basic|u_debounce|key_rst\(5)) # ((\u_basic|u_debounce|key_rst\(4) & 
-- !F1_key_rst_pre[4]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|key_rst_pre\(5),
	datab => \u_basic|u_debounce|key_rst\(4),
	datac => \u_basic|u_debounce|key_rst\(4),
	datad => \u_basic|u_debounce|key_rst\(5),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|WideOr0~2\,
	regout => \u_basic|u_debounce|key_rst_pre\(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN(3),
	combout => \BTN~combout\(3));

-- Location: LC_X12_Y8_N2
\u_basic|u_debounce|key_rst[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst\(3) = DFFEAS((\BTN~combout\(3)), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \BTN~combout\(3),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst\(3));

-- Location: LC_X12_Y8_N8
\u_basic|u_debounce|key_rst_pre[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst_pre\(3) = DFFEAS((((\u_basic|u_debounce|key_rst\(3)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

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
	datad => \u_basic|u_debounce|key_rst\(3),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst_pre\(3));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BTN[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BTN(2),
	combout => \BTN~combout\(2));

-- Location: LC_X11_Y8_N2
\u_basic|u_debounce|key_rst[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_rst\(2) = DFFEAS(((\BTN~combout\(2))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \BTN~combout\(2),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_rst\(2));

-- Location: LC_X12_Y8_N6
\u_basic|u_debounce|key_rst_pre[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|WideOr0~1\ = (\u_basic|u_debounce|key_rst_pre\(3) & (((!F1_key_rst_pre[2] & \u_basic|u_debounce|key_rst\(2))))) # (!\u_basic|u_debounce|key_rst_pre\(3) & ((\u_basic|u_debounce|key_rst\(3)) # ((!F1_key_rst_pre[2] & 
-- \u_basic|u_debounce|key_rst\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|key_rst_pre\(3),
	datab => \u_basic|u_debounce|key_rst\(3),
	datac => \u_basic|u_debounce|key_rst\(2),
	datad => \u_basic|u_debounce|key_rst\(2),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|WideOr0~1\,
	regout => \u_basic|u_debounce|key_rst_pre\(2));

-- Location: LC_X12_Y8_N7
\u_basic|u_debounce|WideOr0~3\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|WideOr0~3_combout\ = (\u_basic|u_debounce|key_edge\(6)) # ((\u_basic|u_debounce|WideOr0~0\) # ((\u_basic|u_debounce|WideOr0~2\) # (\u_basic|u_debounce|WideOr0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_debounce|key_edge\(6),
	datab => \u_basic|u_debounce|WideOr0~0\,
	datac => \u_basic|u_debounce|WideOr0~2\,
	datad => \u_basic|u_debounce|WideOr0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|WideOr0~3_combout\);

-- Location: LC_X12_Y10_N1
\u_basic|u_debounce|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(0) = DFFEAS(((!\u_basic|u_debounce|cnt\(0))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[0]~5\ = CARRY(((\u_basic|u_debounce|cnt\(0))))
-- \u_basic|u_debounce|cnt[0]~5COUT1_37\ = CARRY(((\u_basic|u_debounce|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(0),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(0),
	cout0 => \u_basic|u_debounce|cnt[0]~5\,
	cout1 => \u_basic|u_debounce|cnt[0]~5COUT1_37\);

-- Location: LC_X12_Y10_N2
\u_basic|u_debounce|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(1) = DFFEAS((\u_basic|u_debounce|cnt\(1) $ ((\u_basic|u_debounce|cnt[0]~5\))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[1]~7\ = CARRY(((!\u_basic|u_debounce|cnt[0]~5\) # (!\u_basic|u_debounce|cnt\(1))))
-- \u_basic|u_debounce|cnt[1]~7COUT1_38\ = CARRY(((!\u_basic|u_debounce|cnt[0]~5COUT1_37\) # (!\u_basic|u_debounce|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(1),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin0 => \u_basic|u_debounce|cnt[0]~5\,
	cin1 => \u_basic|u_debounce|cnt[0]~5COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(1),
	cout0 => \u_basic|u_debounce|cnt[1]~7\,
	cout1 => \u_basic|u_debounce|cnt[1]~7COUT1_38\);

-- Location: LC_X12_Y10_N3
\u_basic|u_debounce|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(2) = DFFEAS(\u_basic|u_debounce|cnt\(2) $ ((((!\u_basic|u_debounce|cnt[1]~7\)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[2]~9\ = CARRY((\u_basic|u_debounce|cnt\(2) & ((!\u_basic|u_debounce|cnt[1]~7\))))
-- \u_basic|u_debounce|cnt[2]~9COUT1_39\ = CARRY((\u_basic|u_debounce|cnt\(2) & ((!\u_basic|u_debounce|cnt[1]~7COUT1_38\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|cnt\(2),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin0 => \u_basic|u_debounce|cnt[1]~7\,
	cin1 => \u_basic|u_debounce|cnt[1]~7COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(2),
	cout0 => \u_basic|u_debounce|cnt[2]~9\,
	cout1 => \u_basic|u_debounce|cnt[2]~9COUT1_39\);

-- Location: LC_X12_Y10_N4
\u_basic|u_debounce|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(3) = DFFEAS((\u_basic|u_debounce|cnt\(3) $ ((\u_basic|u_debounce|cnt[2]~9\))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[3]~11\ = CARRY(((!\u_basic|u_debounce|cnt[2]~9COUT1_39\) # (!\u_basic|u_debounce|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(3),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin0 => \u_basic|u_debounce|cnt[2]~9\,
	cin1 => \u_basic|u_debounce|cnt[2]~9COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(3),
	cout => \u_basic|u_debounce|cnt[3]~11\);

-- Location: LC_X12_Y10_N5
\u_basic|u_debounce|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(4) = DFFEAS(\u_basic|u_debounce|cnt\(4) $ ((((!\u_basic|u_debounce|cnt[3]~11\)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[4]~13\ = CARRY((\u_basic|u_debounce|cnt\(4) & ((!\u_basic|u_debounce|cnt[3]~11\))))
-- \u_basic|u_debounce|cnt[4]~13COUT1_40\ = CARRY((\u_basic|u_debounce|cnt\(4) & ((!\u_basic|u_debounce|cnt[3]~11\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|cnt\(4),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[3]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(4),
	cout0 => \u_basic|u_debounce|cnt[4]~13\,
	cout1 => \u_basic|u_debounce|cnt[4]~13COUT1_40\);

-- Location: LC_X12_Y10_N6
\u_basic|u_debounce|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(5) = DFFEAS(\u_basic|u_debounce|cnt\(5) $ (((((!\u_basic|u_debounce|cnt[3]~11\ & \u_basic|u_debounce|cnt[4]~13\) # (\u_basic|u_debounce|cnt[3]~11\ & \u_basic|u_debounce|cnt[4]~13COUT1_40\))))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[5]~15\ = CARRY(((!\u_basic|u_debounce|cnt[4]~13\)) # (!\u_basic|u_debounce|cnt\(5)))
-- \u_basic|u_debounce|cnt[5]~15COUT1_41\ = CARRY(((!\u_basic|u_debounce|cnt[4]~13COUT1_40\)) # (!\u_basic|u_debounce|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|cnt\(5),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[3]~11\,
	cin0 => \u_basic|u_debounce|cnt[4]~13\,
	cin1 => \u_basic|u_debounce|cnt[4]~13COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(5),
	cout0 => \u_basic|u_debounce|cnt[5]~15\,
	cout1 => \u_basic|u_debounce|cnt[5]~15COUT1_41\);

-- Location: LC_X12_Y10_N7
\u_basic|u_debounce|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(6) = DFFEAS((\u_basic|u_debounce|cnt\(6) $ ((!(!\u_basic|u_debounce|cnt[3]~11\ & \u_basic|u_debounce|cnt[5]~15\) # (\u_basic|u_debounce|cnt[3]~11\ & \u_basic|u_debounce|cnt[5]~15COUT1_41\)))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[6]~17\ = CARRY(((\u_basic|u_debounce|cnt\(6) & !\u_basic|u_debounce|cnt[5]~15\)))
-- \u_basic|u_debounce|cnt[6]~17COUT1_42\ = CARRY(((\u_basic|u_debounce|cnt\(6) & !\u_basic|u_debounce|cnt[5]~15COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(6),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[3]~11\,
	cin0 => \u_basic|u_debounce|cnt[5]~15\,
	cin1 => \u_basic|u_debounce|cnt[5]~15COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(6),
	cout0 => \u_basic|u_debounce|cnt[6]~17\,
	cout1 => \u_basic|u_debounce|cnt[6]~17COUT1_42\);

-- Location: LC_X12_Y10_N8
\u_basic|u_debounce|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(7) = DFFEAS(\u_basic|u_debounce|cnt\(7) $ (((((!\u_basic|u_debounce|cnt[3]~11\ & \u_basic|u_debounce|cnt[6]~17\) # (\u_basic|u_debounce|cnt[3]~11\ & \u_basic|u_debounce|cnt[6]~17COUT1_42\))))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[7]~19\ = CARRY(((!\u_basic|u_debounce|cnt[6]~17\)) # (!\u_basic|u_debounce|cnt\(7)))
-- \u_basic|u_debounce|cnt[7]~19COUT1_43\ = CARRY(((!\u_basic|u_debounce|cnt[6]~17COUT1_42\)) # (!\u_basic|u_debounce|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|cnt\(7),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[3]~11\,
	cin0 => \u_basic|u_debounce|cnt[6]~17\,
	cin1 => \u_basic|u_debounce|cnt[6]~17COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(7),
	cout0 => \u_basic|u_debounce|cnt[7]~19\,
	cout1 => \u_basic|u_debounce|cnt[7]~19COUT1_43\);

-- Location: LC_X12_Y10_N9
\u_basic|u_debounce|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(8) = DFFEAS((\u_basic|u_debounce|cnt\(8) $ ((!(!\u_basic|u_debounce|cnt[3]~11\ & \u_basic|u_debounce|cnt[7]~19\) # (\u_basic|u_debounce|cnt[3]~11\ & \u_basic|u_debounce|cnt[7]~19COUT1_43\)))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[8]~21\ = CARRY(((\u_basic|u_debounce|cnt\(8) & !\u_basic|u_debounce|cnt[7]~19COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(8),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[3]~11\,
	cin0 => \u_basic|u_debounce|cnt[7]~19\,
	cin1 => \u_basic|u_debounce|cnt[7]~19COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(8),
	cout => \u_basic|u_debounce|cnt[8]~21\);

-- Location: LC_X13_Y10_N0
\u_basic|u_debounce|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(9) = DFFEAS((\u_basic|u_debounce|cnt\(9) $ ((\u_basic|u_debounce|cnt[8]~21\))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[9]~23\ = CARRY(((!\u_basic|u_debounce|cnt[8]~21\) # (!\u_basic|u_debounce|cnt\(9))))
-- \u_basic|u_debounce|cnt[9]~23COUT1_44\ = CARRY(((!\u_basic|u_debounce|cnt[8]~21\) # (!\u_basic|u_debounce|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(9),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[8]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(9),
	cout0 => \u_basic|u_debounce|cnt[9]~23\,
	cout1 => \u_basic|u_debounce|cnt[9]~23COUT1_44\);

-- Location: LC_X13_Y10_N1
\u_basic|u_debounce|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(10) = DFFEAS((\u_basic|u_debounce|cnt\(10) $ ((!(!\u_basic|u_debounce|cnt[8]~21\ & \u_basic|u_debounce|cnt[9]~23\) # (\u_basic|u_debounce|cnt[8]~21\ & \u_basic|u_debounce|cnt[9]~23COUT1_44\)))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[10]~25\ = CARRY(((\u_basic|u_debounce|cnt\(10) & !\u_basic|u_debounce|cnt[9]~23\)))
-- \u_basic|u_debounce|cnt[10]~25COUT1_45\ = CARRY(((\u_basic|u_debounce|cnt\(10) & !\u_basic|u_debounce|cnt[9]~23COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(10),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[8]~21\,
	cin0 => \u_basic|u_debounce|cnt[9]~23\,
	cin1 => \u_basic|u_debounce|cnt[9]~23COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(10),
	cout0 => \u_basic|u_debounce|cnt[10]~25\,
	cout1 => \u_basic|u_debounce|cnt[10]~25COUT1_45\);

-- Location: LC_X13_Y10_N2
\u_basic|u_debounce|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(11) = DFFEAS((\u_basic|u_debounce|cnt\(11) $ (((!\u_basic|u_debounce|cnt[8]~21\ & \u_basic|u_debounce|cnt[10]~25\) # (\u_basic|u_debounce|cnt[8]~21\ & \u_basic|u_debounce|cnt[10]~25COUT1_45\)))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[11]~27\ = CARRY(((!\u_basic|u_debounce|cnt[10]~25\) # (!\u_basic|u_debounce|cnt\(11))))
-- \u_basic|u_debounce|cnt[11]~27COUT1_46\ = CARRY(((!\u_basic|u_debounce|cnt[10]~25COUT1_45\) # (!\u_basic|u_debounce|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(11),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[8]~21\,
	cin0 => \u_basic|u_debounce|cnt[10]~25\,
	cin1 => \u_basic|u_debounce|cnt[10]~25COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(11),
	cout0 => \u_basic|u_debounce|cnt[11]~27\,
	cout1 => \u_basic|u_debounce|cnt[11]~27COUT1_46\);

-- Location: LC_X13_Y10_N3
\u_basic|u_debounce|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(12) = DFFEAS(\u_basic|u_debounce|cnt\(12) $ ((((!(!\u_basic|u_debounce|cnt[8]~21\ & \u_basic|u_debounce|cnt[11]~27\) # (\u_basic|u_debounce|cnt[8]~21\ & \u_basic|u_debounce|cnt[11]~27COUT1_46\))))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[12]~29\ = CARRY((\u_basic|u_debounce|cnt\(12) & ((!\u_basic|u_debounce|cnt[11]~27\))))
-- \u_basic|u_debounce|cnt[12]~29COUT1_47\ = CARRY((\u_basic|u_debounce|cnt\(12) & ((!\u_basic|u_debounce|cnt[11]~27COUT1_46\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|cnt\(12),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[8]~21\,
	cin0 => \u_basic|u_debounce|cnt[11]~27\,
	cin1 => \u_basic|u_debounce|cnt[11]~27COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(12),
	cout0 => \u_basic|u_debounce|cnt[12]~29\,
	cout1 => \u_basic|u_debounce|cnt[12]~29COUT1_47\);

-- Location: LC_X13_Y10_N4
\u_basic|u_debounce|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(13) = DFFEAS(\u_basic|u_debounce|cnt\(13) $ (((((!\u_basic|u_debounce|cnt[8]~21\ & \u_basic|u_debounce|cnt[12]~29\) # (\u_basic|u_debounce|cnt[8]~21\ & \u_basic|u_debounce|cnt[12]~29COUT1_47\))))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[13]~31\ = CARRY(((!\u_basic|u_debounce|cnt[12]~29COUT1_47\)) # (!\u_basic|u_debounce|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|cnt\(13),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[8]~21\,
	cin0 => \u_basic|u_debounce|cnt[12]~29\,
	cin1 => \u_basic|u_debounce|cnt[12]~29COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(13),
	cout => \u_basic|u_debounce|cnt[13]~31\);

-- Location: LC_X13_Y10_N5
\u_basic|u_debounce|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(14) = DFFEAS(\u_basic|u_debounce|cnt\(14) $ ((((!\u_basic|u_debounce|cnt[13]~31\)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[14]~33\ = CARRY((\u_basic|u_debounce|cnt\(14) & ((!\u_basic|u_debounce|cnt[13]~31\))))
-- \u_basic|u_debounce|cnt[14]~33COUT1_48\ = CARRY((\u_basic|u_debounce|cnt\(14) & ((!\u_basic|u_debounce|cnt[13]~31\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|cnt\(14),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[13]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(14),
	cout0 => \u_basic|u_debounce|cnt[14]~33\,
	cout1 => \u_basic|u_debounce|cnt[14]~33COUT1_48\);

-- Location: LC_X13_Y10_N6
\u_basic|u_debounce|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(15) = DFFEAS(\u_basic|u_debounce|cnt\(15) $ (((((!\u_basic|u_debounce|cnt[13]~31\ & \u_basic|u_debounce|cnt[14]~33\) # (\u_basic|u_debounce|cnt[13]~31\ & \u_basic|u_debounce|cnt[14]~33COUT1_48\))))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[15]~35\ = CARRY(((!\u_basic|u_debounce|cnt[14]~33\)) # (!\u_basic|u_debounce|cnt\(15)))
-- \u_basic|u_debounce|cnt[15]~35COUT1_49\ = CARRY(((!\u_basic|u_debounce|cnt[14]~33COUT1_48\)) # (!\u_basic|u_debounce|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|cnt\(15),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[13]~31\,
	cin0 => \u_basic|u_debounce|cnt[14]~33\,
	cin1 => \u_basic|u_debounce|cnt[14]~33COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(15),
	cout0 => \u_basic|u_debounce|cnt[15]~35\,
	cout1 => \u_basic|u_debounce|cnt[15]~35COUT1_49\);

-- Location: LC_X13_Y10_N7
\u_basic|u_debounce|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(16) = DFFEAS((\u_basic|u_debounce|cnt\(16) $ ((!(!\u_basic|u_debounce|cnt[13]~31\ & \u_basic|u_debounce|cnt[15]~35\) # (\u_basic|u_debounce|cnt[13]~31\ & \u_basic|u_debounce|cnt[15]~35COUT1_49\)))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )
-- \u_basic|u_debounce|cnt[16]~1\ = CARRY(((\u_basic|u_debounce|cnt\(16) & !\u_basic|u_debounce|cnt[15]~35\)))
-- \u_basic|u_debounce|cnt[16]~1COUT1_50\ = CARRY(((\u_basic|u_debounce|cnt\(16) & !\u_basic|u_debounce|cnt[15]~35COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|cnt\(16),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[13]~31\,
	cin0 => \u_basic|u_debounce|cnt[15]~35\,
	cin1 => \u_basic|u_debounce|cnt[15]~35COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(16),
	cout0 => \u_basic|u_debounce|cnt[16]~1\,
	cout1 => \u_basic|u_debounce|cnt[16]~1COUT1_50\);

-- Location: LC_X13_Y10_N8
\u_basic|u_debounce|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|cnt\(17) = DFFEAS((((!\u_basic|u_debounce|cnt[13]~31\ & \u_basic|u_debounce|cnt[16]~1\) # (\u_basic|u_debounce|cnt[13]~31\ & \u_basic|u_debounce|cnt[16]~1COUT1_50\) $ (\u_basic|u_debounce|cnt\(17)))), GLOBAL(\clk~combout\), 
-- !\BTN_7~combout\, , , , , \u_basic|u_debounce|WideOr0~3_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \u_basic|u_debounce|cnt\(17),
	aclr => \BTN_7~combout\,
	sclr => \u_basic|u_debounce|WideOr0~3_combout\,
	cin => \u_basic|u_debounce|cnt[13]~31\,
	cin0 => \u_basic|u_debounce|cnt[16]~1\,
	cin1 => \u_basic|u_debounce|cnt[16]~1COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|cnt\(17));

-- Location: LC_X12_Y10_N0
\u_basic|u_debounce|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|Equal0~0_combout\ = (\u_basic|u_debounce|cnt\(2) & (\u_basic|u_debounce|cnt\(1) & (\u_basic|u_debounce|cnt\(3) & \u_basic|u_debounce|cnt\(0))))

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
	dataa => \u_basic|u_debounce|cnt\(2),
	datab => \u_basic|u_debounce|cnt\(1),
	datac => \u_basic|u_debounce|cnt\(3),
	datad => \u_basic|u_debounce|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|Equal0~0_combout\);

-- Location: LC_X13_Y10_N9
\u_basic|u_debounce|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|Equal0~3_combout\ = (\u_basic|u_debounce|cnt\(14) & (\u_basic|u_debounce|cnt\(15) & (\u_basic|u_debounce|cnt\(13) & \u_basic|u_debounce|cnt\(12))))

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
	dataa => \u_basic|u_debounce|cnt\(14),
	datab => \u_basic|u_debounce|cnt\(15),
	datac => \u_basic|u_debounce|cnt\(13),
	datad => \u_basic|u_debounce|cnt\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|Equal0~3_combout\);

-- Location: LC_X13_Y8_N7
\u_basic|u_debounce|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|Equal0~2_combout\ = (\u_basic|u_debounce|cnt\(9) & (\u_basic|u_debounce|cnt\(10) & (\u_basic|u_debounce|cnt\(11) & \u_basic|u_debounce|cnt\(8))))

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
	dataa => \u_basic|u_debounce|cnt\(9),
	datab => \u_basic|u_debounce|cnt\(10),
	datac => \u_basic|u_debounce|cnt\(11),
	datad => \u_basic|u_debounce|cnt\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|Equal0~2_combout\);

-- Location: LC_X13_Y8_N1
\u_basic|u_debounce|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|Equal0~1_combout\ = (\u_basic|u_debounce|cnt\(6) & (\u_basic|u_debounce|cnt\(5) & (\u_basic|u_debounce|cnt\(7) & \u_basic|u_debounce|cnt\(4))))

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
	dataa => \u_basic|u_debounce|cnt\(6),
	datab => \u_basic|u_debounce|cnt\(5),
	datac => \u_basic|u_debounce|cnt\(7),
	datad => \u_basic|u_debounce|cnt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|Equal0~1_combout\);

-- Location: LC_X13_Y8_N2
\u_basic|u_debounce|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|Equal0~4_combout\ = (\u_basic|u_debounce|Equal0~0_combout\ & (\u_basic|u_debounce|Equal0~3_combout\ & (\u_basic|u_debounce|Equal0~2_combout\ & \u_basic|u_debounce|Equal0~1_combout\)))

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
	dataa => \u_basic|u_debounce|Equal0~0_combout\,
	datab => \u_basic|u_debounce|Equal0~3_combout\,
	datac => \u_basic|u_debounce|Equal0~2_combout\,
	datad => \u_basic|u_debounce|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|Equal0~4_combout\);

-- Location: LC_X13_Y8_N3
\u_basic|u_debounce|Equal0~5\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|Equal0~5_combout\ = ((\u_basic|u_debounce|cnt\(17) & (\u_basic|u_debounce|cnt\(16) & \u_basic|u_debounce|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u_debounce|cnt\(17),
	datac => \u_basic|u_debounce|cnt\(16),
	datad => \u_basic|u_debounce|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_debounce|Equal0~5_combout\);

-- Location: LC_X13_Y8_N5
\u_basic|u_debounce|key_sec[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_sec\(6) = DFFEAS(((\BTN~combout\(6))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , \u_basic|u_debounce|Equal0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \BTN~combout\(6),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_debounce|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_sec\(6));

-- Location: LC_X13_Y8_N6
\u_basic|u_debounce|key_sec[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_sec\(5) = DFFEAS((\BTN~combout\(5)), GLOBAL(\clk~combout\), !\BTN_7~combout\, , \u_basic|u_debounce|Equal0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \BTN~combout\(5),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_debounce|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_sec\(5));

-- Location: LC_X14_Y7_N5
\u_basic|u_debounce|key_sec_pre[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|always0~0\ = ((\u_basic|u_flag|flag\(6) & (!F1_key_sec_pre[5] & \u_basic|u_debounce|key_sec\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_flag|flag\(6),
	datac => \u_basic|u_debounce|key_sec\(5),
	datad => \u_basic|u_debounce|key_sec\(5),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_flag|always0~0\,
	regout => \u_basic|u_debounce|key_sec_pre\(5));

-- Location: LC_X14_Y7_N6
\u_basic|u_debounce|key_sec_pre[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag[4]~0\ = ((!\u_basic|u_flag|always0~0\ & ((F1_key_sec_pre[6]) # (!\u_basic|u_debounce|key_sec\(6)))))
-- \u_basic|u_debounce|key_sec_pre\(6) = DFFEAS(\u_basic|u_flag|flag[4]~0\, GLOBAL(\clk~combout\), !\BTN_7~combout\, , , \u_basic|u_debounce|key_sec\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f3",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|key_sec\(6),
	datac => \u_basic|u_debounce|key_sec\(6),
	datad => \u_basic|u_flag|always0~0\,
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_flag|flag[4]~0\,
	regout => \u_basic|u_debounce|key_sec_pre\(6));

-- Location: LC_X14_Y7_N0
\u_basic|u_flag|flag[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag\(6) = DFFEAS(((\u_basic|u_flag|flag\(6)) # ((\u_basic|u_debounce|key_sec\(6) & !\u_basic|u_debounce|key_sec_pre\(6)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_debounce|key_sec\(6),
	datac => \u_basic|u_flag|flag\(6),
	datad => \u_basic|u_debounce|key_sec_pre\(6),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_flag|flag\(6));

-- Location: LC_X14_Y6_N8
\u_basic|u_sequencer_chi|code[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_chi|code\(1) = DFFEAS(\u_basic|u_sequencer_chi|code\(1) $ (((\u_basic|u_sequencer_chi|code\(0) & ((!\u_basic|u_flag|flag\(6)))))), \u_basic|u_clk_6|clkout~regout\, !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa66",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_6|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(1),
	datab => \u_basic|u_sequencer_chi|code\(0),
	datad => \u_basic|u_flag|flag\(6),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_chi|code\(1));

-- Location: LC_X16_Y6_N7
\u_basic|u_sequencer_chi|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_chi|Add0~0_combout\ = (((\u_basic|u_sequencer_chi|code\(0) & \u_basic|u_sequencer_chi|code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_basic|u_sequencer_chi|code\(0),
	datad => \u_basic|u_sequencer_chi|code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_sequencer_chi|Add0~0_combout\);

-- Location: LC_X16_Y6_N8
\u_basic|u_sequencer_chi|code[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_chi|code\(3) = DFFEAS(\u_basic|u_sequencer_chi|code\(3) $ (((!\u_basic|u_flag|flag\(6) & (\u_basic|u_sequencer_chi|code\(2) & \u_basic|u_sequencer_chi|Add0~0_combout\)))), \u_basic|u_clk_6|clkout~regout\, !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_6|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(3),
	datab => \u_basic|u_flag|flag\(6),
	datac => \u_basic|u_sequencer_chi|code\(2),
	datad => \u_basic|u_sequencer_chi|Add0~0_combout\,
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_chi|code\(3));

-- Location: LC_X15_Y6_N1
\u_basic|u_sequencer_chi|code[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_chi|code\(2) = DFFEAS((\u_basic|u_sequencer_chi|code\(0) & (\u_basic|u_sequencer_chi|code\(2) $ ((\u_basic|u_sequencer_chi|code\(1))))) # (!\u_basic|u_sequencer_chi|code\(0) & (\u_basic|u_sequencer_chi|code\(2) & 
-- ((\u_basic|u_sequencer_chi|code\(1)) # (\u_basic|u_sequencer_chi|code\(3))))), \u_basic|u_clk_6|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(6), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c68",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_6|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(2),
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(3),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_chi|code\(2));

-- Location: LC_X15_Y6_N8
\u_basic|u_sequencer_chi|code[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_chi|code\(0) = DFFEAS((!\u_basic|u_sequencer_chi|code\(0) & (((\u_basic|u_sequencer_chi|code\(1)) # (\u_basic|u_sequencer_chi|code\(3))) # (!\u_basic|u_sequencer_chi|code\(2)))), \u_basic|u_clk_6|clkout~regout\, !\BTN_7~combout\, , 
-- !\u_basic|u_flag|flag\(6), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_6|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(2),
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(3),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_chi|code\(0));

-- Location: LC_X15_Y6_N3
\u_basic|u2|col_temp[19]~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp[19]~0_combout\ = (!\u_basic|u_sequencer_chi|code\(3) & (((!\u_basic|u_sequencer_chi|code\(0) & !\u_basic|u_sequencer_chi|code\(1))) # (!\u_basic|u_sequencer_chi|code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0037",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(2),
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|col_temp[19]~0_combout\);

-- Location: LC_X16_Y6_N1
\u_basic|u2|col_temp[24]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(24) = DFFEAS((\u_basic|u_sequencer_chi|code\(0) & (!\u_basic|u_sequencer_chi|code\(1))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, VCC, , , \u_basic|u_sequencer_chi|code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(1),
	datac => VCC,
	aclr => GND,
	sload => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(24));

-- Location: LC_X16_Y6_N6
\u_basic|u2|col_temp[27]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(27) = DFFEAS((!\u_basic|u_sequencer_chi|code\(0) & (!\u_basic|u_sequencer_chi|code\(1))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, VCC, , , \u_basic|u_sequencer_chi|code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(1),
	datac => VCC,
	aclr => GND,
	sload => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(27));

-- Location: LC_X13_Y6_N6
\u_basic|u2|col_temp[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~7\ = (\u_basic|u2|cnt\(1) & (((\u_basic|u2|col_temp\(27))))) # (!\u_basic|u2|cnt\(1) & (((D1_col_temp[0]))))
-- \u_basic|u2|col_temp\(0) = DFFEAS(\u_basic|u2|Mux7~7\, GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, \u_basic|u_sequencer_chi|code\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(1),
	datac => \u_basic|u_sequencer_chi|code\(2),
	datad => \u_basic|u2|col_temp\(27),
	aclr => GND,
	sload => VCC,
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~7\,
	regout => \u_basic|u2|col_temp\(0));

-- Location: LC_X16_Y6_N2
\u_basic|u2|col_temp[16]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(16) = DFFEAS((\u_basic|u_sequencer_chi|code\(0) & (\u_basic|u_sequencer_chi|code\(1))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, VCC, , , \u_basic|u_sequencer_chi|code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(1),
	datac => VCC,
	aclr => GND,
	sload => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(16));

-- Location: LC_X15_Y5_N4
\u_basic|u2|Mux7~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~0_combout\ = (\u_basic|u2|cnt\(2) & (!\u_basic|u2|cnt\(1))) # (!\u_basic|u2|cnt\(2) & (\u_basic|u2|cnt\(1) & ((\u_basic|u2|cnt\(0)) # (!\u_basic|u2|col_temp\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6266",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|cnt\(0),
	datad => \u_basic|u2|col_temp\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~0_combout\);

-- Location: LC_X15_Y5_N8
\u_basic|u2|Mux7~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~1_combout\ = (\u_basic|u2|cnt\(2) & (((!\u_basic|u2|cnt\(0))) # (!\u_basic|u2|cnt\(1)))) # (!\u_basic|u2|cnt\(2) & (\u_basic|u2|cnt\(1) & ((\u_basic|u2|cnt\(0)) # (\u_basic|u2|col_temp\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|cnt\(0),
	datad => \u_basic|u2|col_temp\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~1_combout\);

-- Location: LC_X15_Y5_N9
\u_basic|u2|col[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col\(0) = DFFEAS((\u_basic|u2|Mux7~0_combout\ & (\u_basic|u2|col_temp\(24) & ((\u_basic|u2|Mux7~1_combout\)))) # (!\u_basic|u2|Mux7~0_combout\ & (((\u_basic|u2|col_temp\(0)) # (\u_basic|u2|Mux7~1_combout\)))), 
-- GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|col_temp\(24),
	datab => \u_basic|u2|col_temp\(0),
	datac => \u_basic|u2|Mux7~0_combout\,
	datad => \u_basic|u2|Mux7~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col\(0));

-- Location: LC_X11_Y4_N5
\u_startup|u_clk_2|clkout\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_clk_2|clkout~regout\ = DFFEAS((((!\u_startup|u_clk_2|clkout~regout\))), GLOBAL(\clk~combout\), VCC, , \u_startup|u_clk_2|Equal0~8_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \u_startup|u_clk_2|clkout~regout\,
	aclr => GND,
	ena => \u_startup|u_clk_2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_clk_2|clkout~regout\);

-- Location: LC_X11_Y5_N1
\u_startup|flag\ : maxii_lcell
-- Equation(s):
-- \u_startup|flag~regout\ = DFFEAS((((!\u_startup|code_test~0_combout\))), GLOBAL(\u_startup|u_clk_2|clkout~regout\), VCC, , , , , , )

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
	clk => \u_startup|u_clk_2|clkout~regout\,
	datad => \u_startup|code_test~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|flag~regout\);

-- Location: LC_X11_Y5_N0
\u_startup|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_startup|cnt\(1) = DFFEAS((\u_startup|cnt\(1) $ (((\u_startup|cnt\(0) & !\u_startup|flag~regout\)))), GLOBAL(\u_startup|u_clk_2|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_startup|u_clk_2|clkout~regout\,
	datab => \u_startup|cnt\(1),
	datac => \u_startup|cnt\(0),
	datad => \u_startup|flag~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|cnt\(1));

-- Location: LC_X11_Y5_N7
\u_startup|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_startup|cnt\(2) = DFFEAS(\u_startup|cnt\(2) $ (((\u_startup|cnt\(0) & (!\u_startup|flag~regout\ & \u_startup|cnt\(1))))), GLOBAL(\u_startup|u_clk_2|clkout~regout\), VCC, , , , , , )

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
	clk => \u_startup|u_clk_2|clkout~regout\,
	dataa => \u_startup|cnt\(0),
	datab => \u_startup|flag~regout\,
	datac => \u_startup|cnt\(2),
	datad => \u_startup|cnt\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|cnt\(2));

-- Location: LC_X11_Y5_N6
\u_startup|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_startup|cnt\(0) = DFFEAS((\u_startup|cnt\(0) & (\u_startup|flag~regout\)) # (!\u_startup|cnt\(0) & (!\u_startup|flag~regout\ & ((!\u_startup|cnt\(1)) # (!\u_startup|cnt\(2))))), GLOBAL(\u_startup|u_clk_2|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8999",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_startup|u_clk_2|clkout~regout\,
	dataa => \u_startup|cnt\(0),
	datab => \u_startup|flag~regout\,
	datac => \u_startup|cnt\(2),
	datad => \u_startup|cnt\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|cnt\(0));

-- Location: LC_X11_Y5_N3
\u_startup|code_test~0\ : maxii_lcell
-- Equation(s):
-- \u_startup|code_test~0_combout\ = (!\u_startup|flag~regout\ & ((\u_startup|cnt\(0)) # ((!\u_startup|cnt\(2)) # (!\u_startup|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00bf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_startup|cnt\(0),
	datab => \u_startup|cnt\(1),
	datac => \u_startup|cnt\(2),
	datad => \u_startup|flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|code_test~0_combout\);

-- Location: LC_X11_Y5_N4
\u_startup|code_test\ : maxii_lcell
-- Equation(s):
-- \u_startup|code_test~regout\ = DFFEAS((((!\u_startup|code_test~0_combout\) # (!\u_startup|code_test~regout\))), GLOBAL(\u_startup|u_clk_2|clkout~regout\), VCC, , , , , , )

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
	clk => \u_startup|u_clk_2|clkout~regout\,
	datac => \u_startup|code_test~regout\,
	datad => \u_startup|code_test~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|code_test~regout\);

-- Location: LC_X10_Y5_N3
\col~0\ : maxii_lcell
-- Equation(s):
-- \col~0_combout\ = (\sw~combout\ & (\u_basic|u2|col\(0))) # (!\sw~combout\ & (((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\,
	datab => \u_basic|u2|col\(0),
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~0_combout\);

-- Location: LC_X15_Y6_N4
\u_basic|u2|col_temp[17]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(17) = DFFEAS((((\u_basic|u_sequencer_chi|code\(1) & !\u_basic|u_sequencer_chi|code\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(17));

-- Location: LC_X15_Y6_N0
\u_basic|u2|col_temp[12]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(12) = DFFEAS((((!\u_basic|u_sequencer_chi|code\(1) & !\u_basic|u_sequencer_chi|code\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(12));

-- Location: LC_X16_Y8_N7
\u_basic|u2|Mux6~2\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux6~2_combout\ = ((\u_basic|u2|cnt\(0) & ((\u_basic|u2|col_temp\(12)))) # (!\u_basic|u2|cnt\(0) & (\u_basic|u2|col_temp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col_temp\(17),
	datac => \u_basic|u2|cnt\(0),
	datad => \u_basic|u2|col_temp\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux6~2_combout\);

-- Location: LC_X15_Y6_N9
\u_basic|u2|col_temp[20]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(20) = DFFEAS((((!\u_basic|u_sequencer_chi|code\(0)) # (!\u_basic|u_sequencer_chi|code\(1)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(20));

-- Location: LC_X16_Y8_N8
\u_basic|u2|col_temp[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(4) = DFFEAS((((!\u_basic|u_sequencer_chi|code\(2) & !\u_basic|u_sequencer_chi|code\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(2),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(4));

-- Location: LC_X15_Y6_N6
\u_basic|u2|col_temp[25]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(25) = DFFEAS(((\u_basic|u_sequencer_chi|code\(1) $ (!\u_basic|u_sequencer_chi|code\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(25));

-- Location: LC_X16_Y8_N3
\u_basic|u2|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux6~0_combout\ = (\u_basic|u2|cnt\(1) & (((\u_basic|u2|col_temp\(25)) # (\u_basic|u2|cnt\(2))))) # (!\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(4) & ((!\u_basic|u2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|col_temp\(4),
	datab => \u_basic|u2|col_temp\(25),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux6~0_combout\);

-- Location: LC_X16_Y8_N4
\u_basic|u2|Mux6~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux6~1_combout\ = (\u_basic|u2|cnt\(0) & (((\u_basic|u2|Mux6~0_combout\)))) # (!\u_basic|u2|cnt\(0) & ((\u_basic|u2|Mux6~0_combout\ & ((!\u_basic|u2|col_temp\(0)))) # (!\u_basic|u2|Mux6~0_combout\ & (\u_basic|u2|col_temp\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|col_temp\(20),
	datab => \u_basic|u2|col_temp\(0),
	datac => \u_basic|u2|cnt\(0),
	datad => \u_basic|u2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux6~1_combout\);

-- Location: LC_X16_Y8_N5
\u_basic|u2|col[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col\(1) = DFFEAS((\u_basic|u2|cnt\(0) & ((\u_basic|u2|cnt\(2) & (\u_basic|u2|Mux6~2_combout\ & !\u_basic|u2|Mux6~1_combout\)) # (!\u_basic|u2|cnt\(2) & ((\u_basic|u2|Mux6~1_combout\))))) # (!\u_basic|u2|cnt\(0) & ((\u_basic|u2|cnt\(2) & 
-- ((\u_basic|u2|Mux6~1_combout\))) # (!\u_basic|u2|cnt\(2) & (\u_basic|u2|Mux6~2_combout\)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7690",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u2|cnt\(2),
	datac => \u_basic|u2|Mux6~2_combout\,
	datad => \u_basic|u2|Mux6~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col\(1));

-- Location: LC_X7_Y5_N3
\col~1\ : maxii_lcell
-- Equation(s):
-- \col~1_combout\ = ((\sw~combout\ & ((\u_basic|u2|col\(1)))) # (!\sw~combout\ & (!\u_startup|code_test~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_startup|code_test~regout\,
	datac => \sw~combout\,
	datad => \u_basic|u2|col\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~1_combout\);

-- Location: LC_X14_Y6_N3
\u_basic|u2|col_temp[13]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(13) = DFFEAS((!\u_basic|u_sequencer_chi|code\(2) & (((\u_basic|u_sequencer_chi|code\(0))))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , , )

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
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(2),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(13));

-- Location: LC_X14_Y5_N9
\u_basic|u2|Mux7~6\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~6_combout\ = ((\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(13)))) # (!\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col_temp\(12),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~6_combout\);

-- Location: LC_X15_Y6_N5
\u_basic|u2|col_temp[34]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(34) = DFFEAS((((\u_basic|u_sequencer_chi|code\(1)) # (\u_basic|u_sequencer_chi|code\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(34));

-- Location: LC_X15_Y5_N6
\u_basic|u2|Mux7~3\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~3_combout\ = ((\u_basic|u2|cnt\(1) & ((!\u_basic|u2|col_temp\(0)))) # (!\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|col_temp\(34),
	datad => \u_basic|u2|col_temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~3_combout\);

-- Location: LC_X14_Y5_N8
\u_basic|u2|col_temp[21]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(21) = DFFEAS((((!\u_basic|u_sequencer_chi|code\(2) & \u_basic|u_sequencer_chi|code\(1)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , , )

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
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(2),
	datad => \u_basic|u_sequencer_chi|code\(1),
	aclr => GND,
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(21));

-- Location: LC_X14_Y6_N5
\u_basic|u2|col_temp[18]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(18) = DFFEAS((((\u_basic|u_sequencer_chi|code\(1))) # (!\u_basic|u_sequencer_chi|code\(0))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u_sequencer_chi|code\(0),
	datad => \u_basic|u_sequencer_chi|code\(1),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(18));

-- Location: LC_X14_Y5_N0
\u_basic|u2|Mux7~5\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~5_combout\ = ((\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(18)))) # (!\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|col_temp\(21),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~5_combout\);

-- Location: LC_X14_Y6_N7
\u_basic|u2|col_temp[10]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(10) = DFFEAS(((\u_basic|u_sequencer_chi|code\(0) & ((\u_basic|u_sequencer_chi|code\(1))))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u_sequencer_chi|code\(0),
	datad => \u_basic|u_sequencer_chi|code\(1),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(10));

-- Location: LC_X14_Y5_N1
\u_basic|u2|Mux7~4\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~4_combout\ = ((\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(25)))) # (!\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|col_temp\(10),
	datad => \u_basic|u2|col_temp\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~4_combout\);

-- Location: LC_X14_Y5_N2
\u_basic|u2|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux5~0_combout\ = (\u_basic|u2|cnt\(2) & (\u_basic|u2|cnt\(0))) # (!\u_basic|u2|cnt\(2) & ((\u_basic|u2|cnt\(0) & ((\u_basic|u2|Mux7~4_combout\))) # (!\u_basic|u2|cnt\(0) & (\u_basic|u2|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|cnt\(0),
	datac => \u_basic|u2|Mux7~5_combout\,
	datad => \u_basic|u2|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux5~0_combout\);

-- Location: LC_X14_Y5_N3
\u_basic|u2|col[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col\(2) = DFFEAS((\u_basic|u2|cnt\(2) & ((\u_basic|u2|Mux5~0_combout\ & (\u_basic|u2|Mux7~6_combout\)) # (!\u_basic|u2|Mux5~0_combout\ & ((\u_basic|u2|Mux7~3_combout\))))) # (!\u_basic|u2|cnt\(2) & (((\u_basic|u2|Mux5~0_combout\)))), 
-- GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|Mux7~6_combout\,
	datac => \u_basic|u2|Mux7~3_combout\,
	datad => \u_basic|u2|Mux5~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col\(2));

-- Location: LC_X7_Y5_N6
\col~2\ : maxii_lcell
-- Equation(s):
-- \col~2_combout\ = ((\sw~combout\ & ((\u_basic|u2|col\(2)))) # (!\sw~combout\ & (!\u_startup|code_test~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_startup|code_test~regout\,
	datac => \sw~combout\,
	datad => \u_basic|u2|col\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~2_combout\);

-- Location: LC_X16_Y6_N5
\u_basic|u2|col_temp[19]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(19) = DFFEAS((!\u_basic|u_sequencer_chi|code\(0) & (\u_basic|u_sequencer_chi|code\(1))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, VCC, , , \u_basic|u_sequencer_chi|code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(1),
	datac => VCC,
	aclr => GND,
	sload => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(19));

-- Location: LC_X14_Y6_N1
\u_basic|u2|Mux7~8\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~8_combout\ = ((\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(19)))) # (!\u_basic|u2|cnt\(1) & (!\u_basic|u2|col_temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|col_temp\(13),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~8_combout\);

-- Location: LC_X16_Y6_N0
\u_basic|u2|col_temp[35]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(35) = DFFEAS((\u_basic|u_sequencer_chi|code\(0)) # ((\u_basic|u_sequencer_chi|code\(1))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, VCC, , , \u_basic|u_sequencer_chi|code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(1),
	datac => VCC,
	aclr => GND,
	sload => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(35));

-- Location: LC_X14_Y6_N0
\u_basic|u2|col_temp[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(3) = DFFEAS((\u_basic|u_sequencer_chi|code\(2)) # (((\u_basic|u_sequencer_chi|code\(1)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(2),
	datad => \u_basic|u_sequencer_chi|code\(1),
	aclr => GND,
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(3));

-- Location: LC_X13_Y6_N8
\u_basic|u2|Mux4~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux4~1_combout\ = (\u_basic|u2|cnt\(2) & (((\u_basic|u2|cnt\(1))))) # (!\u_basic|u2|cnt\(2) & ((\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(19))) # (!\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|col_temp\(19),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux4~1_combout\);

-- Location: LC_X13_Y6_N9
\u_basic|u2|Mux4~2\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux4~2_combout\ = (\u_basic|u2|cnt\(0) & (\u_basic|u2|cnt\(2))) # (!\u_basic|u2|cnt\(0) & ((\u_basic|u2|Mux4~1_combout\) # ((\u_basic|u2|cnt\(2) & \u_basic|u2|col_temp\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|col_temp\(35),
	datac => \u_basic|u2|cnt\(0),
	datad => \u_basic|u2|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux4~2_combout\);

-- Location: LC_X13_Y6_N7
\u_basic|u2|col[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col\(3) = DFFEAS((\u_basic|u2|cnt\(0) & ((\u_basic|u2|Mux4~2_combout\ & (\u_basic|u2|Mux7~8_combout\)) # (!\u_basic|u2|Mux4~2_combout\ & ((\u_basic|u2|Mux7~7\))))) # (!\u_basic|u2|cnt\(0) & (((\u_basic|u2|Mux4~2_combout\)))), 
-- GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|Mux7~8_combout\,
	datab => \u_basic|u2|Mux7~7\,
	datac => \u_basic|u2|cnt\(0),
	datad => \u_basic|u2|Mux4~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col\(3));

-- Location: LC_X10_Y5_N1
\col~3\ : maxii_lcell
-- Equation(s):
-- \col~3_combout\ = ((\sw~combout\ & ((\u_basic|u2|col\(3)))) # (!\sw~combout\ & (!\u_startup|code_test~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_startup|code_test~regout\,
	datac => \sw~combout\,
	datad => \u_basic|u2|col\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~3_combout\);

-- Location: LC_X16_Y8_N6
\u_basic|u2|Mux7~11\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~11_combout\ = ((\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(4))) # (!\u_basic|u2|cnt\(1) & ((!\u_basic|u2|col_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|col_temp\(4),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~11_combout\);

-- Location: LC_X16_Y8_N0
\u_basic|u2|Mux7~10\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~10_combout\ = ((\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(20)))) # (!\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|col_temp\(4),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~10_combout\);

-- Location: LC_X15_Y6_N2
\u_basic|u2|col_temp[28]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(28) = DFFEAS((((\u_basic|u_sequencer_chi|code\(0)) # (!\u_basic|u_sequencer_chi|code\(1)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(28));

-- Location: LC_X16_Y8_N1
\u_basic|u2|Mux7~9\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~9_combout\ = ((\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(28))) # (!\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col_temp\(28),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~9_combout\);

-- Location: LC_X16_Y8_N2
\u_basic|u2|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux3~0_combout\ = (\u_basic|u2|cnt\(0) & ((\u_basic|u2|cnt\(2)) # ((\u_basic|u2|Mux7~9_combout\)))) # (!\u_basic|u2|cnt\(0) & (!\u_basic|u2|cnt\(2) & (\u_basic|u2|Mux7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u2|cnt\(2),
	datac => \u_basic|u2|Mux7~10_combout\,
	datad => \u_basic|u2|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux3~0_combout\);

-- Location: LC_X16_Y8_N9
\u_basic|u2|col[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col\(4) = DFFEAS((\u_basic|u2|cnt\(2) & ((\u_basic|u2|Mux3~0_combout\ & (\u_basic|u2|Mux7~11_combout\)) # (!\u_basic|u2|Mux3~0_combout\ & ((\u_basic|u2|Mux7~3_combout\))))) # (!\u_basic|u2|cnt\(2) & (((\u_basic|u2|Mux3~0_combout\)))), 
-- GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|Mux7~11_combout\,
	datab => \u_basic|u2|cnt\(2),
	datac => \u_basic|u2|Mux7~3_combout\,
	datad => \u_basic|u2|Mux3~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col\(4));

-- Location: LC_X7_Y5_N7
\col~4\ : maxii_lcell
-- Equation(s):
-- \col~4_combout\ = ((\sw~combout\ & (\u_basic|u2|col\(4))) # (!\sw~combout\ & ((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col\(4),
	datac => \sw~combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~4_combout\);

-- Location: LC_X14_Y6_N6
\u_basic|u2|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux2~0_combout\ = ((\u_basic|u2|cnt\(2) & (\u_basic|u2|col_temp\(10))) # (!\u_basic|u2|cnt\(2) & ((\u_basic|u2|col_temp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col_temp\(10),
	datac => \u_basic|u2|cnt\(2),
	datad => \u_basic|u2|col_temp\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux2~0_combout\);

-- Location: LC_X14_Y5_N4
\u_basic|u2|Mux2~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux2~1_combout\ = (\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(21)) # ((\u_basic|u2|cnt\(0))))) # (!\u_basic|u2|cnt\(1) & (((\u_basic|u2|col_temp\(20) & !\u_basic|u2|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|col_temp\(21),
	datab => \u_basic|u2|cnt\(1),
	datac => \u_basic|u2|col_temp\(20),
	datad => \u_basic|u2|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux2~1_combout\);

-- Location: LC_X14_Y5_N5
\u_basic|u2|Mux2~2\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux2~2_combout\ = (\u_basic|u2|cnt\(2) & ((\u_basic|u2|cnt\(0) & ((!\u_basic|u2|Mux2~1_combout\))) # (!\u_basic|u2|cnt\(0) & (\u_basic|u2|Mux7~5_combout\)))) # (!\u_basic|u2|cnt\(2) & (((\u_basic|u2|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "75a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|cnt\(0),
	datac => \u_basic|u2|Mux7~5_combout\,
	datad => \u_basic|u2|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux2~2_combout\);

-- Location: LC_X14_Y5_N6
\u_basic|u2|col[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col\(5) = DFFEAS((\u_basic|u2|cnt\(0) & ((\u_basic|u2|Mux2~2_combout\ & (\u_basic|u2|col_temp\(12))) # (!\u_basic|u2|Mux2~2_combout\ & ((\u_basic|u2|Mux2~0_combout\))))) # (!\u_basic|u2|cnt\(0) & (((\u_basic|u2|Mux2~2_combout\)))), 
-- GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u2|col_temp\(12),
	datac => \u_basic|u2|Mux2~0_combout\,
	datad => \u_basic|u2|Mux2~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col\(5));

-- Location: LC_X10_Y5_N8
\col~5\ : maxii_lcell
-- Equation(s):
-- \col~5_combout\ = ((\sw~combout\ & (\u_basic|u2|col\(5))) # (!\sw~combout\ & ((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col\(5),
	datac => \sw~combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~5_combout\);

-- Location: LC_X16_Y6_N3
\u_basic|u2|col_temp[22]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(22) = DFFEAS(((!\u_basic|u_sequencer_chi|code\(1))) # (!\u_basic|u_sequencer_chi|code\(0)), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, VCC, , , \u_basic|u_sequencer_chi|code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7777",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(1),
	datac => VCC,
	aclr => GND,
	sload => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(22));

-- Location: LC_X13_Y6_N5
\u_basic|u2|Mux7~13\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~13_combout\ = ((\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(22))) # (!\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col_temp\(22),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~13_combout\);

-- Location: LC_X16_Y6_N4
\u_basic|u2|col_temp[14]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(14) = DFFEAS(((\u_basic|u_sequencer_chi|code\(1))) # (!\u_basic|u_sequencer_chi|code\(0)), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, VCC, , , \u_basic|u_sequencer_chi|code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dddd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(1),
	datac => VCC,
	aclr => GND,
	sload => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(14));

-- Location: LC_X16_Y6_N9
\u_basic|u2|col_temp[30]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(30) = DFFEAS((\u_basic|u_sequencer_chi|code\(0)) # ((!\u_basic|u_sequencer_chi|code\(1))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, VCC, , , \u_basic|u_sequencer_chi|code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_sequencer_chi|code\(0),
	datab => \u_basic|u_sequencer_chi|code\(1),
	datac => VCC,
	aclr => GND,
	sload => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(30));

-- Location: LC_X13_Y6_N1
\u_basic|u2|Mux7~12\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux7~12_combout\ = ((\u_basic|u2|cnt\(1) & ((\u_basic|u2|col_temp\(30)))) # (!\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col_temp\(14),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|col_temp\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux7~12_combout\);

-- Location: LC_X13_Y6_N2
\u_basic|u2|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux1~0_combout\ = (\u_basic|u2|cnt\(2) & (\u_basic|u2|cnt\(0))) # (!\u_basic|u2|cnt\(2) & ((\u_basic|u2|cnt\(0) & ((\u_basic|u2|Mux7~12_combout\))) # (!\u_basic|u2|cnt\(0) & (\u_basic|u2|Mux7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|cnt\(0),
	datac => \u_basic|u2|Mux7~13_combout\,
	datad => \u_basic|u2|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux1~0_combout\);

-- Location: LC_X13_Y6_N3
\u_basic|u2|Mux1~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux1~1_combout\ = (\u_basic|u2|cnt\(1) & (((\u_basic|u2|col_temp\(24)) # (!\u_basic|u2|Mux1~0_combout\)))) # (!\u_basic|u2|cnt\(1) & (\u_basic|u2|col_temp\(27) & ((\u_basic|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(1),
	datab => \u_basic|u2|col_temp\(27),
	datac => \u_basic|u2|col_temp\(24),
	datad => \u_basic|u2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux1~1_combout\);

-- Location: LC_X13_Y6_N4
\u_basic|u2|col[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col\(6) = DFFEAS((\u_basic|u2|cnt\(2) & ((\u_basic|u2|Mux1~1_combout\) # ((!\u_basic|u2|Mux1~0_combout\ & \u_basic|u2|col_temp\(14))))) # (!\u_basic|u2|cnt\(2) & (\u_basic|u2|Mux1~0_combout\)), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee64",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|Mux1~0_combout\,
	datac => \u_basic|u2|col_temp\(14),
	datad => \u_basic|u2|Mux1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col\(6));

-- Location: LC_X10_Y5_N2
\col~6\ : maxii_lcell
-- Equation(s):
-- \col~6_combout\ = ((\sw~combout\ & ((\u_basic|u2|col\(6)))) # (!\sw~combout\ & (!\u_startup|code_test~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_startup|code_test~regout\,
	datac => \sw~combout\,
	datad => \u_basic|u2|col\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~6_combout\);

-- Location: LC_X14_Y6_N9
\u_basic|u2|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux0~0_combout\ = ((\u_basic|u2|cnt\(2) & (\u_basic|u2|col_temp\(18))) # (!\u_basic|u2|cnt\(2) & ((\u_basic|u2|col_temp\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|col_temp\(18),
	datac => \u_basic|u2|col_temp\(30),
	datad => \u_basic|u2|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux0~0_combout\);

-- Location: LC_X15_Y6_N7
\u_basic|u2|col_temp[47]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col_temp\(47) = DFFEAS((((!\u_basic|u_sequencer_chi|code\(1) & \u_basic|u_sequencer_chi|code\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u2|col_temp[19]~0_combout\, , , \u_basic|u_sequencer_chi|code\(2), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_sequencer_chi|code\(1),
	datad => \u_basic|u_sequencer_chi|code\(0),
	aclr => GND,
	sclr => \u_basic|u_sequencer_chi|code\(2),
	ena => \u_basic|u2|col_temp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col_temp\(47));

-- Location: LC_X12_Y6_N6
\u_basic|u2|Mux0~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux0~1_combout\ = ((\u_basic|u2|cnt\(2) & ((\u_basic|u2|col_temp\(47)))) # (!\u_basic|u2|cnt\(2) & (\u_basic|u2|col_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u2|col_temp\(3),
	datac => \u_basic|u2|cnt\(2),
	datad => \u_basic|u2|col_temp\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux0~1_combout\);

-- Location: LC_X12_Y6_N7
\u_basic|u2|Mux0~2\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|Mux0~2_combout\ = (\u_basic|u2|cnt\(2) & ((\u_basic|u2|cnt\(0) & ((!\u_basic|u2|Mux0~1_combout\))) # (!\u_basic|u2|cnt\(0) & (!\u_basic|u2|cnt\(1))))) # (!\u_basic|u2|cnt\(2) & ((\u_basic|u2|cnt\(1)) # ((\u_basic|u2|cnt\(0) & 
-- \u_basic|u2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "56da",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(2),
	datab => \u_basic|u2|cnt\(0),
	datac => \u_basic|u2|cnt\(1),
	datad => \u_basic|u2|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u2|Mux0~2_combout\);

-- Location: LC_X12_Y6_N8
\u_basic|u2|col[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u2|col\(7) = DFFEAS((\u_basic|u2|cnt\(0) & (((!\u_basic|u2|Mux0~2_combout\)))) # (!\u_basic|u2|cnt\(0) & ((\u_basic|u2|Mux0~2_combout\ & (\u_basic|u2|col_temp\(10))) # (!\u_basic|u2|Mux0~2_combout\ & ((\u_basic|u2|Mux0~0_combout\))))), 
-- GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|col_temp\(10),
	datab => \u_basic|u2|cnt\(0),
	datac => \u_basic|u2|Mux0~0_combout\,
	datad => \u_basic|u2|Mux0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u2|col\(7));

-- Location: LC_X7_Y5_N5
\col~7\ : maxii_lcell
-- Equation(s):
-- \col~7_combout\ = ((\sw~combout\ & ((\u_basic|u2|col\(7)))) # (!\sw~combout\ & (!\u_startup|code_test~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_startup|code_test~regout\,
	datac => \sw~combout\,
	datad => \u_basic|u2|col\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~7_combout\);

-- Location: LC_X7_Y5_N9
\digit_scan~0\ : maxii_lcell
-- Equation(s):
-- \digit_scan~0_combout\ = (((!\sw~combout\ & !\u_startup|code_test~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_scan~0_combout\);

-- Location: LC_X6_Y6_N1
\u_basic|u_clk_4|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~45_combout\ = (!\u_basic|u_clk_4|cnt\(0))
-- \u_basic|u_clk_4|Add0~47\ = CARRY((\u_basic|u_clk_4|cnt\(0)))
-- \u_basic|u_clk_4|Add0~47COUT1_141\ = CARRY((\u_basic|u_clk_4|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_clk_4|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~45_combout\,
	cout0 => \u_basic|u_clk_4|Add0~47\,
	cout1 => \u_basic|u_clk_4|Add0~47COUT1_141\);

-- Location: LC_X5_Y6_N5
\u_basic|u_clk_4|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(0) = DFFEAS((\u_basic|u_clk_4|Add0~45_combout\ & (((!\u_basic|u_clk_4|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_4|Add0~45_combout\,
	datad => \u_basic|u_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(0));

-- Location: LC_X6_Y6_N5
\u_basic|u_clk_4|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~25_combout\ = \u_basic|u_clk_4|cnt\(4) $ ((((!\u_basic|u_clk_4|Add0~32\))))
-- \u_basic|u_clk_4|Add0~27\ = CARRY((\u_basic|u_clk_4|cnt\(4) & ((!\u_basic|u_clk_4|Add0~32\))))
-- \u_basic|u_clk_4|Add0~27COUT1_144\ = CARRY((\u_basic|u_clk_4|cnt\(4) & ((!\u_basic|u_clk_4|Add0~32\))))

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
	dataa => \u_basic|u_clk_4|cnt\(4),
	cin => \u_basic|u_clk_4|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~25_combout\,
	cout0 => \u_basic|u_clk_4|Add0~27\,
	cout1 => \u_basic|u_clk_4|Add0~27COUT1_144\);

-- Location: LC_X6_Y5_N0
\u_basic|u_clk_4|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~1\ = (!\u_basic|u_clk_4|cnt\(3) & (!\u_basic|u_clk_4|cnt\(2) & (!E6_cnt[4] & \u_basic|u_clk_4|cnt\(5))))
-- \u_basic|u_clk_4|cnt\(4) = DFFEAS(\u_basic|u_clk_4|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_4|cnt\(3),
	datab => \u_basic|u_clk_4|cnt\(2),
	datac => \u_basic|u_clk_4|Add0~25_combout\,
	datad => \u_basic|u_clk_4|cnt\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~1\,
	regout => \u_basic|u_clk_4|cnt\(4));

-- Location: LC_X6_Y6_N6
\u_basic|u_clk_4|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~20_combout\ = (\u_basic|u_clk_4|cnt\(5) $ (((!\u_basic|u_clk_4|Add0~32\ & \u_basic|u_clk_4|Add0~27\) # (\u_basic|u_clk_4|Add0~32\ & \u_basic|u_clk_4|Add0~27COUT1_144\))))
-- \u_basic|u_clk_4|Add0~22\ = CARRY(((!\u_basic|u_clk_4|Add0~27\) # (!\u_basic|u_clk_4|cnt\(5))))
-- \u_basic|u_clk_4|Add0~22COUT1_145\ = CARRY(((!\u_basic|u_clk_4|Add0~27COUT1_144\) # (!\u_basic|u_clk_4|cnt\(5))))

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
	datab => \u_basic|u_clk_4|cnt\(5),
	cin => \u_basic|u_clk_4|Add0~32\,
	cin0 => \u_basic|u_clk_4|Add0~27\,
	cin1 => \u_basic|u_clk_4|Add0~27COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~20_combout\,
	cout0 => \u_basic|u_clk_4|Add0~22\,
	cout1 => \u_basic|u_clk_4|Add0~22COUT1_145\);

-- Location: LC_X6_Y5_N8
\u_basic|u_clk_4|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(5) = DFFEAS((((\u_basic|u_clk_4|Add0~20_combout\ & !\u_basic|u_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_4|Add0~20_combout\,
	datad => \u_basic|u_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(5));

-- Location: LC_X6_Y6_N7
\u_basic|u_clk_4|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~5_combout\ = (\u_basic|u_clk_4|cnt\(6) $ ((!(!\u_basic|u_clk_4|Add0~32\ & \u_basic|u_clk_4|Add0~22\) # (\u_basic|u_clk_4|Add0~32\ & \u_basic|u_clk_4|Add0~22COUT1_145\))))
-- \u_basic|u_clk_4|Add0~7\ = CARRY(((\u_basic|u_clk_4|cnt\(6) & !\u_basic|u_clk_4|Add0~22\)))
-- \u_basic|u_clk_4|Add0~7COUT1_146\ = CARRY(((\u_basic|u_clk_4|cnt\(6) & !\u_basic|u_clk_4|Add0~22COUT1_145\)))

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
	datab => \u_basic|u_clk_4|cnt\(6),
	cin => \u_basic|u_clk_4|Add0~32\,
	cin0 => \u_basic|u_clk_4|Add0~22\,
	cin1 => \u_basic|u_clk_4|Add0~22COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~5_combout\,
	cout0 => \u_basic|u_clk_4|Add0~7\,
	cout1 => \u_basic|u_clk_4|Add0~7COUT1_146\);

-- Location: LC_X9_Y6_N3
\u_basic|u_clk_4|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(6) = DFFEAS((((\u_basic|u_clk_4|Add0~5_combout\ & !\u_basic|u_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_4|Add0~5_combout\,
	datad => \u_basic|u_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(6));

-- Location: LC_X6_Y6_N8
\u_basic|u_clk_4|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~0_combout\ = (\u_basic|u_clk_4|cnt\(7) $ (((!\u_basic|u_clk_4|Add0~32\ & \u_basic|u_clk_4|Add0~7\) # (\u_basic|u_clk_4|Add0~32\ & \u_basic|u_clk_4|Add0~7COUT1_146\))))
-- \u_basic|u_clk_4|Add0~2\ = CARRY(((!\u_basic|u_clk_4|Add0~7\) # (!\u_basic|u_clk_4|cnt\(7))))
-- \u_basic|u_clk_4|Add0~2COUT1_147\ = CARRY(((!\u_basic|u_clk_4|Add0~7COUT1_146\) # (!\u_basic|u_clk_4|cnt\(7))))

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
	datab => \u_basic|u_clk_4|cnt\(7),
	cin => \u_basic|u_clk_4|Add0~32\,
	cin0 => \u_basic|u_clk_4|Add0~7\,
	cin1 => \u_basic|u_clk_4|Add0~7COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~0_combout\,
	cout0 => \u_basic|u_clk_4|Add0~2\,
	cout1 => \u_basic|u_clk_4|Add0~2COUT1_147\);

-- Location: LC_X9_Y6_N7
\u_basic|u_clk_4|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(7) = DFFEAS(((!\u_basic|u_clk_4|Equal0~8_combout\ & ((\u_basic|u_clk_4|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_4|Equal0~8_combout\,
	datad => \u_basic|u_clk_4|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(7));

-- Location: LC_X7_Y6_N0
\u_basic|u_clk_4|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~10_combout\ = (\u_basic|u_clk_4|cnt\(9) $ ((\u_basic|u_clk_4|Add0~17\)))
-- \u_basic|u_clk_4|Add0~12\ = CARRY(((!\u_basic|u_clk_4|Add0~17\) # (!\u_basic|u_clk_4|cnt\(9))))
-- \u_basic|u_clk_4|Add0~12COUT1_148\ = CARRY(((!\u_basic|u_clk_4|Add0~17\) # (!\u_basic|u_clk_4|cnt\(9))))

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
	datab => \u_basic|u_clk_4|cnt\(9),
	cin => \u_basic|u_clk_4|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~10_combout\,
	cout0 => \u_basic|u_clk_4|Add0~12\,
	cout1 => \u_basic|u_clk_4|Add0~12COUT1_148\);

-- Location: LC_X9_Y6_N6
\u_basic|u_clk_4|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~0\ = (\u_basic|u_clk_4|cnt\(6) & (\u_basic|u_clk_4|cnt\(7) & (!E6_cnt[9] & !\u_basic|u_clk_4|cnt\(8))))
-- \u_basic|u_clk_4|cnt\(9) = DFFEAS(\u_basic|u_clk_4|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~10_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_4|cnt\(6),
	datab => \u_basic|u_clk_4|cnt\(7),
	datac => \u_basic|u_clk_4|Add0~10_combout\,
	datad => \u_basic|u_clk_4|cnt\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~0\,
	regout => \u_basic|u_clk_4|cnt\(9));

-- Location: LC_X7_Y6_N1
\u_basic|u_clk_4|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~50_combout\ = (\u_basic|u_clk_4|cnt\(10) $ ((!(!\u_basic|u_clk_4|Add0~17\ & \u_basic|u_clk_4|Add0~12\) # (\u_basic|u_clk_4|Add0~17\ & \u_basic|u_clk_4|Add0~12COUT1_148\))))
-- \u_basic|u_clk_4|Add0~52\ = CARRY(((\u_basic|u_clk_4|cnt\(10) & !\u_basic|u_clk_4|Add0~12\)))
-- \u_basic|u_clk_4|Add0~52COUT1_149\ = CARRY(((\u_basic|u_clk_4|cnt\(10) & !\u_basic|u_clk_4|Add0~12COUT1_148\)))

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
	datab => \u_basic|u_clk_4|cnt\(10),
	cin => \u_basic|u_clk_4|Add0~17\,
	cin0 => \u_basic|u_clk_4|Add0~12\,
	cin1 => \u_basic|u_clk_4|Add0~12COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~50_combout\,
	cout0 => \u_basic|u_clk_4|Add0~52\,
	cout1 => \u_basic|u_clk_4|Add0~52COUT1_149\);

-- Location: LC_X7_Y5_N8
\u_basic|u_clk_4|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(10) = DFFEAS((((\u_basic|u_clk_4|Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_4|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(10));

-- Location: LC_X7_Y6_N2
\u_basic|u_clk_4|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~55_combout\ = \u_basic|u_clk_4|cnt\(11) $ (((((!\u_basic|u_clk_4|Add0~17\ & \u_basic|u_clk_4|Add0~52\) # (\u_basic|u_clk_4|Add0~17\ & \u_basic|u_clk_4|Add0~52COUT1_149\)))))
-- \u_basic|u_clk_4|Add0~57\ = CARRY(((!\u_basic|u_clk_4|Add0~52\)) # (!\u_basic|u_clk_4|cnt\(11)))
-- \u_basic|u_clk_4|Add0~57COUT1_150\ = CARRY(((!\u_basic|u_clk_4|Add0~52COUT1_149\)) # (!\u_basic|u_clk_4|cnt\(11)))

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
	dataa => \u_basic|u_clk_4|cnt\(11),
	cin => \u_basic|u_clk_4|Add0~17\,
	cin0 => \u_basic|u_clk_4|Add0~52\,
	cin1 => \u_basic|u_clk_4|Add0~52COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~55_combout\,
	cout0 => \u_basic|u_clk_4|Add0~57\,
	cout1 => \u_basic|u_clk_4|Add0~57COUT1_150\);

-- Location: LC_X7_Y5_N4
\u_basic|u_clk_4|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~55_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(11));

-- Location: LC_X6_Y6_N2
\u_basic|u_clk_4|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~40_combout\ = (\u_basic|u_clk_4|cnt\(1) $ ((\u_basic|u_clk_4|Add0~47\)))
-- \u_basic|u_clk_4|Add0~42\ = CARRY(((!\u_basic|u_clk_4|Add0~47\) # (!\u_basic|u_clk_4|cnt\(1))))
-- \u_basic|u_clk_4|Add0~42COUT1_142\ = CARRY(((!\u_basic|u_clk_4|Add0~47COUT1_141\) # (!\u_basic|u_clk_4|cnt\(1))))

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
	datab => \u_basic|u_clk_4|cnt\(1),
	cin0 => \u_basic|u_clk_4|Add0~47\,
	cin1 => \u_basic|u_clk_4|Add0~47COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~40_combout\,
	cout0 => \u_basic|u_clk_4|Add0~42\,
	cout1 => \u_basic|u_clk_4|Add0~42COUT1_142\);

-- Location: LC_X6_Y6_N0
\u_basic|u_clk_4|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~2\ = (!\u_basic|u_clk_4|cnt\(0) & (!\u_basic|u_clk_4|cnt\(11) & (!E6_cnt[1] & !\u_basic|u_clk_4|cnt\(10))))
-- \u_basic|u_clk_4|cnt\(1) = DFFEAS(\u_basic|u_clk_4|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~40_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_4|cnt\(0),
	datab => \u_basic|u_clk_4|cnt\(11),
	datac => \u_basic|u_clk_4|Add0~40_combout\,
	datad => \u_basic|u_clk_4|cnt\(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~2\,
	regout => \u_basic|u_clk_4|cnt\(1));

-- Location: LC_X6_Y6_N3
\u_basic|u_clk_4|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~35_combout\ = (\u_basic|u_clk_4|cnt\(2) $ ((!\u_basic|u_clk_4|Add0~42\)))
-- \u_basic|u_clk_4|Add0~37\ = CARRY(((\u_basic|u_clk_4|cnt\(2) & !\u_basic|u_clk_4|Add0~42\)))
-- \u_basic|u_clk_4|Add0~37COUT1_143\ = CARRY(((\u_basic|u_clk_4|cnt\(2) & !\u_basic|u_clk_4|Add0~42COUT1_142\)))

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
	datab => \u_basic|u_clk_4|cnt\(2),
	cin0 => \u_basic|u_clk_4|Add0~42\,
	cin1 => \u_basic|u_clk_4|Add0~42COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~35_combout\,
	cout0 => \u_basic|u_clk_4|Add0~37\,
	cout1 => \u_basic|u_clk_4|Add0~37COUT1_143\);

-- Location: LC_X6_Y5_N7
\u_basic|u_clk_4|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~35_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(2));

-- Location: LC_X6_Y6_N4
\u_basic|u_clk_4|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~30_combout\ = (\u_basic|u_clk_4|cnt\(3) $ ((\u_basic|u_clk_4|Add0~37\)))
-- \u_basic|u_clk_4|Add0~32\ = CARRY(((!\u_basic|u_clk_4|Add0~37COUT1_143\) # (!\u_basic|u_clk_4|cnt\(3))))

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
	datab => \u_basic|u_clk_4|cnt\(3),
	cin0 => \u_basic|u_clk_4|Add0~37\,
	cin1 => \u_basic|u_clk_4|Add0~37COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~30_combout\,
	cout => \u_basic|u_clk_4|Add0~32\);

-- Location: LC_X6_Y5_N5
\u_basic|u_clk_4|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~30_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(3));

-- Location: LC_X6_Y6_N9
\u_basic|u_clk_4|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~15_combout\ = (\u_basic|u_clk_4|cnt\(8) $ ((!(!\u_basic|u_clk_4|Add0~32\ & \u_basic|u_clk_4|Add0~2\) # (\u_basic|u_clk_4|Add0~32\ & \u_basic|u_clk_4|Add0~2COUT1_147\))))
-- \u_basic|u_clk_4|Add0~17\ = CARRY(((\u_basic|u_clk_4|cnt\(8) & !\u_basic|u_clk_4|Add0~2COUT1_147\)))

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
	datab => \u_basic|u_clk_4|cnt\(8),
	cin => \u_basic|u_clk_4|Add0~32\,
	cin0 => \u_basic|u_clk_4|Add0~2\,
	cin1 => \u_basic|u_clk_4|Add0~2COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~15_combout\,
	cout => \u_basic|u_clk_4|Add0~17\);

-- Location: LC_X5_Y6_N4
\u_basic|u_clk_4|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~15_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(8));

-- Location: LC_X7_Y6_N3
\u_basic|u_clk_4|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~60_combout\ = (\u_basic|u_clk_4|cnt\(12) $ ((!(!\u_basic|u_clk_4|Add0~17\ & \u_basic|u_clk_4|Add0~57\) # (\u_basic|u_clk_4|Add0~17\ & \u_basic|u_clk_4|Add0~57COUT1_150\))))
-- \u_basic|u_clk_4|Add0~62\ = CARRY(((\u_basic|u_clk_4|cnt\(12) & !\u_basic|u_clk_4|Add0~57\)))
-- \u_basic|u_clk_4|Add0~62COUT1_151\ = CARRY(((\u_basic|u_clk_4|cnt\(12) & !\u_basic|u_clk_4|Add0~57COUT1_150\)))

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
	datab => \u_basic|u_clk_4|cnt\(12),
	cin => \u_basic|u_clk_4|Add0~17\,
	cin0 => \u_basic|u_clk_4|Add0~57\,
	cin1 => \u_basic|u_clk_4|Add0~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~60_combout\,
	cout0 => \u_basic|u_clk_4|Add0~62\,
	cout1 => \u_basic|u_clk_4|Add0~62COUT1_151\);

-- Location: LC_X5_Y6_N2
\u_basic|u_clk_4|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(12) = DFFEAS((((!\u_basic|u_clk_4|Equal0~8_combout\ & \u_basic|u_clk_4|Add0~60_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_4|Equal0~8_combout\,
	datad => \u_basic|u_clk_4|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(12));

-- Location: LC_X7_Y6_N4
\u_basic|u_clk_4|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~65_combout\ = (\u_basic|u_clk_4|cnt\(13) $ (((!\u_basic|u_clk_4|Add0~17\ & \u_basic|u_clk_4|Add0~62\) # (\u_basic|u_clk_4|Add0~17\ & \u_basic|u_clk_4|Add0~62COUT1_151\))))
-- \u_basic|u_clk_4|Add0~67\ = CARRY(((!\u_basic|u_clk_4|Add0~62COUT1_151\) # (!\u_basic|u_clk_4|cnt\(13))))

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
	datab => \u_basic|u_clk_4|cnt\(13),
	cin => \u_basic|u_clk_4|Add0~17\,
	cin0 => \u_basic|u_clk_4|Add0~62\,
	cin1 => \u_basic|u_clk_4|Add0~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~65_combout\,
	cout => \u_basic|u_clk_4|Add0~67\);

-- Location: LC_X5_Y6_N6
\u_basic|u_clk_4|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(13) = DFFEAS((((\u_basic|u_clk_4|Add0~65_combout\ & !\u_basic|u_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_4|Add0~65_combout\,
	datad => \u_basic|u_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(13));

-- Location: LC_X7_Y6_N5
\u_basic|u_clk_4|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~70_combout\ = (\u_basic|u_clk_4|cnt\(14) $ ((!\u_basic|u_clk_4|Add0~67\)))
-- \u_basic|u_clk_4|Add0~72\ = CARRY(((\u_basic|u_clk_4|cnt\(14) & !\u_basic|u_clk_4|Add0~67\)))
-- \u_basic|u_clk_4|Add0~72COUT1_152\ = CARRY(((\u_basic|u_clk_4|cnt\(14) & !\u_basic|u_clk_4|Add0~67\)))

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
	datab => \u_basic|u_clk_4|cnt\(14),
	cin => \u_basic|u_clk_4|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~70_combout\,
	cout0 => \u_basic|u_clk_4|Add0~72\,
	cout1 => \u_basic|u_clk_4|Add0~72COUT1_152\);

-- Location: LC_X5_Y6_N8
\u_basic|u_clk_4|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(14) = DFFEAS((((!\u_basic|u_clk_4|Equal0~8_combout\ & \u_basic|u_clk_4|Add0~70_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_4|Equal0~8_combout\,
	datad => \u_basic|u_clk_4|Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(14));

-- Location: LC_X7_Y6_N6
\u_basic|u_clk_4|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~75_combout\ = (\u_basic|u_clk_4|cnt\(15) $ (((!\u_basic|u_clk_4|Add0~67\ & \u_basic|u_clk_4|Add0~72\) # (\u_basic|u_clk_4|Add0~67\ & \u_basic|u_clk_4|Add0~72COUT1_152\))))
-- \u_basic|u_clk_4|Add0~77\ = CARRY(((!\u_basic|u_clk_4|Add0~72\) # (!\u_basic|u_clk_4|cnt\(15))))
-- \u_basic|u_clk_4|Add0~77COUT1_153\ = CARRY(((!\u_basic|u_clk_4|Add0~72COUT1_152\) # (!\u_basic|u_clk_4|cnt\(15))))

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
	datab => \u_basic|u_clk_4|cnt\(15),
	cin => \u_basic|u_clk_4|Add0~67\,
	cin0 => \u_basic|u_clk_4|Add0~72\,
	cin1 => \u_basic|u_clk_4|Add0~72COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~75_combout\,
	cout0 => \u_basic|u_clk_4|Add0~77\,
	cout1 => \u_basic|u_clk_4|Add0~77COUT1_153\);

-- Location: LC_X5_Y6_N0
\u_basic|u_clk_4|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~3\ = (\u_basic|u_clk_4|cnt\(13) & (\u_basic|u_clk_4|cnt\(12) & (!E6_cnt[15] & \u_basic|u_clk_4|cnt\(14))))
-- \u_basic|u_clk_4|cnt\(15) = DFFEAS(\u_basic|u_clk_4|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~75_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_4|cnt\(13),
	datab => \u_basic|u_clk_4|cnt\(12),
	datac => \u_basic|u_clk_4|Add0~75_combout\,
	datad => \u_basic|u_clk_4|cnt\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~3\,
	regout => \u_basic|u_clk_4|cnt\(15));

-- Location: LC_X7_Y6_N7
\u_basic|u_clk_4|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~85_combout\ = (\u_basic|u_clk_4|cnt\(16) $ ((!(!\u_basic|u_clk_4|Add0~67\ & \u_basic|u_clk_4|Add0~77\) # (\u_basic|u_clk_4|Add0~67\ & \u_basic|u_clk_4|Add0~77COUT1_153\))))
-- \u_basic|u_clk_4|Add0~87\ = CARRY(((\u_basic|u_clk_4|cnt\(16) & !\u_basic|u_clk_4|Add0~77\)))
-- \u_basic|u_clk_4|Add0~87COUT1_154\ = CARRY(((\u_basic|u_clk_4|cnt\(16) & !\u_basic|u_clk_4|Add0~77COUT1_153\)))

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
	datab => \u_basic|u_clk_4|cnt\(16),
	cin => \u_basic|u_clk_4|Add0~67\,
	cin0 => \u_basic|u_clk_4|Add0~77\,
	cin1 => \u_basic|u_clk_4|Add0~77COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~85_combout\,
	cout0 => \u_basic|u_clk_4|Add0~87\,
	cout1 => \u_basic|u_clk_4|Add0~87COUT1_154\);

-- Location: LC_X8_Y6_N0
\u_basic|u_clk_4|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~95_combout\ = (\u_basic|u_clk_4|cnt\(19) $ ((\u_basic|u_clk_4|Add0~92\)))
-- \u_basic|u_clk_4|Add0~97\ = CARRY(((!\u_basic|u_clk_4|Add0~92\) # (!\u_basic|u_clk_4|cnt\(19))))
-- \u_basic|u_clk_4|Add0~97COUT1_156\ = CARRY(((!\u_basic|u_clk_4|Add0~92\) # (!\u_basic|u_clk_4|cnt\(19))))

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
	datab => \u_basic|u_clk_4|cnt\(19),
	cin => \u_basic|u_clk_4|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~95_combout\,
	cout0 => \u_basic|u_clk_4|Add0~97\,
	cout1 => \u_basic|u_clk_4|Add0~97COUT1_156\);

-- Location: LC_X5_Y6_N3
\u_basic|u_clk_4|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~95_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(19));

-- Location: LC_X5_Y6_N1
\u_basic|u_clk_4|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~5\ = (\u_basic|u_clk_4|cnt\(17) & (!\u_basic|u_clk_4|cnt\(18) & (!E6_cnt[16] & !\u_basic|u_clk_4|cnt\(19))))
-- \u_basic|u_clk_4|cnt\(16) = DFFEAS(\u_basic|u_clk_4|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~85_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_4|cnt\(17),
	datab => \u_basic|u_clk_4|cnt\(18),
	datac => \u_basic|u_clk_4|Add0~85_combout\,
	datad => \u_basic|u_clk_4|cnt\(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~5\,
	regout => \u_basic|u_clk_4|cnt\(16));

-- Location: LC_X7_Y6_N8
\u_basic|u_clk_4|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~80_combout\ = \u_basic|u_clk_4|cnt\(17) $ (((((!\u_basic|u_clk_4|Add0~67\ & \u_basic|u_clk_4|Add0~87\) # (\u_basic|u_clk_4|Add0~67\ & \u_basic|u_clk_4|Add0~87COUT1_154\)))))
-- \u_basic|u_clk_4|Add0~82\ = CARRY(((!\u_basic|u_clk_4|Add0~87\)) # (!\u_basic|u_clk_4|cnt\(17)))
-- \u_basic|u_clk_4|Add0~82COUT1_155\ = CARRY(((!\u_basic|u_clk_4|Add0~87COUT1_154\)) # (!\u_basic|u_clk_4|cnt\(17)))

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
	dataa => \u_basic|u_clk_4|cnt\(17),
	cin => \u_basic|u_clk_4|Add0~67\,
	cin0 => \u_basic|u_clk_4|Add0~87\,
	cin1 => \u_basic|u_clk_4|Add0~87COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~80_combout\,
	cout0 => \u_basic|u_clk_4|Add0~82\,
	cout1 => \u_basic|u_clk_4|Add0~82COUT1_155\);

-- Location: LC_X5_Y6_N7
\u_basic|u_clk_4|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(17) = DFFEAS((((!\u_basic|u_clk_4|Equal0~8_combout\ & \u_basic|u_clk_4|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_4|Equal0~8_combout\,
	datad => \u_basic|u_clk_4|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(17));

-- Location: LC_X7_Y6_N9
\u_basic|u_clk_4|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~90_combout\ = (\u_basic|u_clk_4|cnt\(18) $ ((!(!\u_basic|u_clk_4|Add0~67\ & \u_basic|u_clk_4|Add0~82\) # (\u_basic|u_clk_4|Add0~67\ & \u_basic|u_clk_4|Add0~82COUT1_155\))))
-- \u_basic|u_clk_4|Add0~92\ = CARRY(((\u_basic|u_clk_4|cnt\(18) & !\u_basic|u_clk_4|Add0~82COUT1_155\)))

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
	datab => \u_basic|u_clk_4|cnt\(18),
	cin => \u_basic|u_clk_4|Add0~67\,
	cin0 => \u_basic|u_clk_4|Add0~82\,
	cin1 => \u_basic|u_clk_4|Add0~82COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~90_combout\,
	cout => \u_basic|u_clk_4|Add0~92\);

-- Location: LC_X5_Y6_N9
\u_basic|u_clk_4|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~90_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(18));

-- Location: LC_X8_Y6_N1
\u_basic|u_clk_4|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~100_combout\ = (\u_basic|u_clk_4|cnt\(20) $ ((!(!\u_basic|u_clk_4|Add0~92\ & \u_basic|u_clk_4|Add0~97\) # (\u_basic|u_clk_4|Add0~92\ & \u_basic|u_clk_4|Add0~97COUT1_156\))))
-- \u_basic|u_clk_4|Add0~102\ = CARRY(((\u_basic|u_clk_4|cnt\(20) & !\u_basic|u_clk_4|Add0~97\)))
-- \u_basic|u_clk_4|Add0~102COUT1_157\ = CARRY(((\u_basic|u_clk_4|cnt\(20) & !\u_basic|u_clk_4|Add0~97COUT1_156\)))

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
	datab => \u_basic|u_clk_4|cnt\(20),
	cin => \u_basic|u_clk_4|Add0~92\,
	cin0 => \u_basic|u_clk_4|Add0~97\,
	cin1 => \u_basic|u_clk_4|Add0~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~100_combout\,
	cout0 => \u_basic|u_clk_4|Add0~102\,
	cout1 => \u_basic|u_clk_4|Add0~102COUT1_157\);

-- Location: LC_X9_Y6_N9
\u_basic|u_clk_4|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(20) = DFFEAS((((\u_basic|u_clk_4|Add0~100_combout\ & !\u_basic|u_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_4|Add0~100_combout\,
	datad => \u_basic|u_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(20));

-- Location: LC_X8_Y6_N2
\u_basic|u_clk_4|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~105_combout\ = (\u_basic|u_clk_4|cnt\(21) $ (((!\u_basic|u_clk_4|Add0~92\ & \u_basic|u_clk_4|Add0~102\) # (\u_basic|u_clk_4|Add0~92\ & \u_basic|u_clk_4|Add0~102COUT1_157\))))
-- \u_basic|u_clk_4|Add0~107\ = CARRY(((!\u_basic|u_clk_4|Add0~102\) # (!\u_basic|u_clk_4|cnt\(21))))
-- \u_basic|u_clk_4|Add0~107COUT1_158\ = CARRY(((!\u_basic|u_clk_4|Add0~102COUT1_157\) # (!\u_basic|u_clk_4|cnt\(21))))

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
	datab => \u_basic|u_clk_4|cnt\(21),
	cin => \u_basic|u_clk_4|Add0~92\,
	cin0 => \u_basic|u_clk_4|Add0~102\,
	cin1 => \u_basic|u_clk_4|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~105_combout\,
	cout0 => \u_basic|u_clk_4|Add0~107\,
	cout1 => \u_basic|u_clk_4|Add0~107COUT1_158\);

-- Location: LC_X9_Y6_N8
\u_basic|u_clk_4|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(21) = DFFEAS(((!\u_basic|u_clk_4|Equal0~8_combout\ & ((\u_basic|u_clk_4|Add0~105_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_4|Equal0~8_combout\,
	datad => \u_basic|u_clk_4|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(21));

-- Location: LC_X8_Y6_N3
\u_basic|u_clk_4|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~110_combout\ = (\u_basic|u_clk_4|cnt\(22) $ ((!(!\u_basic|u_clk_4|Add0~92\ & \u_basic|u_clk_4|Add0~107\) # (\u_basic|u_clk_4|Add0~92\ & \u_basic|u_clk_4|Add0~107COUT1_158\))))
-- \u_basic|u_clk_4|Add0~112\ = CARRY(((\u_basic|u_clk_4|cnt\(22) & !\u_basic|u_clk_4|Add0~107\)))
-- \u_basic|u_clk_4|Add0~112COUT1_159\ = CARRY(((\u_basic|u_clk_4|cnt\(22) & !\u_basic|u_clk_4|Add0~107COUT1_158\)))

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
	datab => \u_basic|u_clk_4|cnt\(22),
	cin => \u_basic|u_clk_4|Add0~92\,
	cin0 => \u_basic|u_clk_4|Add0~107\,
	cin1 => \u_basic|u_clk_4|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~110_combout\,
	cout0 => \u_basic|u_clk_4|Add0~112\,
	cout1 => \u_basic|u_clk_4|Add0~112COUT1_159\);

-- Location: LC_X9_Y6_N5
\u_basic|u_clk_4|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(22) = DFFEAS(((!\u_basic|u_clk_4|Equal0~8_combout\ & ((\u_basic|u_clk_4|Add0~110_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_4|Equal0~8_combout\,
	datad => \u_basic|u_clk_4|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(22));

-- Location: LC_X9_Y6_N4
\u_basic|u_clk_4|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~6\ = (\u_basic|u_clk_4|cnt\(22) & (\u_basic|u_clk_4|cnt\(20) & (!E6_cnt[23] & \u_basic|u_clk_4|cnt\(21))))
-- \u_basic|u_clk_4|cnt\(23) = DFFEAS(\u_basic|u_clk_4|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~115_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_4|cnt\(22),
	datab => \u_basic|u_clk_4|cnt\(20),
	datac => \u_basic|u_clk_4|Add0~115_combout\,
	datad => \u_basic|u_clk_4|cnt\(21),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~6\,
	regout => \u_basic|u_clk_4|cnt\(23));

-- Location: LC_X8_Y6_N4
\u_basic|u_clk_4|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~115_combout\ = (\u_basic|u_clk_4|cnt\(23) $ (((!\u_basic|u_clk_4|Add0~92\ & \u_basic|u_clk_4|Add0~112\) # (\u_basic|u_clk_4|Add0~92\ & \u_basic|u_clk_4|Add0~112COUT1_159\))))
-- \u_basic|u_clk_4|Add0~117\ = CARRY(((!\u_basic|u_clk_4|Add0~112COUT1_159\) # (!\u_basic|u_clk_4|cnt\(23))))

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
	datab => \u_basic|u_clk_4|cnt\(23),
	cin => \u_basic|u_clk_4|Add0~92\,
	cin0 => \u_basic|u_clk_4|Add0~112\,
	cin1 => \u_basic|u_clk_4|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~115_combout\,
	cout => \u_basic|u_clk_4|Add0~117\);

-- Location: LC_X8_Y6_N5
\u_basic|u_clk_4|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~120_combout\ = (\u_basic|u_clk_4|cnt\(24) $ ((!\u_basic|u_clk_4|Add0~117\)))
-- \u_basic|u_clk_4|Add0~122\ = CARRY(((\u_basic|u_clk_4|cnt\(24) & !\u_basic|u_clk_4|Add0~117\)))
-- \u_basic|u_clk_4|Add0~122COUT1_160\ = CARRY(((\u_basic|u_clk_4|cnt\(24) & !\u_basic|u_clk_4|Add0~117\)))

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
	datab => \u_basic|u_clk_4|cnt\(24),
	cin => \u_basic|u_clk_4|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~120_combout\,
	cout0 => \u_basic|u_clk_4|Add0~122\,
	cout1 => \u_basic|u_clk_4|Add0~122COUT1_160\);

-- Location: LC_X8_Y6_N6
\u_basic|u_clk_4|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~125_combout\ = (\u_basic|u_clk_4|cnt\(25) $ (((!\u_basic|u_clk_4|Add0~117\ & \u_basic|u_clk_4|Add0~122\) # (\u_basic|u_clk_4|Add0~117\ & \u_basic|u_clk_4|Add0~122COUT1_160\))))
-- \u_basic|u_clk_4|Add0~127\ = CARRY(((!\u_basic|u_clk_4|Add0~122\) # (!\u_basic|u_clk_4|cnt\(25))))
-- \u_basic|u_clk_4|Add0~127COUT1_161\ = CARRY(((!\u_basic|u_clk_4|Add0~122COUT1_160\) # (!\u_basic|u_clk_4|cnt\(25))))

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
	datab => \u_basic|u_clk_4|cnt\(25),
	cin => \u_basic|u_clk_4|Add0~117\,
	cin0 => \u_basic|u_clk_4|Add0~122\,
	cin1 => \u_basic|u_clk_4|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~125_combout\,
	cout0 => \u_basic|u_clk_4|Add0~127\,
	cout1 => \u_basic|u_clk_4|Add0~127COUT1_161\);

-- Location: LC_X8_Y6_N7
\u_basic|u_clk_4|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~130_combout\ = (\u_basic|u_clk_4|cnt\(26) $ ((!(!\u_basic|u_clk_4|Add0~117\ & \u_basic|u_clk_4|Add0~127\) # (\u_basic|u_clk_4|Add0~117\ & \u_basic|u_clk_4|Add0~127COUT1_161\))))
-- \u_basic|u_clk_4|Add0~132\ = CARRY(((\u_basic|u_clk_4|cnt\(26) & !\u_basic|u_clk_4|Add0~127\)))
-- \u_basic|u_clk_4|Add0~132COUT1_162\ = CARRY(((\u_basic|u_clk_4|cnt\(26) & !\u_basic|u_clk_4|Add0~127COUT1_161\)))

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
	datab => \u_basic|u_clk_4|cnt\(26),
	cin => \u_basic|u_clk_4|Add0~117\,
	cin0 => \u_basic|u_clk_4|Add0~127\,
	cin1 => \u_basic|u_clk_4|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~130_combout\,
	cout0 => \u_basic|u_clk_4|Add0~132\,
	cout1 => \u_basic|u_clk_4|Add0~132COUT1_162\);

-- Location: LC_X8_Y6_N9
\u_basic|u_clk_4|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~130_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(26));

-- Location: LC_X8_Y6_N8
\u_basic|u_clk_4|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Add0~135_combout\ = (((!\u_basic|u_clk_4|Add0~117\ & \u_basic|u_clk_4|Add0~132\) # (\u_basic|u_clk_4|Add0~117\ & \u_basic|u_clk_4|Add0~132COUT1_162\) $ (\u_basic|u_clk_4|cnt\(27))))

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
	datad => \u_basic|u_clk_4|cnt\(27),
	cin => \u_basic|u_clk_4|Add0~117\,
	cin0 => \u_basic|u_clk_4|Add0~132\,
	cin1 => \u_basic|u_clk_4|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Add0~135_combout\);

-- Location: LC_X8_Y5_N2
\u_basic|u_clk_4|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~135_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(27));

-- Location: LC_X8_Y5_N5
\u_basic|u_clk_4|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~7\ = (!\u_basic|u_clk_4|cnt\(25) & (!\u_basic|u_clk_4|cnt\(27) & (!E6_cnt[24] & !\u_basic|u_clk_4|cnt\(26))))
-- \u_basic|u_clk_4|cnt\(24) = DFFEAS(\u_basic|u_clk_4|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~120_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_4|cnt\(25),
	datab => \u_basic|u_clk_4|cnt\(27),
	datac => \u_basic|u_clk_4|Add0~120_combout\,
	datad => \u_basic|u_clk_4|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~7\,
	regout => \u_basic|u_clk_4|cnt\(24));

-- Location: LC_X8_Y5_N3
\u_basic|u_clk_4|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_4|Add0~125_combout\, , , VCC)

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
	datac => \u_basic|u_clk_4|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|cnt\(25));

-- Location: LC_X9_Y6_N1
\u_basic|u_clk_4|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~4_combout\ = (\u_basic|u_clk_4|Equal0~1\ & (\u_basic|u_clk_4|Equal0~3\ & (\u_basic|u_clk_4|Equal0~0\ & \u_basic|u_clk_4|Equal0~2\)))

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
	dataa => \u_basic|u_clk_4|Equal0~1\,
	datab => \u_basic|u_clk_4|Equal0~3\,
	datac => \u_basic|u_clk_4|Equal0~0\,
	datad => \u_basic|u_clk_4|Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~4_combout\);

-- Location: LC_X9_Y6_N2
\u_basic|u_clk_4|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|Equal0~8_combout\ = (\u_basic|u_clk_4|Equal0~6\ & (\u_basic|u_clk_4|Equal0~5\ & (\u_basic|u_clk_4|Equal0~7\ & \u_basic|u_clk_4|Equal0~4_combout\)))

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
	dataa => \u_basic|u_clk_4|Equal0~6\,
	datab => \u_basic|u_clk_4|Equal0~5\,
	datac => \u_basic|u_clk_4|Equal0~7\,
	datad => \u_basic|u_clk_4|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_4|Equal0~8_combout\);

-- Location: LC_X9_Y6_N0
\u_basic|u_clk_4|clkout\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_4|clkout~regout\ = DFFEAS(((\u_basic|u_clk_4|clkout~regout\ $ (\u_basic|u_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_basic|u_clk_4|clkout~regout\,
	datad => \u_basic|u_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_4|clkout~regout\);

-- Location: LC_X13_Y9_N8
\u_basic|u_flag|flag[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag\(5) = DFFEAS((\u_basic|u_flag|flag\(5)) # ((\u_basic|u_flag|always0~0\ & ((\u_basic|u_debounce|key_sec_pre\(6)) # (!\u_basic|u_debounce|key_sec\(6))))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_flag|always0~0\,
	datab => \u_basic|u_debounce|key_sec_pre\(6),
	datac => \u_basic|u_debounce|key_sec\(6),
	datad => \u_basic|u_flag|flag\(5),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_flag|flag\(5));

-- Location: LC_X13_Y8_N0
\u_basic|u_debounce|key_sec[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_sec\(4) = DFFEAS(((\BTN~combout\(4))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , \u_basic|u_debounce|Equal0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \BTN~combout\(4),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_debounce|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_sec\(4));

-- Location: LC_X13_Y9_N7
\u_basic|u_debounce|key_sec_pre[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|always0~1\ = ((\u_basic|u_flag|flag\(5) & (!F1_key_sec_pre[4] & \u_basic|u_debounce|key_sec\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_flag|flag\(5),
	datac => \u_basic|u_debounce|key_sec\(4),
	datad => \u_basic|u_debounce|key_sec\(4),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_flag|always0~1\,
	regout => \u_basic|u_debounce|key_sec_pre\(4));

-- Location: LC_X14_Y7_N2
\u_basic|u_flag|flag[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag\(4) = DFFEAS(((\u_basic|u_flag|flag\(4)) # ((\u_basic|u_flag|flag[4]~0\ & \u_basic|u_flag|always0~1\))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_flag|flag\(4),
	datac => \u_basic|u_flag|flag[4]~0\,
	datad => \u_basic|u_flag|always0~1\,
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_flag|flag\(4));

-- Location: LC_X14_Y7_N1
\u_basic|u_sequencer_num_4|code[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_4|code\(0) = DFFEAS((((!\u_basic|u_sequencer_num_4|code\(0)))), \u_basic|u_clk_4|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(4), , , , )

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
	clk => \u_basic|u_clk_4|clkout~regout\,
	datac => \u_basic|u_sequencer_num_4|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_4|code\(0));

-- Location: LC_X12_Y6_N0
\u_basic|u_decode_seg|cath_control[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|cath_control\(2) = DFFEAS(((\u_basic|u_decode_seg|cath_control\(2) & ((!\u_basic|u2|cnt\(0)))) # (!\u_basic|u_decode_seg|cath_control\(2) & (\u_basic|u_decode_seg|cath_control\(1) & \u_basic|u2|cnt\(0)))), 
-- GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , \BTN_7~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0af0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datac => \u_basic|u_decode_seg|cath_control\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	sclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|cath_control\(2));

-- Location: LC_X16_Y7_N5
\u_basic|u_decode_seg|cath_control[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|cath_control\(1) = DFFEAS((!\BTN_7~combout\ & ((\u_basic|u2|cnt\(0) & (!\u_basic|u_decode_seg|cath_control\(2) & !\u_basic|u_decode_seg|cath_control\(1))) # (!\u_basic|u2|cnt\(0) & ((\u_basic|u_decode_seg|cath_control\(1)))))), 
-- GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1104",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \BTN_7~combout\,
	datab => \u_basic|u2|cnt\(0),
	datac => \u_basic|u_decode_seg|cath_control\(2),
	datad => \u_basic|u_decode_seg|cath_control\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|cath_control\(1));

-- Location: LC_X2_Y8_N1
\u_basic|u_clk_3|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~35_combout\ = ((!\u_basic|u_clk_3|cnt\(0)))
-- \u_basic|u_clk_3|Add0~37\ = CARRY(((\u_basic|u_clk_3|cnt\(0))))
-- \u_basic|u_clk_3|Add0~37COUT1_141\ = CARRY(((\u_basic|u_clk_3|cnt\(0))))

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
	datab => \u_basic|u_clk_3|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~35_combout\,
	cout0 => \u_basic|u_clk_3|Add0~37\,
	cout1 => \u_basic|u_clk_3|Add0~37COUT1_141\);

-- Location: LC_X1_Y9_N5
\u_basic|u_clk_3|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(0) = DFFEAS((((\u_basic|u_clk_3|Add0~35_combout\ & !\u_basic|u_clk_3|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_3|Add0~35_combout\,
	datad => \u_basic|u_clk_3|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(0));

-- Location: LC_X2_Y8_N2
\u_basic|u_clk_3|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~30_combout\ = (\u_basic|u_clk_3|cnt\(1) $ ((\u_basic|u_clk_3|Add0~37\)))
-- \u_basic|u_clk_3|Add0~32\ = CARRY(((!\u_basic|u_clk_3|Add0~37\) # (!\u_basic|u_clk_3|cnt\(1))))
-- \u_basic|u_clk_3|Add0~32COUT1_142\ = CARRY(((!\u_basic|u_clk_3|Add0~37COUT1_141\) # (!\u_basic|u_clk_3|cnt\(1))))

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
	datab => \u_basic|u_clk_3|cnt\(1),
	cin0 => \u_basic|u_clk_3|Add0~37\,
	cin1 => \u_basic|u_clk_3|Add0~37COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~30_combout\,
	cout0 => \u_basic|u_clk_3|Add0~32\,
	cout1 => \u_basic|u_clk_3|Add0~32COUT1_142\);

-- Location: LC_X1_Y8_N6
\u_basic|u_clk_3|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~30_combout\, , , VCC)

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
	datac => \u_basic|u_clk_3|Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(1));

-- Location: LC_X2_Y8_N3
\u_basic|u_clk_3|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~25_combout\ = \u_basic|u_clk_3|cnt\(2) $ ((((!\u_basic|u_clk_3|Add0~32\))))
-- \u_basic|u_clk_3|Add0~27\ = CARRY((\u_basic|u_clk_3|cnt\(2) & ((!\u_basic|u_clk_3|Add0~32\))))
-- \u_basic|u_clk_3|Add0~27COUT1_143\ = CARRY((\u_basic|u_clk_3|cnt\(2) & ((!\u_basic|u_clk_3|Add0~32COUT1_142\))))

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
	dataa => \u_basic|u_clk_3|cnt\(2),
	cin0 => \u_basic|u_clk_3|Add0~32\,
	cin1 => \u_basic|u_clk_3|Add0~32COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~25_combout\,
	cout0 => \u_basic|u_clk_3|Add0~27\,
	cout1 => \u_basic|u_clk_3|Add0~27COUT1_143\);

-- Location: LC_X1_Y8_N5
\u_basic|u_clk_3|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~25_combout\, , , VCC)

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
	datac => \u_basic|u_clk_3|Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(2));

-- Location: LC_X2_Y8_N4
\u_basic|u_clk_3|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~20_combout\ = (\u_basic|u_clk_3|cnt\(3) $ ((\u_basic|u_clk_3|Add0~27\)))
-- \u_basic|u_clk_3|Add0~22\ = CARRY(((!\u_basic|u_clk_3|Add0~27COUT1_143\) # (!\u_basic|u_clk_3|cnt\(3))))

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
	datab => \u_basic|u_clk_3|cnt\(3),
	cin0 => \u_basic|u_clk_3|Add0~27\,
	cin1 => \u_basic|u_clk_3|Add0~27COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~20_combout\,
	cout => \u_basic|u_clk_3|Add0~22\);

-- Location: LC_X1_Y9_N0
\u_basic|u_clk_3|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~1\ = (!\u_basic|u_clk_3|cnt\(0) & (!\u_basic|u_clk_3|cnt\(2) & (!E7_cnt[3] & !\u_basic|u_clk_3|cnt\(1))))
-- \u_basic|u_clk_3|cnt\(3) = DFFEAS(\u_basic|u_clk_3|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~20_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_3|cnt\(0),
	datab => \u_basic|u_clk_3|cnt\(2),
	datac => \u_basic|u_clk_3|Add0~20_combout\,
	datad => \u_basic|u_clk_3|cnt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~1\,
	regout => \u_basic|u_clk_3|cnt\(3));

-- Location: LC_X2_Y8_N5
\u_basic|u_clk_3|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~15_combout\ = (\u_basic|u_clk_3|cnt\(4) $ ((!\u_basic|u_clk_3|Add0~22\)))
-- \u_basic|u_clk_3|Add0~17\ = CARRY(((\u_basic|u_clk_3|cnt\(4) & !\u_basic|u_clk_3|Add0~22\)))
-- \u_basic|u_clk_3|Add0~17COUT1_144\ = CARRY(((\u_basic|u_clk_3|cnt\(4) & !\u_basic|u_clk_3|Add0~22\)))

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
	datab => \u_basic|u_clk_3|cnt\(4),
	cin => \u_basic|u_clk_3|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~15_combout\,
	cout0 => \u_basic|u_clk_3|Add0~17\,
	cout1 => \u_basic|u_clk_3|Add0~17COUT1_144\);

-- Location: LC_X1_Y8_N7
\u_basic|u_clk_3|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(4) = DFFEAS((((\u_basic|u_clk_3|Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_3|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(4));

-- Location: LC_X2_Y8_N6
\u_basic|u_clk_3|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~10_combout\ = (\u_basic|u_clk_3|cnt\(5) $ (((!\u_basic|u_clk_3|Add0~22\ & \u_basic|u_clk_3|Add0~17\) # (\u_basic|u_clk_3|Add0~22\ & \u_basic|u_clk_3|Add0~17COUT1_144\))))
-- \u_basic|u_clk_3|Add0~12\ = CARRY(((!\u_basic|u_clk_3|Add0~17\) # (!\u_basic|u_clk_3|cnt\(5))))
-- \u_basic|u_clk_3|Add0~12COUT1_145\ = CARRY(((!\u_basic|u_clk_3|Add0~17COUT1_144\) # (!\u_basic|u_clk_3|cnt\(5))))

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
	datab => \u_basic|u_clk_3|cnt\(5),
	cin => \u_basic|u_clk_3|Add0~22\,
	cin0 => \u_basic|u_clk_3|Add0~17\,
	cin1 => \u_basic|u_clk_3|Add0~17COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~10_combout\,
	cout0 => \u_basic|u_clk_3|Add0~12\,
	cout1 => \u_basic|u_clk_3|Add0~12COUT1_145\);

-- Location: LC_X2_Y8_N0
\u_basic|u_clk_3|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~10_combout\, , , VCC)

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
	datac => \u_basic|u_clk_3|Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(5));

-- Location: LC_X2_Y8_N7
\u_basic|u_clk_3|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~0_combout\ = \u_basic|u_clk_3|cnt\(6) $ ((((!(!\u_basic|u_clk_3|Add0~22\ & \u_basic|u_clk_3|Add0~12\) # (\u_basic|u_clk_3|Add0~22\ & \u_basic|u_clk_3|Add0~12COUT1_145\)))))
-- \u_basic|u_clk_3|Add0~2\ = CARRY((\u_basic|u_clk_3|cnt\(6) & ((!\u_basic|u_clk_3|Add0~12\))))
-- \u_basic|u_clk_3|Add0~2COUT1_146\ = CARRY((\u_basic|u_clk_3|cnt\(6) & ((!\u_basic|u_clk_3|Add0~12COUT1_145\))))

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
	dataa => \u_basic|u_clk_3|cnt\(6),
	cin => \u_basic|u_clk_3|Add0~22\,
	cin0 => \u_basic|u_clk_3|Add0~12\,
	cin1 => \u_basic|u_clk_3|Add0~12COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~0_combout\,
	cout0 => \u_basic|u_clk_3|Add0~2\,
	cout1 => \u_basic|u_clk_3|Add0~2COUT1_146\);

-- Location: LC_X1_Y9_N1
\u_basic|u_clk_3|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(6) = DFFEAS((((\u_basic|u_clk_3|Add0~0_combout\ & !\u_basic|u_clk_3|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_3|Add0~0_combout\,
	datad => \u_basic|u_clk_3|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(6));

-- Location: LC_X2_Y8_N8
\u_basic|u_clk_3|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~5_combout\ = (\u_basic|u_clk_3|cnt\(7) $ (((!\u_basic|u_clk_3|Add0~22\ & \u_basic|u_clk_3|Add0~2\) # (\u_basic|u_clk_3|Add0~22\ & \u_basic|u_clk_3|Add0~2COUT1_146\))))
-- \u_basic|u_clk_3|Add0~7\ = CARRY(((!\u_basic|u_clk_3|Add0~2\) # (!\u_basic|u_clk_3|cnt\(7))))
-- \u_basic|u_clk_3|Add0~7COUT1_147\ = CARRY(((!\u_basic|u_clk_3|Add0~2COUT1_146\) # (!\u_basic|u_clk_3|cnt\(7))))

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
	datab => \u_basic|u_clk_3|cnt\(7),
	cin => \u_basic|u_clk_3|Add0~22\,
	cin0 => \u_basic|u_clk_3|Add0~2\,
	cin1 => \u_basic|u_clk_3|Add0~2COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~5_combout\,
	cout0 => \u_basic|u_clk_3|Add0~7\,
	cout1 => \u_basic|u_clk_3|Add0~7COUT1_147\);

-- Location: LC_X1_Y9_N6
\u_basic|u_clk_3|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~0\ = (!\u_basic|u_clk_3|cnt\(4) & (\u_basic|u_clk_3|cnt\(6) & (!E7_cnt[7] & !\u_basic|u_clk_3|cnt\(5))))
-- \u_basic|u_clk_3|cnt\(7) = DFFEAS(\u_basic|u_clk_3|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~5_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_3|cnt\(4),
	datab => \u_basic|u_clk_3|cnt\(6),
	datac => \u_basic|u_clk_3|Add0~5_combout\,
	datad => \u_basic|u_clk_3|cnt\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~0\,
	regout => \u_basic|u_clk_3|cnt\(7));

-- Location: LC_X2_Y8_N9
\u_basic|u_clk_3|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~40_combout\ = (\u_basic|u_clk_3|cnt\(8) $ ((!(!\u_basic|u_clk_3|Add0~22\ & \u_basic|u_clk_3|Add0~7\) # (\u_basic|u_clk_3|Add0~22\ & \u_basic|u_clk_3|Add0~7COUT1_147\))))
-- \u_basic|u_clk_3|Add0~42\ = CARRY(((\u_basic|u_clk_3|cnt\(8) & !\u_basic|u_clk_3|Add0~7COUT1_147\)))

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
	datab => \u_basic|u_clk_3|cnt\(8),
	cin => \u_basic|u_clk_3|Add0~22\,
	cin0 => \u_basic|u_clk_3|Add0~7\,
	cin1 => \u_basic|u_clk_3|Add0~7COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~40_combout\,
	cout => \u_basic|u_clk_3|Add0~42\);

-- Location: LC_X2_Y9_N3
\u_basic|u_clk_3|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(8) = DFFEAS((((!\u_basic|u_clk_3|Equal0~8_combout\ & \u_basic|u_clk_3|Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_3|Equal0~8_combout\,
	datad => \u_basic|u_clk_3|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(8));

-- Location: LC_X3_Y8_N5
\u_basic|u_clk_3|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~60_combout\ = (\u_basic|u_clk_3|cnt\(14) $ ((!\u_basic|u_clk_3|Add0~72\)))
-- \u_basic|u_clk_3|Add0~62\ = CARRY(((\u_basic|u_clk_3|cnt\(14) & !\u_basic|u_clk_3|Add0~72\)))
-- \u_basic|u_clk_3|Add0~62COUT1_152\ = CARRY(((\u_basic|u_clk_3|cnt\(14) & !\u_basic|u_clk_3|Add0~72\)))

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
	datab => \u_basic|u_clk_3|cnt\(14),
	cin => \u_basic|u_clk_3|Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~60_combout\,
	cout0 => \u_basic|u_clk_3|Add0~62\,
	cout1 => \u_basic|u_clk_3|Add0~62COUT1_152\);

-- Location: LC_X2_Y9_N0
\u_basic|u_clk_3|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(14) = DFFEAS((((!\u_basic|u_clk_3|Equal0~8_combout\ & \u_basic|u_clk_3|Add0~60_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_3|Equal0~8_combout\,
	datad => \u_basic|u_clk_3|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(14));

-- Location: LC_X3_Y8_N0
\u_basic|u_clk_3|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~45_combout\ = (\u_basic|u_clk_3|cnt\(9) $ ((\u_basic|u_clk_3|Add0~42\)))
-- \u_basic|u_clk_3|Add0~47\ = CARRY(((!\u_basic|u_clk_3|Add0~42\) # (!\u_basic|u_clk_3|cnt\(9))))
-- \u_basic|u_clk_3|Add0~47COUT1_148\ = CARRY(((!\u_basic|u_clk_3|Add0~42\) # (!\u_basic|u_clk_3|cnt\(9))))

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
	datab => \u_basic|u_clk_3|cnt\(9),
	cin => \u_basic|u_clk_3|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~45_combout\,
	cout0 => \u_basic|u_clk_3|Add0~47\,
	cout1 => \u_basic|u_clk_3|Add0~47COUT1_148\);

-- Location: LC_X2_Y9_N1
\u_basic|u_clk_3|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(9) = DFFEAS((((!\u_basic|u_clk_3|Equal0~8_combout\ & \u_basic|u_clk_3|Add0~45_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_3|Equal0~8_combout\,
	datad => \u_basic|u_clk_3|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(9));

-- Location: LC_X3_Y8_N1
\u_basic|u_clk_3|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~55_combout\ = \u_basic|u_clk_3|cnt\(10) $ ((((!(!\u_basic|u_clk_3|Add0~42\ & \u_basic|u_clk_3|Add0~47\) # (\u_basic|u_clk_3|Add0~42\ & \u_basic|u_clk_3|Add0~47COUT1_148\)))))
-- \u_basic|u_clk_3|Add0~57\ = CARRY((\u_basic|u_clk_3|cnt\(10) & ((!\u_basic|u_clk_3|Add0~47\))))
-- \u_basic|u_clk_3|Add0~57COUT1_149\ = CARRY((\u_basic|u_clk_3|cnt\(10) & ((!\u_basic|u_clk_3|Add0~47COUT1_148\))))

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
	dataa => \u_basic|u_clk_3|cnt\(10),
	cin => \u_basic|u_clk_3|Add0~42\,
	cin0 => \u_basic|u_clk_3|Add0~47\,
	cin1 => \u_basic|u_clk_3|Add0~47COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~55_combout\,
	cout0 => \u_basic|u_clk_3|Add0~57\,
	cout1 => \u_basic|u_clk_3|Add0~57COUT1_149\);

-- Location: LC_X2_Y9_N7
\u_basic|u_clk_3|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~2\ = (\u_basic|u_clk_3|cnt\(11) & (\u_basic|u_clk_3|cnt\(9) & (!E7_cnt[10] & \u_basic|u_clk_3|cnt\(8))))
-- \u_basic|u_clk_3|cnt\(10) = DFFEAS(\u_basic|u_clk_3|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~55_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_3|cnt\(11),
	datab => \u_basic|u_clk_3|cnt\(9),
	datac => \u_basic|u_clk_3|Add0~55_combout\,
	datad => \u_basic|u_clk_3|cnt\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~2\,
	regout => \u_basic|u_clk_3|cnt\(10));

-- Location: LC_X3_Y8_N2
\u_basic|u_clk_3|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~50_combout\ = \u_basic|u_clk_3|cnt\(11) $ (((((!\u_basic|u_clk_3|Add0~42\ & \u_basic|u_clk_3|Add0~57\) # (\u_basic|u_clk_3|Add0~42\ & \u_basic|u_clk_3|Add0~57COUT1_149\)))))
-- \u_basic|u_clk_3|Add0~52\ = CARRY(((!\u_basic|u_clk_3|Add0~57\)) # (!\u_basic|u_clk_3|cnt\(11)))
-- \u_basic|u_clk_3|Add0~52COUT1_150\ = CARRY(((!\u_basic|u_clk_3|Add0~57COUT1_149\)) # (!\u_basic|u_clk_3|cnt\(11)))

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
	dataa => \u_basic|u_clk_3|cnt\(11),
	cin => \u_basic|u_clk_3|Add0~42\,
	cin0 => \u_basic|u_clk_3|Add0~57\,
	cin1 => \u_basic|u_clk_3|Add0~57COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~50_combout\,
	cout0 => \u_basic|u_clk_3|Add0~52\,
	cout1 => \u_basic|u_clk_3|Add0~52COUT1_150\);

-- Location: LC_X2_Y9_N5
\u_basic|u_clk_3|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(11) = DFFEAS((((!\u_basic|u_clk_3|Equal0~8_combout\ & \u_basic|u_clk_3|Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_3|Equal0~8_combout\,
	datad => \u_basic|u_clk_3|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(11));

-- Location: LC_X3_Y8_N3
\u_basic|u_clk_3|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~65_combout\ = (\u_basic|u_clk_3|cnt\(12) $ ((!(!\u_basic|u_clk_3|Add0~42\ & \u_basic|u_clk_3|Add0~52\) # (\u_basic|u_clk_3|Add0~42\ & \u_basic|u_clk_3|Add0~52COUT1_150\))))
-- \u_basic|u_clk_3|Add0~67\ = CARRY(((\u_basic|u_clk_3|cnt\(12) & !\u_basic|u_clk_3|Add0~52\)))
-- \u_basic|u_clk_3|Add0~67COUT1_151\ = CARRY(((\u_basic|u_clk_3|cnt\(12) & !\u_basic|u_clk_3|Add0~52COUT1_150\)))

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
	datab => \u_basic|u_clk_3|cnt\(12),
	cin => \u_basic|u_clk_3|Add0~42\,
	cin0 => \u_basic|u_clk_3|Add0~52\,
	cin1 => \u_basic|u_clk_3|Add0~52COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~65_combout\,
	cout0 => \u_basic|u_clk_3|Add0~67\,
	cout1 => \u_basic|u_clk_3|Add0~67COUT1_151\);

-- Location: LC_X3_Y8_N6
\u_basic|u_clk_3|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~75_combout\ = (\u_basic|u_clk_3|cnt\(15) $ (((!\u_basic|u_clk_3|Add0~72\ & \u_basic|u_clk_3|Add0~62\) # (\u_basic|u_clk_3|Add0~72\ & \u_basic|u_clk_3|Add0~62COUT1_152\))))
-- \u_basic|u_clk_3|Add0~77\ = CARRY(((!\u_basic|u_clk_3|Add0~62\) # (!\u_basic|u_clk_3|cnt\(15))))
-- \u_basic|u_clk_3|Add0~77COUT1_153\ = CARRY(((!\u_basic|u_clk_3|Add0~62COUT1_152\) # (!\u_basic|u_clk_3|cnt\(15))))

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
	datab => \u_basic|u_clk_3|cnt\(15),
	cin => \u_basic|u_clk_3|Add0~72\,
	cin0 => \u_basic|u_clk_3|Add0~62\,
	cin1 => \u_basic|u_clk_3|Add0~62COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~75_combout\,
	cout0 => \u_basic|u_clk_3|Add0~77\,
	cout1 => \u_basic|u_clk_3|Add0~77COUT1_153\);

-- Location: LC_X2_Y9_N2
\u_basic|u_clk_3|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(15) = DFFEAS((((\u_basic|u_clk_3|Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_3|Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(15));

-- Location: LC_X2_Y9_N8
\u_basic|u_clk_3|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~3\ = (!\u_basic|u_clk_3|cnt\(13) & (\u_basic|u_clk_3|cnt\(14) & (!E7_cnt[12] & !\u_basic|u_clk_3|cnt\(15))))
-- \u_basic|u_clk_3|cnt\(12) = DFFEAS(\u_basic|u_clk_3|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~65_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_3|cnt\(13),
	datab => \u_basic|u_clk_3|cnt\(14),
	datac => \u_basic|u_clk_3|Add0~65_combout\,
	datad => \u_basic|u_clk_3|cnt\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~3\,
	regout => \u_basic|u_clk_3|cnt\(12));

-- Location: LC_X3_Y8_N4
\u_basic|u_clk_3|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~70_combout\ = (\u_basic|u_clk_3|cnt\(13) $ (((!\u_basic|u_clk_3|Add0~42\ & \u_basic|u_clk_3|Add0~67\) # (\u_basic|u_clk_3|Add0~42\ & \u_basic|u_clk_3|Add0~67COUT1_151\))))
-- \u_basic|u_clk_3|Add0~72\ = CARRY(((!\u_basic|u_clk_3|Add0~67COUT1_151\) # (!\u_basic|u_clk_3|cnt\(13))))

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
	datab => \u_basic|u_clk_3|cnt\(13),
	cin => \u_basic|u_clk_3|Add0~42\,
	cin0 => \u_basic|u_clk_3|Add0~67\,
	cin1 => \u_basic|u_clk_3|Add0~67COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~70_combout\,
	cout => \u_basic|u_clk_3|Add0~72\);

-- Location: LC_X2_Y9_N6
\u_basic|u_clk_3|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~70_combout\, , , VCC)

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
	datac => \u_basic|u_clk_3|Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(13));

-- Location: LC_X4_Y8_N0
\u_basic|u_clk_3|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~85_combout\ = \u_basic|u_clk_3|cnt\(19) $ ((((\u_basic|u_clk_3|Add0~82\))))
-- \u_basic|u_clk_3|Add0~87\ = CARRY(((!\u_basic|u_clk_3|Add0~82\)) # (!\u_basic|u_clk_3|cnt\(19)))
-- \u_basic|u_clk_3|Add0~87COUT1_156\ = CARRY(((!\u_basic|u_clk_3|Add0~82\)) # (!\u_basic|u_clk_3|cnt\(19)))

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
	dataa => \u_basic|u_clk_3|cnt\(19),
	cin => \u_basic|u_clk_3|Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~85_combout\,
	cout0 => \u_basic|u_clk_3|Add0~87\,
	cout1 => \u_basic|u_clk_3|Add0~87COUT1_156\);

-- Location: LC_X3_Y9_N2
\u_basic|u_clk_3|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(19) = DFFEAS((((!\u_basic|u_clk_3|Equal0~8_combout\ & \u_basic|u_clk_3|Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_3|Equal0~8_combout\,
	datad => \u_basic|u_clk_3|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(19));

-- Location: LC_X3_Y8_N7
\u_basic|u_clk_3|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~90_combout\ = (\u_basic|u_clk_3|cnt\(16) $ ((!(!\u_basic|u_clk_3|Add0~72\ & \u_basic|u_clk_3|Add0~77\) # (\u_basic|u_clk_3|Add0~72\ & \u_basic|u_clk_3|Add0~77COUT1_153\))))
-- \u_basic|u_clk_3|Add0~92\ = CARRY(((\u_basic|u_clk_3|cnt\(16) & !\u_basic|u_clk_3|Add0~77\)))
-- \u_basic|u_clk_3|Add0~92COUT1_154\ = CARRY(((\u_basic|u_clk_3|cnt\(16) & !\u_basic|u_clk_3|Add0~77COUT1_153\)))

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
	datab => \u_basic|u_clk_3|cnt\(16),
	cin => \u_basic|u_clk_3|Add0~72\,
	cin0 => \u_basic|u_clk_3|Add0~77\,
	cin1 => \u_basic|u_clk_3|Add0~77COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~90_combout\,
	cout0 => \u_basic|u_clk_3|Add0~92\,
	cout1 => \u_basic|u_clk_3|Add0~92COUT1_154\);

-- Location: LC_X3_Y9_N5
\u_basic|u_clk_3|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~5\ = (\u_basic|u_clk_3|cnt\(18) & (\u_basic|u_clk_3|cnt\(19) & (!E7_cnt[16] & !\u_basic|u_clk_3|cnt\(17))))
-- \u_basic|u_clk_3|cnt\(16) = DFFEAS(\u_basic|u_clk_3|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~90_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_3|cnt\(18),
	datab => \u_basic|u_clk_3|cnt\(19),
	datac => \u_basic|u_clk_3|Add0~90_combout\,
	datad => \u_basic|u_clk_3|cnt\(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~5\,
	regout => \u_basic|u_clk_3|cnt\(16));

-- Location: LC_X3_Y8_N8
\u_basic|u_clk_3|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~95_combout\ = (\u_basic|u_clk_3|cnt\(17) $ (((!\u_basic|u_clk_3|Add0~72\ & \u_basic|u_clk_3|Add0~92\) # (\u_basic|u_clk_3|Add0~72\ & \u_basic|u_clk_3|Add0~92COUT1_154\))))
-- \u_basic|u_clk_3|Add0~97\ = CARRY(((!\u_basic|u_clk_3|Add0~92\) # (!\u_basic|u_clk_3|cnt\(17))))
-- \u_basic|u_clk_3|Add0~97COUT1_155\ = CARRY(((!\u_basic|u_clk_3|Add0~92COUT1_154\) # (!\u_basic|u_clk_3|cnt\(17))))

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
	datab => \u_basic|u_clk_3|cnt\(17),
	cin => \u_basic|u_clk_3|Add0~72\,
	cin0 => \u_basic|u_clk_3|Add0~92\,
	cin1 => \u_basic|u_clk_3|Add0~92COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~95_combout\,
	cout0 => \u_basic|u_clk_3|Add0~97\,
	cout1 => \u_basic|u_clk_3|Add0~97COUT1_155\);

-- Location: LC_X3_Y9_N8
\u_basic|u_clk_3|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(17) = DFFEAS((((\u_basic|u_clk_3|Add0~95_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_3|Add0~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(17));

-- Location: LC_X3_Y8_N9
\u_basic|u_clk_3|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~80_combout\ = (\u_basic|u_clk_3|cnt\(18) $ ((!(!\u_basic|u_clk_3|Add0~72\ & \u_basic|u_clk_3|Add0~97\) # (\u_basic|u_clk_3|Add0~72\ & \u_basic|u_clk_3|Add0~97COUT1_155\))))
-- \u_basic|u_clk_3|Add0~82\ = CARRY(((\u_basic|u_clk_3|cnt\(18) & !\u_basic|u_clk_3|Add0~97COUT1_155\)))

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
	datab => \u_basic|u_clk_3|cnt\(18),
	cin => \u_basic|u_clk_3|Add0~72\,
	cin0 => \u_basic|u_clk_3|Add0~97\,
	cin1 => \u_basic|u_clk_3|Add0~97COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~80_combout\,
	cout => \u_basic|u_clk_3|Add0~82\);

-- Location: LC_X2_Y9_N9
\u_basic|u_clk_3|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(18) = DFFEAS((((!\u_basic|u_clk_3|Equal0~8_combout\ & \u_basic|u_clk_3|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_3|Equal0~8_combout\,
	datad => \u_basic|u_clk_3|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(18));

-- Location: LC_X4_Y8_N1
\u_basic|u_clk_3|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~105_combout\ = (\u_basic|u_clk_3|cnt\(20) $ ((!(!\u_basic|u_clk_3|Add0~82\ & \u_basic|u_clk_3|Add0~87\) # (\u_basic|u_clk_3|Add0~82\ & \u_basic|u_clk_3|Add0~87COUT1_156\))))
-- \u_basic|u_clk_3|Add0~107\ = CARRY(((\u_basic|u_clk_3|cnt\(20) & !\u_basic|u_clk_3|Add0~87\)))
-- \u_basic|u_clk_3|Add0~107COUT1_157\ = CARRY(((\u_basic|u_clk_3|cnt\(20) & !\u_basic|u_clk_3|Add0~87COUT1_156\)))

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
	datab => \u_basic|u_clk_3|cnt\(20),
	cin => \u_basic|u_clk_3|Add0~82\,
	cin0 => \u_basic|u_clk_3|Add0~87\,
	cin1 => \u_basic|u_clk_3|Add0~87COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~105_combout\,
	cout0 => \u_basic|u_clk_3|Add0~107\,
	cout1 => \u_basic|u_clk_3|Add0~107COUT1_157\);

-- Location: LC_X5_Y8_N5
\u_basic|u_clk_3|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~6\ = (!\u_basic|u_clk_3|cnt\(21) & (\u_basic|u_clk_3|cnt\(22) & (!E7_cnt[20] & !\u_basic|u_clk_3|cnt\(23))))
-- \u_basic|u_clk_3|cnt\(20) = DFFEAS(\u_basic|u_clk_3|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~105_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_3|cnt\(21),
	datab => \u_basic|u_clk_3|cnt\(22),
	datac => \u_basic|u_clk_3|Add0~105_combout\,
	datad => \u_basic|u_clk_3|cnt\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~6\,
	regout => \u_basic|u_clk_3|cnt\(20));

-- Location: LC_X4_Y8_N2
\u_basic|u_clk_3|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~110_combout\ = (\u_basic|u_clk_3|cnt\(21) $ (((!\u_basic|u_clk_3|Add0~82\ & \u_basic|u_clk_3|Add0~107\) # (\u_basic|u_clk_3|Add0~82\ & \u_basic|u_clk_3|Add0~107COUT1_157\))))
-- \u_basic|u_clk_3|Add0~112\ = CARRY(((!\u_basic|u_clk_3|Add0~107\) # (!\u_basic|u_clk_3|cnt\(21))))
-- \u_basic|u_clk_3|Add0~112COUT1_158\ = CARRY(((!\u_basic|u_clk_3|Add0~107COUT1_157\) # (!\u_basic|u_clk_3|cnt\(21))))

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
	datab => \u_basic|u_clk_3|cnt\(21),
	cin => \u_basic|u_clk_3|Add0~82\,
	cin0 => \u_basic|u_clk_3|Add0~107\,
	cin1 => \u_basic|u_clk_3|Add0~107COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~110_combout\,
	cout0 => \u_basic|u_clk_3|Add0~112\,
	cout1 => \u_basic|u_clk_3|Add0~112COUT1_158\);

-- Location: LC_X5_Y8_N8
\u_basic|u_clk_3|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(21) = DFFEAS((((\u_basic|u_clk_3|Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_3|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(21));

-- Location: LC_X4_Y8_N3
\u_basic|u_clk_3|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~100_combout\ = (\u_basic|u_clk_3|cnt\(22) $ ((!(!\u_basic|u_clk_3|Add0~82\ & \u_basic|u_clk_3|Add0~112\) # (\u_basic|u_clk_3|Add0~82\ & \u_basic|u_clk_3|Add0~112COUT1_158\))))
-- \u_basic|u_clk_3|Add0~102\ = CARRY(((\u_basic|u_clk_3|cnt\(22) & !\u_basic|u_clk_3|Add0~112\)))
-- \u_basic|u_clk_3|Add0~102COUT1_159\ = CARRY(((\u_basic|u_clk_3|cnt\(22) & !\u_basic|u_clk_3|Add0~112COUT1_158\)))

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
	datab => \u_basic|u_clk_3|cnt\(22),
	cin => \u_basic|u_clk_3|Add0~82\,
	cin0 => \u_basic|u_clk_3|Add0~112\,
	cin1 => \u_basic|u_clk_3|Add0~112COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~100_combout\,
	cout0 => \u_basic|u_clk_3|Add0~102\,
	cout1 => \u_basic|u_clk_3|Add0~102COUT1_159\);

-- Location: LC_X5_Y8_N9
\u_basic|u_clk_3|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(22) = DFFEAS(((\u_basic|u_clk_3|Add0~100_combout\ & ((!\u_basic|u_clk_3|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_clk_3|Add0~100_combout\,
	datad => \u_basic|u_clk_3|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(22));

-- Location: LC_X4_Y8_N4
\u_basic|u_clk_3|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~115_combout\ = (\u_basic|u_clk_3|cnt\(23) $ (((!\u_basic|u_clk_3|Add0~82\ & \u_basic|u_clk_3|Add0~102\) # (\u_basic|u_clk_3|Add0~82\ & \u_basic|u_clk_3|Add0~102COUT1_159\))))
-- \u_basic|u_clk_3|Add0~117\ = CARRY(((!\u_basic|u_clk_3|Add0~102COUT1_159\) # (!\u_basic|u_clk_3|cnt\(23))))

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
	datab => \u_basic|u_clk_3|cnt\(23),
	cin => \u_basic|u_clk_3|Add0~82\,
	cin0 => \u_basic|u_clk_3|Add0~102\,
	cin1 => \u_basic|u_clk_3|Add0~102COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~115_combout\,
	cout => \u_basic|u_clk_3|Add0~117\);

-- Location: LC_X5_Y8_N3
\u_basic|u_clk_3|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~115_combout\, , , VCC)

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
	datac => \u_basic|u_clk_3|Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(23));

-- Location: LC_X4_Y8_N5
\u_basic|u_clk_3|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~120_combout\ = (\u_basic|u_clk_3|cnt\(24) $ ((!\u_basic|u_clk_3|Add0~117\)))
-- \u_basic|u_clk_3|Add0~122\ = CARRY(((\u_basic|u_clk_3|cnt\(24) & !\u_basic|u_clk_3|Add0~117\)))
-- \u_basic|u_clk_3|Add0~122COUT1_160\ = CARRY(((\u_basic|u_clk_3|cnt\(24) & !\u_basic|u_clk_3|Add0~117\)))

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
	datab => \u_basic|u_clk_3|cnt\(24),
	cin => \u_basic|u_clk_3|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~120_combout\,
	cout0 => \u_basic|u_clk_3|Add0~122\,
	cout1 => \u_basic|u_clk_3|Add0~122COUT1_160\);

-- Location: LC_X4_Y8_N6
\u_basic|u_clk_3|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~125_combout\ = \u_basic|u_clk_3|cnt\(25) $ (((((!\u_basic|u_clk_3|Add0~117\ & \u_basic|u_clk_3|Add0~122\) # (\u_basic|u_clk_3|Add0~117\ & \u_basic|u_clk_3|Add0~122COUT1_160\)))))
-- \u_basic|u_clk_3|Add0~127\ = CARRY(((!\u_basic|u_clk_3|Add0~122\)) # (!\u_basic|u_clk_3|cnt\(25)))
-- \u_basic|u_clk_3|Add0~127COUT1_161\ = CARRY(((!\u_basic|u_clk_3|Add0~122COUT1_160\)) # (!\u_basic|u_clk_3|cnt\(25)))

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
	dataa => \u_basic|u_clk_3|cnt\(25),
	cin => \u_basic|u_clk_3|Add0~117\,
	cin0 => \u_basic|u_clk_3|Add0~122\,
	cin1 => \u_basic|u_clk_3|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~125_combout\,
	cout0 => \u_basic|u_clk_3|Add0~127\,
	cout1 => \u_basic|u_clk_3|Add0~127COUT1_161\);

-- Location: LC_X4_Y8_N7
\u_basic|u_clk_3|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~130_combout\ = (\u_basic|u_clk_3|cnt\(26) $ ((!(!\u_basic|u_clk_3|Add0~117\ & \u_basic|u_clk_3|Add0~127\) # (\u_basic|u_clk_3|Add0~117\ & \u_basic|u_clk_3|Add0~127COUT1_161\))))
-- \u_basic|u_clk_3|Add0~132\ = CARRY(((\u_basic|u_clk_3|cnt\(26) & !\u_basic|u_clk_3|Add0~127\)))
-- \u_basic|u_clk_3|Add0~132COUT1_162\ = CARRY(((\u_basic|u_clk_3|cnt\(26) & !\u_basic|u_clk_3|Add0~127COUT1_161\)))

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
	datab => \u_basic|u_clk_3|cnt\(26),
	cin => \u_basic|u_clk_3|Add0~117\,
	cin0 => \u_basic|u_clk_3|Add0~127\,
	cin1 => \u_basic|u_clk_3|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~130_combout\,
	cout0 => \u_basic|u_clk_3|Add0~132\,
	cout1 => \u_basic|u_clk_3|Add0~132COUT1_162\);

-- Location: LC_X4_Y8_N9
\u_basic|u_clk_3|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~130_combout\, , , VCC)

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
	datac => \u_basic|u_clk_3|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(26));

-- Location: LC_X4_Y8_N8
\u_basic|u_clk_3|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Add0~135_combout\ = (((!\u_basic|u_clk_3|Add0~117\ & \u_basic|u_clk_3|Add0~132\) # (\u_basic|u_clk_3|Add0~117\ & \u_basic|u_clk_3|Add0~132COUT1_162\) $ (\u_basic|u_clk_3|cnt\(27))))

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
	datad => \u_basic|u_clk_3|cnt\(27),
	cin => \u_basic|u_clk_3|Add0~117\,
	cin0 => \u_basic|u_clk_3|Add0~132\,
	cin1 => \u_basic|u_clk_3|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Add0~135_combout\);

-- Location: LC_X5_Y8_N7
\u_basic|u_clk_3|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~135_combout\, , , VCC)

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
	datac => \u_basic|u_clk_3|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(27));

-- Location: LC_X5_Y8_N4
\u_basic|u_clk_3|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~7\ = (!\u_basic|u_clk_3|cnt\(25) & (!\u_basic|u_clk_3|cnt\(27) & (!E7_cnt[24] & !\u_basic|u_clk_3|cnt\(26))))
-- \u_basic|u_clk_3|cnt\(24) = DFFEAS(\u_basic|u_clk_3|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~120_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_3|cnt\(25),
	datab => \u_basic|u_clk_3|cnt\(27),
	datac => \u_basic|u_clk_3|Add0~120_combout\,
	datad => \u_basic|u_clk_3|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~7\,
	regout => \u_basic|u_clk_3|cnt\(24));

-- Location: LC_X5_Y8_N6
\u_basic|u_clk_3|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_3|Add0~125_combout\, , , VCC)

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
	datac => \u_basic|u_clk_3|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|cnt\(25));

-- Location: LC_X1_Y9_N7
\u_basic|u_clk_3|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~4_combout\ = (\u_basic|u_clk_3|Equal0~2\ & (\u_basic|u_clk_3|Equal0~3\ & (\u_basic|u_clk_3|Equal0~1\ & \u_basic|u_clk_3|Equal0~0\)))

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
	dataa => \u_basic|u_clk_3|Equal0~2\,
	datab => \u_basic|u_clk_3|Equal0~3\,
	datac => \u_basic|u_clk_3|Equal0~1\,
	datad => \u_basic|u_clk_3|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~4_combout\);

-- Location: LC_X1_Y9_N8
\u_basic|u_clk_3|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|Equal0~8_combout\ = (\u_basic|u_clk_3|Equal0~7\ & (\u_basic|u_clk_3|Equal0~5\ & (\u_basic|u_clk_3|Equal0~6\ & \u_basic|u_clk_3|Equal0~4_combout\)))

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
	dataa => \u_basic|u_clk_3|Equal0~7\,
	datab => \u_basic|u_clk_3|Equal0~5\,
	datac => \u_basic|u_clk_3|Equal0~6\,
	datad => \u_basic|u_clk_3|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_3|Equal0~8_combout\);

-- Location: LC_X2_Y9_N4
\u_basic|u_clk_3|clkout\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_3|clkout~regout\ = DFFEAS(((\u_basic|u_clk_3|Equal0~8_combout\ $ (\u_basic|u_clk_3|clkout~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_basic|u_clk_3|Equal0~8_combout\,
	datad => \u_basic|u_clk_3|clkout~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_3|clkout~regout\);

-- Location: LC_X13_Y8_N8
\u_basic|u_debounce|key_sec[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_sec\(3) = DFFEAS((((\BTN~combout\(3)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , \u_basic|u_debounce|Equal0~5_combout\, , , , )

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
	datad => \BTN~combout\(3),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_debounce|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_sec\(3));

-- Location: LC_X14_Y8_N5
\u_basic|u_debounce|key_sec_pre[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|always0~2\ = (\u_basic|u_debounce|key_sec\(3) & (((!F1_key_sec_pre[3] & \u_basic|u_flag|flag\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|key_sec\(3),
	datac => \u_basic|u_debounce|key_sec\(3),
	datad => \u_basic|u_flag|flag\(4),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_flag|always0~2\,
	regout => \u_basic|u_debounce|key_sec_pre\(3));

-- Location: LC_X16_Y9_N8
\u_basic|u_flag|flag[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag\(3) = DFFEAS((\u_basic|u_flag|flag\(3)) # ((\u_basic|u_flag|always0~2\ & (!\u_basic|u_flag|always0~1\ & \u_basic|u_flag|flag[4]~0\))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_flag|flag\(3),
	datab => \u_basic|u_flag|always0~2\,
	datac => \u_basic|u_flag|always0~1\,
	datad => \u_basic|u_flag|flag[4]~0\,
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_flag|flag\(3));

-- Location: LC_X15_Y9_N8
\u_basic|u_sequencer_num_3|code[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_3|code\(0) = DFFEAS((((!\u_basic|u_sequencer_num_3|code\(0)))), \u_basic|u_clk_3|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(3), , , , )

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
	clk => \u_basic|u_clk_3|clkout~regout\,
	datad => \u_basic|u_sequencer_num_3|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_3|code\(0));

-- Location: LC_X6_Y9_N1
\u_basic|u_clk_2|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~35_combout\ = ((!\u_basic|u_clk_2|cnt\(0)))
-- \u_basic|u_clk_2|Add0~37\ = CARRY(((\u_basic|u_clk_2|cnt\(0))))
-- \u_basic|u_clk_2|Add0~37COUT1_141\ = CARRY(((\u_basic|u_clk_2|cnt\(0))))

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
	datab => \u_basic|u_clk_2|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~35_combout\,
	cout0 => \u_basic|u_clk_2|Add0~37\,
	cout1 => \u_basic|u_clk_2|Add0~37COUT1_141\);

-- Location: LC_X6_Y8_N0
\u_basic|u_clk_2|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(0) = DFFEAS(((!\u_basic|u_clk_2|Equal0~8_combout\ & ((\u_basic|u_clk_2|Add0~35_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_2|Equal0~8_combout\,
	datad => \u_basic|u_clk_2|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(0));

-- Location: LC_X6_Y9_N2
\u_basic|u_clk_2|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~30_combout\ = \u_basic|u_clk_2|cnt\(1) $ ((((\u_basic|u_clk_2|Add0~37\))))
-- \u_basic|u_clk_2|Add0~32\ = CARRY(((!\u_basic|u_clk_2|Add0~37\)) # (!\u_basic|u_clk_2|cnt\(1)))
-- \u_basic|u_clk_2|Add0~32COUT1_142\ = CARRY(((!\u_basic|u_clk_2|Add0~37COUT1_141\)) # (!\u_basic|u_clk_2|cnt\(1)))

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
	dataa => \u_basic|u_clk_2|cnt\(1),
	cin0 => \u_basic|u_clk_2|Add0~37\,
	cin1 => \u_basic|u_clk_2|Add0~37COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~30_combout\,
	cout0 => \u_basic|u_clk_2|Add0~32\,
	cout1 => \u_basic|u_clk_2|Add0~32COUT1_142\);

-- Location: LC_X5_Y9_N5
\u_basic|u_clk_2|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~30_combout\, , , VCC)

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
	datac => \u_basic|u_clk_2|Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(1));

-- Location: LC_X6_Y9_N3
\u_basic|u_clk_2|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~25_combout\ = (\u_basic|u_clk_2|cnt\(2) $ ((!\u_basic|u_clk_2|Add0~32\)))
-- \u_basic|u_clk_2|Add0~27\ = CARRY(((\u_basic|u_clk_2|cnt\(2) & !\u_basic|u_clk_2|Add0~32\)))
-- \u_basic|u_clk_2|Add0~27COUT1_143\ = CARRY(((\u_basic|u_clk_2|cnt\(2) & !\u_basic|u_clk_2|Add0~32COUT1_142\)))

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
	datab => \u_basic|u_clk_2|cnt\(2),
	cin0 => \u_basic|u_clk_2|Add0~32\,
	cin1 => \u_basic|u_clk_2|Add0~32COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~25_combout\,
	cout0 => \u_basic|u_clk_2|Add0~27\,
	cout1 => \u_basic|u_clk_2|Add0~27COUT1_143\);

-- Location: LC_X5_Y9_N6
\u_basic|u_clk_2|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~25_combout\, , , VCC)

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
	datac => \u_basic|u_clk_2|Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(2));

-- Location: LC_X6_Y9_N4
\u_basic|u_clk_2|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~20_combout\ = \u_basic|u_clk_2|cnt\(3) $ ((((\u_basic|u_clk_2|Add0~27\))))
-- \u_basic|u_clk_2|Add0~22\ = CARRY(((!\u_basic|u_clk_2|Add0~27COUT1_143\)) # (!\u_basic|u_clk_2|cnt\(3)))

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
	dataa => \u_basic|u_clk_2|cnt\(3),
	cin0 => \u_basic|u_clk_2|Add0~27\,
	cin1 => \u_basic|u_clk_2|Add0~27COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~20_combout\,
	cout => \u_basic|u_clk_2|Add0~22\);

-- Location: LC_X6_Y8_N7
\u_basic|u_clk_2|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~1\ = (!\u_basic|u_clk_2|cnt\(1) & (!\u_basic|u_clk_2|cnt\(0) & (!E8_cnt[3] & !\u_basic|u_clk_2|cnt\(2))))
-- \u_basic|u_clk_2|cnt\(3) = DFFEAS(\u_basic|u_clk_2|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~20_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_2|cnt\(1),
	datab => \u_basic|u_clk_2|cnt\(0),
	datac => \u_basic|u_clk_2|Add0~20_combout\,
	datad => \u_basic|u_clk_2|cnt\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~1\,
	regout => \u_basic|u_clk_2|cnt\(3));

-- Location: LC_X6_Y9_N5
\u_basic|u_clk_2|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~15_combout\ = (\u_basic|u_clk_2|cnt\(4) $ ((!\u_basic|u_clk_2|Add0~22\)))
-- \u_basic|u_clk_2|Add0~17\ = CARRY(((\u_basic|u_clk_2|cnt\(4) & !\u_basic|u_clk_2|Add0~22\)))
-- \u_basic|u_clk_2|Add0~17COUT1_144\ = CARRY(((\u_basic|u_clk_2|cnt\(4) & !\u_basic|u_clk_2|Add0~22\)))

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
	datab => \u_basic|u_clk_2|cnt\(4),
	cin => \u_basic|u_clk_2|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~15_combout\,
	cout0 => \u_basic|u_clk_2|Add0~17\,
	cout1 => \u_basic|u_clk_2|Add0~17COUT1_144\);

-- Location: LC_X5_Y9_N2
\u_basic|u_clk_2|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~15_combout\, , , VCC)

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
	datac => \u_basic|u_clk_2|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(4));

-- Location: LC_X6_Y9_N6
\u_basic|u_clk_2|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~5_combout\ = (\u_basic|u_clk_2|cnt\(5) $ (((!\u_basic|u_clk_2|Add0~22\ & \u_basic|u_clk_2|Add0~17\) # (\u_basic|u_clk_2|Add0~22\ & \u_basic|u_clk_2|Add0~17COUT1_144\))))
-- \u_basic|u_clk_2|Add0~7\ = CARRY(((!\u_basic|u_clk_2|Add0~17\) # (!\u_basic|u_clk_2|cnt\(5))))
-- \u_basic|u_clk_2|Add0~7COUT1_145\ = CARRY(((!\u_basic|u_clk_2|Add0~17COUT1_144\) # (!\u_basic|u_clk_2|cnt\(5))))

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
	datab => \u_basic|u_clk_2|cnt\(5),
	cin => \u_basic|u_clk_2|Add0~22\,
	cin0 => \u_basic|u_clk_2|Add0~17\,
	cin1 => \u_basic|u_clk_2|Add0~17COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~5_combout\,
	cout0 => \u_basic|u_clk_2|Add0~7\,
	cout1 => \u_basic|u_clk_2|Add0~7COUT1_145\);

-- Location: LC_X6_Y8_N8
\u_basic|u_clk_2|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(5) = DFFEAS(((!\u_basic|u_clk_2|Equal0~8_combout\ & ((\u_basic|u_clk_2|Add0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_2|Equal0~8_combout\,
	datad => \u_basic|u_clk_2|Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(5));

-- Location: LC_X6_Y9_N7
\u_basic|u_clk_2|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~10_combout\ = (\u_basic|u_clk_2|cnt\(6) $ ((!(!\u_basic|u_clk_2|Add0~22\ & \u_basic|u_clk_2|Add0~7\) # (\u_basic|u_clk_2|Add0~22\ & \u_basic|u_clk_2|Add0~7COUT1_145\))))
-- \u_basic|u_clk_2|Add0~12\ = CARRY(((\u_basic|u_clk_2|cnt\(6) & !\u_basic|u_clk_2|Add0~7\)))
-- \u_basic|u_clk_2|Add0~12COUT1_146\ = CARRY(((\u_basic|u_clk_2|cnt\(6) & !\u_basic|u_clk_2|Add0~7COUT1_145\)))

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
	datab => \u_basic|u_clk_2|cnt\(6),
	cin => \u_basic|u_clk_2|Add0~22\,
	cin0 => \u_basic|u_clk_2|Add0~7\,
	cin1 => \u_basic|u_clk_2|Add0~7COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~10_combout\,
	cout0 => \u_basic|u_clk_2|Add0~12\,
	cout1 => \u_basic|u_clk_2|Add0~12COUT1_146\);

-- Location: LC_X6_Y8_N1
\u_basic|u_clk_2|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~0\ = (\u_basic|u_clk_2|cnt\(5) & (\u_basic|u_clk_2|cnt\(7) & (!E8_cnt[6] & !\u_basic|u_clk_2|cnt\(4))))
-- \u_basic|u_clk_2|cnt\(6) = DFFEAS(\u_basic|u_clk_2|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~10_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_2|cnt\(5),
	datab => \u_basic|u_clk_2|cnt\(7),
	datac => \u_basic|u_clk_2|Add0~10_combout\,
	datad => \u_basic|u_clk_2|cnt\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~0\,
	regout => \u_basic|u_clk_2|cnt\(6));

-- Location: LC_X6_Y9_N8
\u_basic|u_clk_2|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~0_combout\ = \u_basic|u_clk_2|cnt\(7) $ (((((!\u_basic|u_clk_2|Add0~22\ & \u_basic|u_clk_2|Add0~12\) # (\u_basic|u_clk_2|Add0~22\ & \u_basic|u_clk_2|Add0~12COUT1_146\)))))
-- \u_basic|u_clk_2|Add0~2\ = CARRY(((!\u_basic|u_clk_2|Add0~12\)) # (!\u_basic|u_clk_2|cnt\(7)))
-- \u_basic|u_clk_2|Add0~2COUT1_147\ = CARRY(((!\u_basic|u_clk_2|Add0~12COUT1_146\)) # (!\u_basic|u_clk_2|cnt\(7)))

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
	dataa => \u_basic|u_clk_2|cnt\(7),
	cin => \u_basic|u_clk_2|Add0~22\,
	cin0 => \u_basic|u_clk_2|Add0~12\,
	cin1 => \u_basic|u_clk_2|Add0~12COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~0_combout\,
	cout0 => \u_basic|u_clk_2|Add0~2\,
	cout1 => \u_basic|u_clk_2|Add0~2COUT1_147\);

-- Location: LC_X6_Y8_N2
\u_basic|u_clk_2|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(7) = DFFEAS(((!\u_basic|u_clk_2|Equal0~8_combout\ & ((\u_basic|u_clk_2|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_2|Equal0~8_combout\,
	datad => \u_basic|u_clk_2|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(7));

-- Location: LC_X6_Y9_N9
\u_basic|u_clk_2|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~40_combout\ = (\u_basic|u_clk_2|cnt\(8) $ ((!(!\u_basic|u_clk_2|Add0~22\ & \u_basic|u_clk_2|Add0~2\) # (\u_basic|u_clk_2|Add0~22\ & \u_basic|u_clk_2|Add0~2COUT1_147\))))
-- \u_basic|u_clk_2|Add0~42\ = CARRY(((\u_basic|u_clk_2|cnt\(8) & !\u_basic|u_clk_2|Add0~2COUT1_147\)))

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
	datab => \u_basic|u_clk_2|cnt\(8),
	cin => \u_basic|u_clk_2|Add0~22\,
	cin0 => \u_basic|u_clk_2|Add0~2\,
	cin1 => \u_basic|u_clk_2|Add0~2COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~40_combout\,
	cout => \u_basic|u_clk_2|Add0~42\);

-- Location: LC_X6_Y8_N5
\u_basic|u_clk_2|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(8) = DFFEAS((((\u_basic|u_clk_2|Add0~40_combout\ & !\u_basic|u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_2|Add0~40_combout\,
	datad => \u_basic|u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(8));

-- Location: LC_X7_Y9_N5
\u_basic|u_clk_2|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~70_combout\ = \u_basic|u_clk_2|cnt\(14) $ ((((!\u_basic|u_clk_2|Add0~62\))))
-- \u_basic|u_clk_2|Add0~72\ = CARRY((\u_basic|u_clk_2|cnt\(14) & ((!\u_basic|u_clk_2|Add0~62\))))
-- \u_basic|u_clk_2|Add0~72COUT1_152\ = CARRY((\u_basic|u_clk_2|cnt\(14) & ((!\u_basic|u_clk_2|Add0~62\))))

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
	dataa => \u_basic|u_clk_2|cnt\(14),
	cin => \u_basic|u_clk_2|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~70_combout\,
	cout0 => \u_basic|u_clk_2|Add0~72\,
	cout1 => \u_basic|u_clk_2|Add0~72COUT1_152\);

-- Location: LC_X7_Y8_N6
\u_basic|u_clk_2|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(14) = DFFEAS((((\u_basic|u_clk_2|Add0~70_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_2|Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(14));

-- Location: LC_X7_Y9_N0
\u_basic|u_clk_2|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~50_combout\ = \u_basic|u_clk_2|cnt\(9) $ ((((\u_basic|u_clk_2|Add0~42\))))
-- \u_basic|u_clk_2|Add0~52\ = CARRY(((!\u_basic|u_clk_2|Add0~42\)) # (!\u_basic|u_clk_2|cnt\(9)))
-- \u_basic|u_clk_2|Add0~52COUT1_148\ = CARRY(((!\u_basic|u_clk_2|Add0~42\)) # (!\u_basic|u_clk_2|cnt\(9)))

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
	dataa => \u_basic|u_clk_2|cnt\(9),
	cin => \u_basic|u_clk_2|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~50_combout\,
	cout0 => \u_basic|u_clk_2|Add0~52\,
	cout1 => \u_basic|u_clk_2|Add0~52COUT1_148\);

-- Location: LC_X6_Y8_N4
\u_basic|u_clk_2|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~2\ = (\u_basic|u_clk_2|cnt\(8) & (\u_basic|u_clk_2|cnt\(10) & (!E8_cnt[9] & !\u_basic|u_clk_2|cnt\(11))))
-- \u_basic|u_clk_2|cnt\(9) = DFFEAS(\u_basic|u_clk_2|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~50_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_2|cnt\(8),
	datab => \u_basic|u_clk_2|cnt\(10),
	datac => \u_basic|u_clk_2|Add0~50_combout\,
	datad => \u_basic|u_clk_2|cnt\(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~2\,
	regout => \u_basic|u_clk_2|cnt\(9));

-- Location: LC_X7_Y9_N1
\u_basic|u_clk_2|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~45_combout\ = (\u_basic|u_clk_2|cnt\(10) $ ((!(!\u_basic|u_clk_2|Add0~42\ & \u_basic|u_clk_2|Add0~52\) # (\u_basic|u_clk_2|Add0~42\ & \u_basic|u_clk_2|Add0~52COUT1_148\))))
-- \u_basic|u_clk_2|Add0~47\ = CARRY(((\u_basic|u_clk_2|cnt\(10) & !\u_basic|u_clk_2|Add0~52\)))
-- \u_basic|u_clk_2|Add0~47COUT1_149\ = CARRY(((\u_basic|u_clk_2|cnt\(10) & !\u_basic|u_clk_2|Add0~52COUT1_148\)))

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
	datab => \u_basic|u_clk_2|cnt\(10),
	cin => \u_basic|u_clk_2|Add0~42\,
	cin0 => \u_basic|u_clk_2|Add0~52\,
	cin1 => \u_basic|u_clk_2|Add0~52COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~45_combout\,
	cout0 => \u_basic|u_clk_2|Add0~47\,
	cout1 => \u_basic|u_clk_2|Add0~47COUT1_149\);

-- Location: LC_X6_Y8_N6
\u_basic|u_clk_2|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(10) = DFFEAS((((\u_basic|u_clk_2|Add0~45_combout\ & !\u_basic|u_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_2|Add0~45_combout\,
	datad => \u_basic|u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(10));

-- Location: LC_X7_Y9_N2
\u_basic|u_clk_2|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~55_combout\ = \u_basic|u_clk_2|cnt\(11) $ (((((!\u_basic|u_clk_2|Add0~42\ & \u_basic|u_clk_2|Add0~47\) # (\u_basic|u_clk_2|Add0~42\ & \u_basic|u_clk_2|Add0~47COUT1_149\)))))
-- \u_basic|u_clk_2|Add0~57\ = CARRY(((!\u_basic|u_clk_2|Add0~47\)) # (!\u_basic|u_clk_2|cnt\(11)))
-- \u_basic|u_clk_2|Add0~57COUT1_150\ = CARRY(((!\u_basic|u_clk_2|Add0~47COUT1_149\)) # (!\u_basic|u_clk_2|cnt\(11)))

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
	dataa => \u_basic|u_clk_2|cnt\(11),
	cin => \u_basic|u_clk_2|Add0~42\,
	cin0 => \u_basic|u_clk_2|Add0~47\,
	cin1 => \u_basic|u_clk_2|Add0~47COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~55_combout\,
	cout0 => \u_basic|u_clk_2|Add0~57\,
	cout1 => \u_basic|u_clk_2|Add0~57COUT1_150\);

-- Location: LC_X6_Y9_N0
\u_basic|u_clk_2|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~55_combout\, , , VCC)

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
	datac => \u_basic|u_clk_2|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(11));

-- Location: LC_X7_Y9_N3
\u_basic|u_clk_2|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~65_combout\ = (\u_basic|u_clk_2|cnt\(12) $ ((!(!\u_basic|u_clk_2|Add0~42\ & \u_basic|u_clk_2|Add0~57\) # (\u_basic|u_clk_2|Add0~42\ & \u_basic|u_clk_2|Add0~57COUT1_150\))))
-- \u_basic|u_clk_2|Add0~67\ = CARRY(((\u_basic|u_clk_2|cnt\(12) & !\u_basic|u_clk_2|Add0~57\)))
-- \u_basic|u_clk_2|Add0~67COUT1_151\ = CARRY(((\u_basic|u_clk_2|cnt\(12) & !\u_basic|u_clk_2|Add0~57COUT1_150\)))

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
	datab => \u_basic|u_clk_2|cnt\(12),
	cin => \u_basic|u_clk_2|Add0~42\,
	cin0 => \u_basic|u_clk_2|Add0~57\,
	cin1 => \u_basic|u_clk_2|Add0~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~65_combout\,
	cout0 => \u_basic|u_clk_2|Add0~67\,
	cout1 => \u_basic|u_clk_2|Add0~67COUT1_151\);

-- Location: LC_X7_Y9_N6
\u_basic|u_clk_2|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~75_combout\ = (\u_basic|u_clk_2|cnt\(15) $ (((!\u_basic|u_clk_2|Add0~62\ & \u_basic|u_clk_2|Add0~72\) # (\u_basic|u_clk_2|Add0~62\ & \u_basic|u_clk_2|Add0~72COUT1_152\))))
-- \u_basic|u_clk_2|Add0~77\ = CARRY(((!\u_basic|u_clk_2|Add0~72\) # (!\u_basic|u_clk_2|cnt\(15))))
-- \u_basic|u_clk_2|Add0~77COUT1_153\ = CARRY(((!\u_basic|u_clk_2|Add0~72COUT1_152\) # (!\u_basic|u_clk_2|cnt\(15))))

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
	datab => \u_basic|u_clk_2|cnt\(15),
	cin => \u_basic|u_clk_2|Add0~62\,
	cin0 => \u_basic|u_clk_2|Add0~72\,
	cin1 => \u_basic|u_clk_2|Add0~72COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~75_combout\,
	cout0 => \u_basic|u_clk_2|Add0~77\,
	cout1 => \u_basic|u_clk_2|Add0~77COUT1_153\);

-- Location: LC_X7_Y8_N1
\u_basic|u_clk_2|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(15) = DFFEAS((((\u_basic|u_clk_2|Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_2|Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(15));

-- Location: LC_X7_Y8_N3
\u_basic|u_clk_2|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~3\ = (\u_basic|u_clk_2|cnt\(13) & (!\u_basic|u_clk_2|cnt\(14) & (!E8_cnt[12] & !\u_basic|u_clk_2|cnt\(15))))
-- \u_basic|u_clk_2|cnt\(12) = DFFEAS(\u_basic|u_clk_2|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~65_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_2|cnt\(13),
	datab => \u_basic|u_clk_2|cnt\(14),
	datac => \u_basic|u_clk_2|Add0~65_combout\,
	datad => \u_basic|u_clk_2|cnt\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~3\,
	regout => \u_basic|u_clk_2|cnt\(12));

-- Location: LC_X7_Y9_N4
\u_basic|u_clk_2|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~60_combout\ = (\u_basic|u_clk_2|cnt\(13) $ (((!\u_basic|u_clk_2|Add0~42\ & \u_basic|u_clk_2|Add0~67\) # (\u_basic|u_clk_2|Add0~42\ & \u_basic|u_clk_2|Add0~67COUT1_151\))))
-- \u_basic|u_clk_2|Add0~62\ = CARRY(((!\u_basic|u_clk_2|Add0~67COUT1_151\) # (!\u_basic|u_clk_2|cnt\(13))))

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
	datab => \u_basic|u_clk_2|cnt\(13),
	cin => \u_basic|u_clk_2|Add0~42\,
	cin0 => \u_basic|u_clk_2|Add0~67\,
	cin1 => \u_basic|u_clk_2|Add0~67COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~60_combout\,
	cout => \u_basic|u_clk_2|Add0~62\);

-- Location: LC_X7_Y8_N5
\u_basic|u_clk_2|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(13) = DFFEAS((((!\u_basic|u_clk_2|Equal0~8_combout\ & \u_basic|u_clk_2|Add0~60_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_2|Equal0~8_combout\,
	datad => \u_basic|u_clk_2|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(13));

-- Location: LC_X7_Y9_N7
\u_basic|u_clk_2|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~90_combout\ = (\u_basic|u_clk_2|cnt\(16) $ ((!(!\u_basic|u_clk_2|Add0~62\ & \u_basic|u_clk_2|Add0~77\) # (\u_basic|u_clk_2|Add0~62\ & \u_basic|u_clk_2|Add0~77COUT1_153\))))
-- \u_basic|u_clk_2|Add0~92\ = CARRY(((\u_basic|u_clk_2|cnt\(16) & !\u_basic|u_clk_2|Add0~77\)))
-- \u_basic|u_clk_2|Add0~92COUT1_154\ = CARRY(((\u_basic|u_clk_2|cnt\(16) & !\u_basic|u_clk_2|Add0~77COUT1_153\)))

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
	datab => \u_basic|u_clk_2|cnt\(16),
	cin => \u_basic|u_clk_2|Add0~62\,
	cin0 => \u_basic|u_clk_2|Add0~77\,
	cin1 => \u_basic|u_clk_2|Add0~77COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~90_combout\,
	cout0 => \u_basic|u_clk_2|Add0~92\,
	cout1 => \u_basic|u_clk_2|Add0~92COUT1_154\);

-- Location: LC_X7_Y9_N8
\u_basic|u_clk_2|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~80_combout\ = (\u_basic|u_clk_2|cnt\(17) $ (((!\u_basic|u_clk_2|Add0~62\ & \u_basic|u_clk_2|Add0~92\) # (\u_basic|u_clk_2|Add0~62\ & \u_basic|u_clk_2|Add0~92COUT1_154\))))
-- \u_basic|u_clk_2|Add0~82\ = CARRY(((!\u_basic|u_clk_2|Add0~92\) # (!\u_basic|u_clk_2|cnt\(17))))
-- \u_basic|u_clk_2|Add0~82COUT1_155\ = CARRY(((!\u_basic|u_clk_2|Add0~92COUT1_154\) # (!\u_basic|u_clk_2|cnt\(17))))

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
	datab => \u_basic|u_clk_2|cnt\(17),
	cin => \u_basic|u_clk_2|Add0~62\,
	cin0 => \u_basic|u_clk_2|Add0~92\,
	cin1 => \u_basic|u_clk_2|Add0~92COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~80_combout\,
	cout0 => \u_basic|u_clk_2|Add0~82\,
	cout1 => \u_basic|u_clk_2|Add0~82COUT1_155\);

-- Location: LC_X7_Y9_N9
\u_basic|u_clk_2|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~85_combout\ = \u_basic|u_clk_2|cnt\(18) $ ((((!(!\u_basic|u_clk_2|Add0~62\ & \u_basic|u_clk_2|Add0~82\) # (\u_basic|u_clk_2|Add0~62\ & \u_basic|u_clk_2|Add0~82COUT1_155\)))))
-- \u_basic|u_clk_2|Add0~87\ = CARRY((\u_basic|u_clk_2|cnt\(18) & ((!\u_basic|u_clk_2|Add0~82COUT1_155\))))

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
	dataa => \u_basic|u_clk_2|cnt\(18),
	cin => \u_basic|u_clk_2|Add0~62\,
	cin0 => \u_basic|u_clk_2|Add0~82\,
	cin1 => \u_basic|u_clk_2|Add0~82COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~85_combout\,
	cout => \u_basic|u_clk_2|Add0~87\);

-- Location: LC_X7_Y8_N0
\u_basic|u_clk_2|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(18) = DFFEAS((!\u_basic|u_clk_2|Equal0~8_combout\ & (((\u_basic|u_clk_2|Add0~85_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_2|Equal0~8_combout\,
	datac => \u_basic|u_clk_2|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(18));

-- Location: LC_X8_Y9_N0
\u_basic|u_clk_2|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~95_combout\ = (\u_basic|u_clk_2|cnt\(19) $ ((\u_basic|u_clk_2|Add0~87\)))
-- \u_basic|u_clk_2|Add0~97\ = CARRY(((!\u_basic|u_clk_2|Add0~87\) # (!\u_basic|u_clk_2|cnt\(19))))
-- \u_basic|u_clk_2|Add0~97COUT1_156\ = CARRY(((!\u_basic|u_clk_2|Add0~87\) # (!\u_basic|u_clk_2|cnt\(19))))

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
	datab => \u_basic|u_clk_2|cnt\(19),
	cin => \u_basic|u_clk_2|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~95_combout\,
	cout0 => \u_basic|u_clk_2|Add0~97\,
	cout1 => \u_basic|u_clk_2|Add0~97COUT1_156\);

-- Location: LC_X8_Y8_N5
\u_basic|u_clk_2|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~95_combout\, , , VCC)

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
	datac => \u_basic|u_clk_2|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(19));

-- Location: LC_X7_Y8_N8
\u_basic|u_clk_2|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~5\ = (\u_basic|u_clk_2|cnt\(17) & (\u_basic|u_clk_2|cnt\(18) & (!E8_cnt[16] & !\u_basic|u_clk_2|cnt\(19))))
-- \u_basic|u_clk_2|cnt\(16) = DFFEAS(\u_basic|u_clk_2|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~90_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_2|cnt\(17),
	datab => \u_basic|u_clk_2|cnt\(18),
	datac => \u_basic|u_clk_2|Add0~90_combout\,
	datad => \u_basic|u_clk_2|cnt\(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~5\,
	regout => \u_basic|u_clk_2|cnt\(16));

-- Location: LC_X7_Y8_N4
\u_basic|u_clk_2|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(17) = DFFEAS((((!\u_basic|u_clk_2|Equal0~8_combout\ & \u_basic|u_clk_2|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_2|Equal0~8_combout\,
	datad => \u_basic|u_clk_2|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(17));

-- Location: LC_X8_Y9_N1
\u_basic|u_clk_2|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~105_combout\ = (\u_basic|u_clk_2|cnt\(20) $ ((!(!\u_basic|u_clk_2|Add0~87\ & \u_basic|u_clk_2|Add0~97\) # (\u_basic|u_clk_2|Add0~87\ & \u_basic|u_clk_2|Add0~97COUT1_156\))))
-- \u_basic|u_clk_2|Add0~107\ = CARRY(((\u_basic|u_clk_2|cnt\(20) & !\u_basic|u_clk_2|Add0~97\)))
-- \u_basic|u_clk_2|Add0~107COUT1_157\ = CARRY(((\u_basic|u_clk_2|cnt\(20) & !\u_basic|u_clk_2|Add0~97COUT1_156\)))

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
	datab => \u_basic|u_clk_2|cnt\(20),
	cin => \u_basic|u_clk_2|Add0~87\,
	cin0 => \u_basic|u_clk_2|Add0~97\,
	cin1 => \u_basic|u_clk_2|Add0~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~105_combout\,
	cout0 => \u_basic|u_clk_2|Add0~107\,
	cout1 => \u_basic|u_clk_2|Add0~107COUT1_157\);

-- Location: LC_X7_Y8_N2
\u_basic|u_clk_2|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~6\ = (!\u_basic|u_clk_2|cnt\(22) & (\u_basic|u_clk_2|cnt\(21) & (!E8_cnt[20] & !\u_basic|u_clk_2|cnt\(23))))
-- \u_basic|u_clk_2|cnt\(20) = DFFEAS(\u_basic|u_clk_2|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~105_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_2|cnt\(22),
	datab => \u_basic|u_clk_2|cnt\(21),
	datac => \u_basic|u_clk_2|Add0~105_combout\,
	datad => \u_basic|u_clk_2|cnt\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~6\,
	regout => \u_basic|u_clk_2|cnt\(20));

-- Location: LC_X8_Y9_N2
\u_basic|u_clk_2|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~100_combout\ = (\u_basic|u_clk_2|cnt\(21) $ (((!\u_basic|u_clk_2|Add0~87\ & \u_basic|u_clk_2|Add0~107\) # (\u_basic|u_clk_2|Add0~87\ & \u_basic|u_clk_2|Add0~107COUT1_157\))))
-- \u_basic|u_clk_2|Add0~102\ = CARRY(((!\u_basic|u_clk_2|Add0~107\) # (!\u_basic|u_clk_2|cnt\(21))))
-- \u_basic|u_clk_2|Add0~102COUT1_158\ = CARRY(((!\u_basic|u_clk_2|Add0~107COUT1_157\) # (!\u_basic|u_clk_2|cnt\(21))))

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
	datab => \u_basic|u_clk_2|cnt\(21),
	cin => \u_basic|u_clk_2|Add0~87\,
	cin0 => \u_basic|u_clk_2|Add0~107\,
	cin1 => \u_basic|u_clk_2|Add0~107COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~100_combout\,
	cout0 => \u_basic|u_clk_2|Add0~102\,
	cout1 => \u_basic|u_clk_2|Add0~102COUT1_158\);

-- Location: LC_X7_Y8_N7
\u_basic|u_clk_2|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(21) = DFFEAS((((!\u_basic|u_clk_2|Equal0~8_combout\ & \u_basic|u_clk_2|Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_2|Equal0~8_combout\,
	datad => \u_basic|u_clk_2|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(21));

-- Location: LC_X8_Y9_N3
\u_basic|u_clk_2|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~110_combout\ = (\u_basic|u_clk_2|cnt\(22) $ ((!(!\u_basic|u_clk_2|Add0~87\ & \u_basic|u_clk_2|Add0~102\) # (\u_basic|u_clk_2|Add0~87\ & \u_basic|u_clk_2|Add0~102COUT1_158\))))
-- \u_basic|u_clk_2|Add0~112\ = CARRY(((\u_basic|u_clk_2|cnt\(22) & !\u_basic|u_clk_2|Add0~102\)))
-- \u_basic|u_clk_2|Add0~112COUT1_159\ = CARRY(((\u_basic|u_clk_2|cnt\(22) & !\u_basic|u_clk_2|Add0~102COUT1_158\)))

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
	datab => \u_basic|u_clk_2|cnt\(22),
	cin => \u_basic|u_clk_2|Add0~87\,
	cin0 => \u_basic|u_clk_2|Add0~102\,
	cin1 => \u_basic|u_clk_2|Add0~102COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~110_combout\,
	cout0 => \u_basic|u_clk_2|Add0~112\,
	cout1 => \u_basic|u_clk_2|Add0~112COUT1_159\);

-- Location: LC_X8_Y8_N3
\u_basic|u_clk_2|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(22) = DFFEAS((((\u_basic|u_clk_2|Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_2|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(22));

-- Location: LC_X8_Y9_N4
\u_basic|u_clk_2|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~115_combout\ = (\u_basic|u_clk_2|cnt\(23) $ (((!\u_basic|u_clk_2|Add0~87\ & \u_basic|u_clk_2|Add0~112\) # (\u_basic|u_clk_2|Add0~87\ & \u_basic|u_clk_2|Add0~112COUT1_159\))))
-- \u_basic|u_clk_2|Add0~117\ = CARRY(((!\u_basic|u_clk_2|Add0~112COUT1_159\) # (!\u_basic|u_clk_2|cnt\(23))))

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
	datab => \u_basic|u_clk_2|cnt\(23),
	cin => \u_basic|u_clk_2|Add0~87\,
	cin0 => \u_basic|u_clk_2|Add0~112\,
	cin1 => \u_basic|u_clk_2|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~115_combout\,
	cout => \u_basic|u_clk_2|Add0~117\);

-- Location: LC_X9_Y9_N9
\u_basic|u_clk_2|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(23) = DFFEAS((((\u_basic|u_clk_2|Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_2|Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(23));

-- Location: LC_X8_Y9_N5
\u_basic|u_clk_2|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~120_combout\ = (\u_basic|u_clk_2|cnt\(24) $ ((!\u_basic|u_clk_2|Add0~117\)))
-- \u_basic|u_clk_2|Add0~122\ = CARRY(((\u_basic|u_clk_2|cnt\(24) & !\u_basic|u_clk_2|Add0~117\)))
-- \u_basic|u_clk_2|Add0~122COUT1_160\ = CARRY(((\u_basic|u_clk_2|cnt\(24) & !\u_basic|u_clk_2|Add0~117\)))

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
	datab => \u_basic|u_clk_2|cnt\(24),
	cin => \u_basic|u_clk_2|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~120_combout\,
	cout0 => \u_basic|u_clk_2|Add0~122\,
	cout1 => \u_basic|u_clk_2|Add0~122COUT1_160\);

-- Location: LC_X8_Y9_N6
\u_basic|u_clk_2|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~125_combout\ = \u_basic|u_clk_2|cnt\(25) $ (((((!\u_basic|u_clk_2|Add0~117\ & \u_basic|u_clk_2|Add0~122\) # (\u_basic|u_clk_2|Add0~117\ & \u_basic|u_clk_2|Add0~122COUT1_160\)))))
-- \u_basic|u_clk_2|Add0~127\ = CARRY(((!\u_basic|u_clk_2|Add0~122\)) # (!\u_basic|u_clk_2|cnt\(25)))
-- \u_basic|u_clk_2|Add0~127COUT1_161\ = CARRY(((!\u_basic|u_clk_2|Add0~122COUT1_160\)) # (!\u_basic|u_clk_2|cnt\(25)))

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
	dataa => \u_basic|u_clk_2|cnt\(25),
	cin => \u_basic|u_clk_2|Add0~117\,
	cin0 => \u_basic|u_clk_2|Add0~122\,
	cin1 => \u_basic|u_clk_2|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~125_combout\,
	cout0 => \u_basic|u_clk_2|Add0~127\,
	cout1 => \u_basic|u_clk_2|Add0~127COUT1_161\);

-- Location: LC_X8_Y9_N7
\u_basic|u_clk_2|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~130_combout\ = (\u_basic|u_clk_2|cnt\(26) $ ((!(!\u_basic|u_clk_2|Add0~117\ & \u_basic|u_clk_2|Add0~127\) # (\u_basic|u_clk_2|Add0~117\ & \u_basic|u_clk_2|Add0~127COUT1_161\))))
-- \u_basic|u_clk_2|Add0~132\ = CARRY(((\u_basic|u_clk_2|cnt\(26) & !\u_basic|u_clk_2|Add0~127\)))
-- \u_basic|u_clk_2|Add0~132COUT1_162\ = CARRY(((\u_basic|u_clk_2|cnt\(26) & !\u_basic|u_clk_2|Add0~127COUT1_161\)))

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
	datab => \u_basic|u_clk_2|cnt\(26),
	cin => \u_basic|u_clk_2|Add0~117\,
	cin0 => \u_basic|u_clk_2|Add0~127\,
	cin1 => \u_basic|u_clk_2|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~130_combout\,
	cout0 => \u_basic|u_clk_2|Add0~132\,
	cout1 => \u_basic|u_clk_2|Add0~132COUT1_162\);

-- Location: LC_X8_Y9_N9
\u_basic|u_clk_2|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~130_combout\, , , VCC)

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
	datac => \u_basic|u_clk_2|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(26));

-- Location: LC_X8_Y9_N8
\u_basic|u_clk_2|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Add0~135_combout\ = (((!\u_basic|u_clk_2|Add0~117\ & \u_basic|u_clk_2|Add0~132\) # (\u_basic|u_clk_2|Add0~117\ & \u_basic|u_clk_2|Add0~132COUT1_162\) $ (\u_basic|u_clk_2|cnt\(27))))

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
	datad => \u_basic|u_clk_2|cnt\(27),
	cin => \u_basic|u_clk_2|Add0~117\,
	cin0 => \u_basic|u_clk_2|Add0~132\,
	cin1 => \u_basic|u_clk_2|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Add0~135_combout\);

-- Location: LC_X9_Y9_N2
\u_basic|u_clk_2|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~135_combout\, , , VCC)

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
	datac => \u_basic|u_clk_2|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(27));

-- Location: LC_X7_Y8_N9
\u_basic|u_clk_2|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~7\ = (!\u_basic|u_clk_2|cnt\(25) & (!\u_basic|u_clk_2|cnt\(26) & (!E8_cnt[24] & !\u_basic|u_clk_2|cnt\(27))))
-- \u_basic|u_clk_2|cnt\(24) = DFFEAS(\u_basic|u_clk_2|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_2|Add0~120_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_2|cnt\(25),
	datab => \u_basic|u_clk_2|cnt\(26),
	datac => \u_basic|u_clk_2|Add0~120_combout\,
	datad => \u_basic|u_clk_2|cnt\(27),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~7\,
	regout => \u_basic|u_clk_2|cnt\(24));

-- Location: LC_X8_Y8_N7
\u_basic|u_clk_2|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|cnt\(25) = DFFEAS((((\u_basic|u_clk_2|Add0~125_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_2|Add0~125_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|cnt\(25));

-- Location: LC_X6_Y8_N3
\u_basic|u_clk_2|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~4_combout\ = (\u_basic|u_clk_2|Equal0~3\ & (\u_basic|u_clk_2|Equal0~1\ & (\u_basic|u_clk_2|Equal0~2\ & \u_basic|u_clk_2|Equal0~0\)))

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
	dataa => \u_basic|u_clk_2|Equal0~3\,
	datab => \u_basic|u_clk_2|Equal0~1\,
	datac => \u_basic|u_clk_2|Equal0~2\,
	datad => \u_basic|u_clk_2|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~4_combout\);

-- Location: LC_X6_Y8_N9
\u_basic|u_clk_2|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|Equal0~8_combout\ = (\u_basic|u_clk_2|Equal0~5\ & (\u_basic|u_clk_2|Equal0~7\ & (\u_basic|u_clk_2|Equal0~6\ & \u_basic|u_clk_2|Equal0~4_combout\)))

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
	dataa => \u_basic|u_clk_2|Equal0~5\,
	datab => \u_basic|u_clk_2|Equal0~7\,
	datac => \u_basic|u_clk_2|Equal0~6\,
	datad => \u_basic|u_clk_2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_2|Equal0~8_combout\);

-- Location: LC_X15_Y8_N6
\u_basic|u_clk_2|clkout\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_2|clkout~regout\ = DFFEAS((\u_basic|u_clk_2|clkout~regout\ $ (((\u_basic|u_clk_2|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_2|clkout~regout\,
	datad => \u_basic|u_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_2|clkout~regout\);

-- Location: LC_X13_Y8_N9
\u_basic|u_debounce|key_sec[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_sec\(2) = DFFEAS(((\BTN~combout\(2))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , \u_basic|u_debounce|Equal0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \BTN~combout\(2),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_debounce|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_sec\(2));

-- Location: LC_X15_Y8_N8
\u_basic|u_debounce|key_sec_pre[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|always0~3\ = (\u_basic|u_debounce|key_sec\(2) & (((!F1_key_sec_pre[2] & \u_basic|u_flag|flag\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|key_sec\(2),
	datac => \u_basic|u_debounce|key_sec\(2),
	datad => \u_basic|u_flag|flag\(3),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_flag|always0~3\,
	regout => \u_basic|u_debounce|key_sec_pre\(2));

-- Location: LC_X14_Y7_N3
\u_basic|u_flag|flag[0]~3\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag[0]~3_combout\ = ((!\u_basic|u_flag|always0~2\ & (\u_basic|u_flag|flag[4]~0\ & !\u_basic|u_flag|always0~1\)))

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
	datab => \u_basic|u_flag|always0~2\,
	datac => \u_basic|u_flag|flag[4]~0\,
	datad => \u_basic|u_flag|always0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_flag|flag[0]~3_combout\);

-- Location: LC_X15_Y8_N9
\u_basic|u_flag|flag[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag\(2) = DFFEAS((\u_basic|u_flag|flag\(2)) # ((\u_basic|u_flag|always0~3\ & ((\u_basic|u_flag|flag[0]~3_combout\)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_flag|always0~3\,
	datab => \u_basic|u_flag|flag\(2),
	datad => \u_basic|u_flag|flag[0]~3_combout\,
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_flag|flag\(2));

-- Location: LC_X15_Y8_N4
\u_basic|u_sequencer_num_2|code[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_2|code\(0) = DFFEAS((((!\u_basic|u_sequencer_num_2|code\(0)))), \u_basic|u_clk_2|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(2), , , , )

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
	clk => \u_basic|u_clk_2|clkout~regout\,
	datac => \u_basic|u_sequencer_num_2|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_2|code\(0));

-- Location: LC_X3_Y7_N0
\u_basic|u_clk_1|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~50_combout\ = (\u_basic|u_clk_1|cnt\(9) $ ((\u_basic|u_clk_1|Add0~47\)))
-- \u_basic|u_clk_1|Add0~52\ = CARRY(((!\u_basic|u_clk_1|Add0~47\) # (!\u_basic|u_clk_1|cnt\(9))))
-- \u_basic|u_clk_1|Add0~52COUT1_148\ = CARRY(((!\u_basic|u_clk_1|Add0~47\) # (!\u_basic|u_clk_1|cnt\(9))))

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
	datab => \u_basic|u_clk_1|cnt\(9),
	cin => \u_basic|u_clk_1|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~50_combout\,
	cout0 => \u_basic|u_clk_1|Add0~52\,
	cout1 => \u_basic|u_clk_1|Add0~52COUT1_148\);

-- Location: LC_X2_Y6_N4
\u_basic|u_clk_1|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~50_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(9));

-- Location: LC_X3_Y7_N1
\u_basic|u_clk_1|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~40_combout\ = (\u_basic|u_clk_1|cnt\(10) $ ((!(!\u_basic|u_clk_1|Add0~47\ & \u_basic|u_clk_1|Add0~52\) # (\u_basic|u_clk_1|Add0~47\ & \u_basic|u_clk_1|Add0~52COUT1_148\))))
-- \u_basic|u_clk_1|Add0~42\ = CARRY(((\u_basic|u_clk_1|cnt\(10) & !\u_basic|u_clk_1|Add0~52\)))
-- \u_basic|u_clk_1|Add0~42COUT1_149\ = CARRY(((\u_basic|u_clk_1|cnt\(10) & !\u_basic|u_clk_1|Add0~52COUT1_148\)))

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
	datab => \u_basic|u_clk_1|cnt\(10),
	cin => \u_basic|u_clk_1|Add0~47\,
	cin0 => \u_basic|u_clk_1|Add0~52\,
	cin1 => \u_basic|u_clk_1|Add0~52COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~40_combout\,
	cout0 => \u_basic|u_clk_1|Add0~42\,
	cout1 => \u_basic|u_clk_1|Add0~42COUT1_149\);

-- Location: LC_X2_Y6_N6
\u_basic|u_clk_1|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(10) = DFFEAS((((\u_basic|u_clk_1|Add0~40_combout\ & !\u_basic|u_clk_1|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_1|Add0~40_combout\,
	datad => \u_basic|u_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(10));

-- Location: LC_X2_Y7_N5
\u_basic|u_clk_1|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~10_combout\ = (\u_basic|u_clk_1|cnt\(4) $ ((!\u_basic|u_clk_1|Add0~17\)))
-- \u_basic|u_clk_1|Add0~12\ = CARRY(((\u_basic|u_clk_1|cnt\(4) & !\u_basic|u_clk_1|Add0~17\)))
-- \u_basic|u_clk_1|Add0~12COUT1_144\ = CARRY(((\u_basic|u_clk_1|cnt\(4) & !\u_basic|u_clk_1|Add0~17\)))

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
	datab => \u_basic|u_clk_1|cnt\(4),
	cin => \u_basic|u_clk_1|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~10_combout\,
	cout0 => \u_basic|u_clk_1|Add0~12\,
	cout1 => \u_basic|u_clk_1|Add0~12COUT1_144\);

-- Location: LC_X2_Y6_N1
\u_basic|u_clk_1|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~10_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(4));

-- Location: LC_X2_Y7_N6
\u_basic|u_clk_1|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~5_combout\ = \u_basic|u_clk_1|cnt\(5) $ (((((!\u_basic|u_clk_1|Add0~17\ & \u_basic|u_clk_1|Add0~12\) # (\u_basic|u_clk_1|Add0~17\ & \u_basic|u_clk_1|Add0~12COUT1_144\)))))
-- \u_basic|u_clk_1|Add0~7\ = CARRY(((!\u_basic|u_clk_1|Add0~12\)) # (!\u_basic|u_clk_1|cnt\(5)))
-- \u_basic|u_clk_1|Add0~7COUT1_145\ = CARRY(((!\u_basic|u_clk_1|Add0~12COUT1_144\)) # (!\u_basic|u_clk_1|cnt\(5)))

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
	dataa => \u_basic|u_clk_1|cnt\(5),
	cin => \u_basic|u_clk_1|Add0~17\,
	cin0 => \u_basic|u_clk_1|Add0~12\,
	cin1 => \u_basic|u_clk_1|Add0~12COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~5_combout\,
	cout0 => \u_basic|u_clk_1|Add0~7\,
	cout1 => \u_basic|u_clk_1|Add0~7COUT1_145\);

-- Location: LC_X1_Y7_N5
\u_basic|u_clk_1|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~5_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(5));

-- Location: LC_X2_Y7_N7
\u_basic|u_clk_1|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~0_combout\ = (\u_basic|u_clk_1|cnt\(6) $ ((!(!\u_basic|u_clk_1|Add0~17\ & \u_basic|u_clk_1|Add0~7\) # (\u_basic|u_clk_1|Add0~17\ & \u_basic|u_clk_1|Add0~7COUT1_145\))))
-- \u_basic|u_clk_1|Add0~2\ = CARRY(((\u_basic|u_clk_1|cnt\(6) & !\u_basic|u_clk_1|Add0~7\)))
-- \u_basic|u_clk_1|Add0~2COUT1_146\ = CARRY(((\u_basic|u_clk_1|cnt\(6) & !\u_basic|u_clk_1|Add0~7COUT1_145\)))

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
	datab => \u_basic|u_clk_1|cnt\(6),
	cin => \u_basic|u_clk_1|Add0~17\,
	cin0 => \u_basic|u_clk_1|Add0~7\,
	cin1 => \u_basic|u_clk_1|Add0~7COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~0_combout\,
	cout0 => \u_basic|u_clk_1|Add0~2\,
	cout1 => \u_basic|u_clk_1|Add0~2COUT1_146\);

-- Location: LC_X2_Y6_N5
\u_basic|u_clk_1|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~0\ = (!\u_basic|u_clk_1|cnt\(5) & (!\u_basic|u_clk_1|cnt\(4) & (!E9_cnt[6] & !\u_basic|u_clk_1|cnt\(3))))
-- \u_basic|u_clk_1|cnt\(6) = DFFEAS(\u_basic|u_clk_1|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~0_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_1|cnt\(5),
	datab => \u_basic|u_clk_1|cnt\(4),
	datac => \u_basic|u_clk_1|Add0~0_combout\,
	datad => \u_basic|u_clk_1|cnt\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~0\,
	regout => \u_basic|u_clk_1|cnt\(6));

-- Location: LC_X2_Y7_N8
\u_basic|u_clk_1|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~20_combout\ = (\u_basic|u_clk_1|cnt\(7) $ (((!\u_basic|u_clk_1|Add0~17\ & \u_basic|u_clk_1|Add0~2\) # (\u_basic|u_clk_1|Add0~17\ & \u_basic|u_clk_1|Add0~2COUT1_146\))))
-- \u_basic|u_clk_1|Add0~22\ = CARRY(((!\u_basic|u_clk_1|Add0~2\) # (!\u_basic|u_clk_1|cnt\(7))))
-- \u_basic|u_clk_1|Add0~22COUT1_147\ = CARRY(((!\u_basic|u_clk_1|Add0~2COUT1_146\) # (!\u_basic|u_clk_1|cnt\(7))))

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
	datab => \u_basic|u_clk_1|cnt\(7),
	cin => \u_basic|u_clk_1|Add0~17\,
	cin0 => \u_basic|u_clk_1|Add0~2\,
	cin1 => \u_basic|u_clk_1|Add0~2COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~20_combout\,
	cout0 => \u_basic|u_clk_1|Add0~22\,
	cout1 => \u_basic|u_clk_1|Add0~22COUT1_147\);

-- Location: LC_X3_Y6_N4
\u_basic|u_clk_1|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(7) = DFFEAS((!\u_basic|u_clk_1|Equal0~8_combout\ & (((\u_basic|u_clk_1|Add0~20_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_basic|u_clk_1|Equal0~8_combout\,
	datad => \u_basic|u_clk_1|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(7));

-- Location: LC_X2_Y7_N1
\u_basic|u_clk_1|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~35_combout\ = ((!\u_basic|u_clk_1|cnt\(0)))
-- \u_basic|u_clk_1|Add0~37\ = CARRY(((\u_basic|u_clk_1|cnt\(0))))
-- \u_basic|u_clk_1|Add0~37COUT1_141\ = CARRY(((\u_basic|u_clk_1|cnt\(0))))

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
	datab => \u_basic|u_clk_1|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~35_combout\,
	cout0 => \u_basic|u_clk_1|Add0~37\,
	cout1 => \u_basic|u_clk_1|Add0~37COUT1_141\);

-- Location: LC_X2_Y6_N7
\u_basic|u_clk_1|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(0) = DFFEAS((((\u_basic|u_clk_1|Add0~35_combout\ & !\u_basic|u_clk_1|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_1|Add0~35_combout\,
	datad => \u_basic|u_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(0));

-- Location: LC_X2_Y7_N2
\u_basic|u_clk_1|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~30_combout\ = (\u_basic|u_clk_1|cnt\(1) $ ((\u_basic|u_clk_1|Add0~37\)))
-- \u_basic|u_clk_1|Add0~32\ = CARRY(((!\u_basic|u_clk_1|Add0~37\) # (!\u_basic|u_clk_1|cnt\(1))))
-- \u_basic|u_clk_1|Add0~32COUT1_142\ = CARRY(((!\u_basic|u_clk_1|Add0~37COUT1_141\) # (!\u_basic|u_clk_1|cnt\(1))))

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
	datab => \u_basic|u_clk_1|cnt\(1),
	cin0 => \u_basic|u_clk_1|Add0~37\,
	cin1 => \u_basic|u_clk_1|Add0~37COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~30_combout\,
	cout0 => \u_basic|u_clk_1|Add0~32\,
	cout1 => \u_basic|u_clk_1|Add0~32COUT1_142\);

-- Location: LC_X2_Y7_N0
\u_basic|u_clk_1|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(1) = DFFEAS((((\u_basic|u_clk_1|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_1|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(1));

-- Location: LC_X2_Y7_N3
\u_basic|u_clk_1|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~25_combout\ = (\u_basic|u_clk_1|cnt\(2) $ ((!\u_basic|u_clk_1|Add0~32\)))
-- \u_basic|u_clk_1|Add0~27\ = CARRY(((\u_basic|u_clk_1|cnt\(2) & !\u_basic|u_clk_1|Add0~32\)))
-- \u_basic|u_clk_1|Add0~27COUT1_143\ = CARRY(((\u_basic|u_clk_1|cnt\(2) & !\u_basic|u_clk_1|Add0~32COUT1_142\)))

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
	datab => \u_basic|u_clk_1|cnt\(2),
	cin0 => \u_basic|u_clk_1|Add0~32\,
	cin1 => \u_basic|u_clk_1|Add0~32COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~25_combout\,
	cout0 => \u_basic|u_clk_1|Add0~27\,
	cout1 => \u_basic|u_clk_1|Add0~27COUT1_143\);

-- Location: LC_X3_Y6_N6
\u_basic|u_clk_1|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~1\ = (\u_basic|u_clk_1|cnt\(7) & (!\u_basic|u_clk_1|cnt\(0) & (!E9_cnt[2] & !\u_basic|u_clk_1|cnt\(1))))
-- \u_basic|u_clk_1|cnt\(2) = DFFEAS(\u_basic|u_clk_1|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~25_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_1|cnt\(7),
	datab => \u_basic|u_clk_1|cnt\(0),
	datac => \u_basic|u_clk_1|Add0~25_combout\,
	datad => \u_basic|u_clk_1|cnt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~1\,
	regout => \u_basic|u_clk_1|cnt\(2));

-- Location: LC_X2_Y7_N4
\u_basic|u_clk_1|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~15_combout\ = (\u_basic|u_clk_1|cnt\(3) $ ((\u_basic|u_clk_1|Add0~27\)))
-- \u_basic|u_clk_1|Add0~17\ = CARRY(((!\u_basic|u_clk_1|Add0~27COUT1_143\) # (!\u_basic|u_clk_1|cnt\(3))))

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
	datab => \u_basic|u_clk_1|cnt\(3),
	cin0 => \u_basic|u_clk_1|Add0~27\,
	cin1 => \u_basic|u_clk_1|Add0~27COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~15_combout\,
	cout => \u_basic|u_clk_1|Add0~17\);

-- Location: LC_X2_Y6_N3
\u_basic|u_clk_1|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~15_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(3));

-- Location: LC_X2_Y7_N9
\u_basic|u_clk_1|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~45_combout\ = (\u_basic|u_clk_1|cnt\(8) $ ((!(!\u_basic|u_clk_1|Add0~17\ & \u_basic|u_clk_1|Add0~22\) # (\u_basic|u_clk_1|Add0~17\ & \u_basic|u_clk_1|Add0~22COUT1_147\))))
-- \u_basic|u_clk_1|Add0~47\ = CARRY(((\u_basic|u_clk_1|cnt\(8) & !\u_basic|u_clk_1|Add0~22COUT1_147\)))

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
	datab => \u_basic|u_clk_1|cnt\(8),
	cin => \u_basic|u_clk_1|Add0~17\,
	cin0 => \u_basic|u_clk_1|Add0~22\,
	cin1 => \u_basic|u_clk_1|Add0~22COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~45_combout\,
	cout => \u_basic|u_clk_1|Add0~47\);

-- Location: LC_X3_Y7_N2
\u_basic|u_clk_1|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~55_combout\ = (\u_basic|u_clk_1|cnt\(11) $ (((!\u_basic|u_clk_1|Add0~47\ & \u_basic|u_clk_1|Add0~42\) # (\u_basic|u_clk_1|Add0~47\ & \u_basic|u_clk_1|Add0~42COUT1_149\))))
-- \u_basic|u_clk_1|Add0~57\ = CARRY(((!\u_basic|u_clk_1|Add0~42\) # (!\u_basic|u_clk_1|cnt\(11))))
-- \u_basic|u_clk_1|Add0~57COUT1_150\ = CARRY(((!\u_basic|u_clk_1|Add0~42COUT1_149\) # (!\u_basic|u_clk_1|cnt\(11))))

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
	datab => \u_basic|u_clk_1|cnt\(11),
	cin => \u_basic|u_clk_1|Add0~47\,
	cin0 => \u_basic|u_clk_1|Add0~42\,
	cin1 => \u_basic|u_clk_1|Add0~42COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~55_combout\,
	cout0 => \u_basic|u_clk_1|Add0~57\,
	cout1 => \u_basic|u_clk_1|Add0~57COUT1_150\);

-- Location: LC_X2_Y6_N0
\u_basic|u_clk_1|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(11) = DFFEAS((((\u_basic|u_clk_1|Add0~55_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_1|Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(11));

-- Location: LC_X2_Y6_N8
\u_basic|u_clk_1|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~2\ = (\u_basic|u_clk_1|cnt\(10) & (!\u_basic|u_clk_1|cnt\(9) & (!E9_cnt[8] & !\u_basic|u_clk_1|cnt\(11))))
-- \u_basic|u_clk_1|cnt\(8) = DFFEAS(\u_basic|u_clk_1|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~45_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_1|cnt\(10),
	datab => \u_basic|u_clk_1|cnt\(9),
	datac => \u_basic|u_clk_1|Add0~45_combout\,
	datad => \u_basic|u_clk_1|cnt\(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~2\,
	regout => \u_basic|u_clk_1|cnt\(8));

-- Location: LC_X3_Y7_N5
\u_basic|u_clk_1|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~75_combout\ = (\u_basic|u_clk_1|cnt\(14) $ ((!\u_basic|u_clk_1|Add0~72\)))
-- \u_basic|u_clk_1|Add0~77\ = CARRY(((\u_basic|u_clk_1|cnt\(14) & !\u_basic|u_clk_1|Add0~72\)))
-- \u_basic|u_clk_1|Add0~77COUT1_152\ = CARRY(((\u_basic|u_clk_1|cnt\(14) & !\u_basic|u_clk_1|Add0~72\)))

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
	datab => \u_basic|u_clk_1|cnt\(14),
	cin => \u_basic|u_clk_1|Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~75_combout\,
	cout0 => \u_basic|u_clk_1|Add0~77\,
	cout1 => \u_basic|u_clk_1|Add0~77COUT1_152\);

-- Location: LC_X2_Y6_N2
\u_basic|u_clk_1|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~75_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(14));

-- Location: LC_X3_Y7_N6
\u_basic|u_clk_1|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~60_combout\ = \u_basic|u_clk_1|cnt\(15) $ (((((!\u_basic|u_clk_1|Add0~72\ & \u_basic|u_clk_1|Add0~77\) # (\u_basic|u_clk_1|Add0~72\ & \u_basic|u_clk_1|Add0~77COUT1_152\)))))
-- \u_basic|u_clk_1|Add0~62\ = CARRY(((!\u_basic|u_clk_1|Add0~77\)) # (!\u_basic|u_clk_1|cnt\(15)))
-- \u_basic|u_clk_1|Add0~62COUT1_153\ = CARRY(((!\u_basic|u_clk_1|Add0~77COUT1_152\)) # (!\u_basic|u_clk_1|cnt\(15)))

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
	dataa => \u_basic|u_clk_1|cnt\(15),
	cin => \u_basic|u_clk_1|Add0~72\,
	cin0 => \u_basic|u_clk_1|Add0~77\,
	cin1 => \u_basic|u_clk_1|Add0~77COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~60_combout\,
	cout0 => \u_basic|u_clk_1|Add0~62\,
	cout1 => \u_basic|u_clk_1|Add0~62COUT1_153\);

-- Location: LC_X3_Y6_N0
\u_basic|u_clk_1|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(15) = DFFEAS((((\u_basic|u_clk_1|Add0~60_combout\ & !\u_basic|u_clk_1|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_1|Add0~60_combout\,
	datad => \u_basic|u_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(15));

-- Location: LC_X3_Y7_N3
\u_basic|u_clk_1|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~65_combout\ = (\u_basic|u_clk_1|cnt\(12) $ ((!(!\u_basic|u_clk_1|Add0~47\ & \u_basic|u_clk_1|Add0~57\) # (\u_basic|u_clk_1|Add0~47\ & \u_basic|u_clk_1|Add0~57COUT1_150\))))
-- \u_basic|u_clk_1|Add0~67\ = CARRY(((\u_basic|u_clk_1|cnt\(12) & !\u_basic|u_clk_1|Add0~57\)))
-- \u_basic|u_clk_1|Add0~67COUT1_151\ = CARRY(((\u_basic|u_clk_1|cnt\(12) & !\u_basic|u_clk_1|Add0~57COUT1_150\)))

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
	datab => \u_basic|u_clk_1|cnt\(12),
	cin => \u_basic|u_clk_1|Add0~47\,
	cin0 => \u_basic|u_clk_1|Add0~57\,
	cin1 => \u_basic|u_clk_1|Add0~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~65_combout\,
	cout0 => \u_basic|u_clk_1|Add0~67\,
	cout1 => \u_basic|u_clk_1|Add0~67COUT1_151\);

-- Location: LC_X3_Y6_N2
\u_basic|u_clk_1|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~3\ = (!\u_basic|u_clk_1|cnt\(13) & (\u_basic|u_clk_1|cnt\(15) & (!E9_cnt[12] & !\u_basic|u_clk_1|cnt\(14))))
-- \u_basic|u_clk_1|cnt\(12) = DFFEAS(\u_basic|u_clk_1|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~65_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_1|cnt\(13),
	datab => \u_basic|u_clk_1|cnt\(15),
	datac => \u_basic|u_clk_1|Add0~65_combout\,
	datad => \u_basic|u_clk_1|cnt\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~3\,
	regout => \u_basic|u_clk_1|cnt\(12));

-- Location: LC_X3_Y7_N4
\u_basic|u_clk_1|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~70_combout\ = \u_basic|u_clk_1|cnt\(13) $ (((((!\u_basic|u_clk_1|Add0~47\ & \u_basic|u_clk_1|Add0~67\) # (\u_basic|u_clk_1|Add0~47\ & \u_basic|u_clk_1|Add0~67COUT1_151\)))))
-- \u_basic|u_clk_1|Add0~72\ = CARRY(((!\u_basic|u_clk_1|Add0~67COUT1_151\)) # (!\u_basic|u_clk_1|cnt\(13)))

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
	dataa => \u_basic|u_clk_1|cnt\(13),
	cin => \u_basic|u_clk_1|Add0~47\,
	cin0 => \u_basic|u_clk_1|Add0~67\,
	cin1 => \u_basic|u_clk_1|Add0~67COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~70_combout\,
	cout => \u_basic|u_clk_1|Add0~72\);

-- Location: LC_X4_Y6_N7
\u_basic|u_clk_1|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~70_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(13));

-- Location: LC_X3_Y7_N7
\u_basic|u_clk_1|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~95_combout\ = (\u_basic|u_clk_1|cnt\(16) $ ((!(!\u_basic|u_clk_1|Add0~72\ & \u_basic|u_clk_1|Add0~62\) # (\u_basic|u_clk_1|Add0~72\ & \u_basic|u_clk_1|Add0~62COUT1_153\))))
-- \u_basic|u_clk_1|Add0~97\ = CARRY(((\u_basic|u_clk_1|cnt\(16) & !\u_basic|u_clk_1|Add0~62\)))
-- \u_basic|u_clk_1|Add0~97COUT1_154\ = CARRY(((\u_basic|u_clk_1|cnt\(16) & !\u_basic|u_clk_1|Add0~62COUT1_153\)))

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
	datab => \u_basic|u_clk_1|cnt\(16),
	cin => \u_basic|u_clk_1|Add0~72\,
	cin0 => \u_basic|u_clk_1|Add0~62\,
	cin1 => \u_basic|u_clk_1|Add0~62COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~95_combout\,
	cout0 => \u_basic|u_clk_1|Add0~97\,
	cout1 => \u_basic|u_clk_1|Add0~97COUT1_154\);

-- Location: LC_X3_Y7_N8
\u_basic|u_clk_1|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~80_combout\ = \u_basic|u_clk_1|cnt\(17) $ (((((!\u_basic|u_clk_1|Add0~72\ & \u_basic|u_clk_1|Add0~97\) # (\u_basic|u_clk_1|Add0~72\ & \u_basic|u_clk_1|Add0~97COUT1_154\)))))
-- \u_basic|u_clk_1|Add0~82\ = CARRY(((!\u_basic|u_clk_1|Add0~97\)) # (!\u_basic|u_clk_1|cnt\(17)))
-- \u_basic|u_clk_1|Add0~82COUT1_155\ = CARRY(((!\u_basic|u_clk_1|Add0~97COUT1_154\)) # (!\u_basic|u_clk_1|cnt\(17)))

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
	dataa => \u_basic|u_clk_1|cnt\(17),
	cin => \u_basic|u_clk_1|Add0~72\,
	cin0 => \u_basic|u_clk_1|Add0~97\,
	cin1 => \u_basic|u_clk_1|Add0~97COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~80_combout\,
	cout0 => \u_basic|u_clk_1|Add0~82\,
	cout1 => \u_basic|u_clk_1|Add0~82COUT1_155\);

-- Location: LC_X3_Y7_N9
\u_basic|u_clk_1|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~85_combout\ = (\u_basic|u_clk_1|cnt\(18) $ ((!(!\u_basic|u_clk_1|Add0~72\ & \u_basic|u_clk_1|Add0~82\) # (\u_basic|u_clk_1|Add0~72\ & \u_basic|u_clk_1|Add0~82COUT1_155\))))
-- \u_basic|u_clk_1|Add0~87\ = CARRY(((\u_basic|u_clk_1|cnt\(18) & !\u_basic|u_clk_1|Add0~82COUT1_155\)))

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
	datab => \u_basic|u_clk_1|cnt\(18),
	cin => \u_basic|u_clk_1|Add0~72\,
	cin0 => \u_basic|u_clk_1|Add0~82\,
	cin1 => \u_basic|u_clk_1|Add0~82COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~85_combout\,
	cout => \u_basic|u_clk_1|Add0~87\);

-- Location: LC_X4_Y7_N0
\u_basic|u_clk_1|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~90_combout\ = (\u_basic|u_clk_1|cnt\(19) $ ((\u_basic|u_clk_1|Add0~87\)))
-- \u_basic|u_clk_1|Add0~92\ = CARRY(((!\u_basic|u_clk_1|Add0~87\) # (!\u_basic|u_clk_1|cnt\(19))))
-- \u_basic|u_clk_1|Add0~92COUT1_156\ = CARRY(((!\u_basic|u_clk_1|Add0~87\) # (!\u_basic|u_clk_1|cnt\(19))))

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
	datab => \u_basic|u_clk_1|cnt\(19),
	cin => \u_basic|u_clk_1|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~90_combout\,
	cout0 => \u_basic|u_clk_1|Add0~92\,
	cout1 => \u_basic|u_clk_1|Add0~92COUT1_156\);

-- Location: LC_X4_Y6_N3
\u_basic|u_clk_1|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(19) = DFFEAS((!\u_basic|u_clk_1|Equal0~8_combout\ & (((\u_basic|u_clk_1|Add0~90_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_1|Equal0~8_combout\,
	datac => \u_basic|u_clk_1|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(19));

-- Location: LC_X3_Y6_N3
\u_basic|u_clk_1|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~5\ = (\u_basic|u_clk_1|cnt\(18) & (\u_basic|u_clk_1|cnt\(17) & (!E9_cnt[16] & \u_basic|u_clk_1|cnt\(19))))
-- \u_basic|u_clk_1|cnt\(16) = DFFEAS(\u_basic|u_clk_1|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~95_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_1|cnt\(18),
	datab => \u_basic|u_clk_1|cnt\(17),
	datac => \u_basic|u_clk_1|Add0~95_combout\,
	datad => \u_basic|u_clk_1|cnt\(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~5\,
	regout => \u_basic|u_clk_1|cnt\(16));

-- Location: LC_X3_Y6_N1
\u_basic|u_clk_1|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(17) = DFFEAS((((\u_basic|u_clk_1|Add0~80_combout\ & !\u_basic|u_clk_1|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_1|Add0~80_combout\,
	datad => \u_basic|u_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(17));

-- Location: LC_X3_Y6_N5
\u_basic|u_clk_1|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(18) = DFFEAS((!\u_basic|u_clk_1|Equal0~8_combout\ & (((\u_basic|u_clk_1|Add0~85_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_basic|u_clk_1|Equal0~8_combout\,
	datad => \u_basic|u_clk_1|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(18));

-- Location: LC_X4_Y7_N1
\u_basic|u_clk_1|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~100_combout\ = (\u_basic|u_clk_1|cnt\(20) $ ((!(!\u_basic|u_clk_1|Add0~87\ & \u_basic|u_clk_1|Add0~92\) # (\u_basic|u_clk_1|Add0~87\ & \u_basic|u_clk_1|Add0~92COUT1_156\))))
-- \u_basic|u_clk_1|Add0~102\ = CARRY(((\u_basic|u_clk_1|cnt\(20) & !\u_basic|u_clk_1|Add0~92\)))
-- \u_basic|u_clk_1|Add0~102COUT1_157\ = CARRY(((\u_basic|u_clk_1|cnt\(20) & !\u_basic|u_clk_1|Add0~92COUT1_156\)))

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
	datab => \u_basic|u_clk_1|cnt\(20),
	cin => \u_basic|u_clk_1|Add0~87\,
	cin0 => \u_basic|u_clk_1|Add0~92\,
	cin1 => \u_basic|u_clk_1|Add0~92COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~100_combout\,
	cout0 => \u_basic|u_clk_1|Add0~102\,
	cout1 => \u_basic|u_clk_1|Add0~102COUT1_157\);

-- Location: LC_X4_Y6_N5
\u_basic|u_clk_1|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(20) = DFFEAS((((!\u_basic|u_clk_1|Equal0~8_combout\ & \u_basic|u_clk_1|Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_1|Equal0~8_combout\,
	datad => \u_basic|u_clk_1|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(20));

-- Location: LC_X4_Y7_N2
\u_basic|u_clk_1|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~105_combout\ = (\u_basic|u_clk_1|cnt\(21) $ (((!\u_basic|u_clk_1|Add0~87\ & \u_basic|u_clk_1|Add0~102\) # (\u_basic|u_clk_1|Add0~87\ & \u_basic|u_clk_1|Add0~102COUT1_157\))))
-- \u_basic|u_clk_1|Add0~107\ = CARRY(((!\u_basic|u_clk_1|Add0~102\) # (!\u_basic|u_clk_1|cnt\(21))))
-- \u_basic|u_clk_1|Add0~107COUT1_158\ = CARRY(((!\u_basic|u_clk_1|Add0~102COUT1_157\) # (!\u_basic|u_clk_1|cnt\(21))))

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
	datab => \u_basic|u_clk_1|cnt\(21),
	cin => \u_basic|u_clk_1|Add0~87\,
	cin0 => \u_basic|u_clk_1|Add0~102\,
	cin1 => \u_basic|u_clk_1|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~105_combout\,
	cout0 => \u_basic|u_clk_1|Add0~107\,
	cout1 => \u_basic|u_clk_1|Add0~107COUT1_158\);

-- Location: LC_X4_Y6_N8
\u_basic|u_clk_1|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~6\ = (!\u_basic|u_clk_1|cnt\(22) & (\u_basic|u_clk_1|cnt\(20) & (!E9_cnt[21] & !\u_basic|u_clk_1|cnt\(23))))
-- \u_basic|u_clk_1|cnt\(21) = DFFEAS(\u_basic|u_clk_1|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~105_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_1|cnt\(22),
	datab => \u_basic|u_clk_1|cnt\(20),
	datac => \u_basic|u_clk_1|Add0~105_combout\,
	datad => \u_basic|u_clk_1|cnt\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~6\,
	regout => \u_basic|u_clk_1|cnt\(21));

-- Location: LC_X4_Y7_N3
\u_basic|u_clk_1|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~110_combout\ = (\u_basic|u_clk_1|cnt\(22) $ ((!(!\u_basic|u_clk_1|Add0~87\ & \u_basic|u_clk_1|Add0~107\) # (\u_basic|u_clk_1|Add0~87\ & \u_basic|u_clk_1|Add0~107COUT1_158\))))
-- \u_basic|u_clk_1|Add0~112\ = CARRY(((\u_basic|u_clk_1|cnt\(22) & !\u_basic|u_clk_1|Add0~107\)))
-- \u_basic|u_clk_1|Add0~112COUT1_159\ = CARRY(((\u_basic|u_clk_1|cnt\(22) & !\u_basic|u_clk_1|Add0~107COUT1_158\)))

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
	datab => \u_basic|u_clk_1|cnt\(22),
	cin => \u_basic|u_clk_1|Add0~87\,
	cin0 => \u_basic|u_clk_1|Add0~107\,
	cin1 => \u_basic|u_clk_1|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~110_combout\,
	cout0 => \u_basic|u_clk_1|Add0~112\,
	cout1 => \u_basic|u_clk_1|Add0~112COUT1_159\);

-- Location: LC_X5_Y7_N8
\u_basic|u_clk_1|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~110_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(22));

-- Location: LC_X4_Y7_N4
\u_basic|u_clk_1|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~115_combout\ = (\u_basic|u_clk_1|cnt\(23) $ (((!\u_basic|u_clk_1|Add0~87\ & \u_basic|u_clk_1|Add0~112\) # (\u_basic|u_clk_1|Add0~87\ & \u_basic|u_clk_1|Add0~112COUT1_159\))))
-- \u_basic|u_clk_1|Add0~117\ = CARRY(((!\u_basic|u_clk_1|Add0~112COUT1_159\) # (!\u_basic|u_clk_1|cnt\(23))))

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
	datab => \u_basic|u_clk_1|cnt\(23),
	cin => \u_basic|u_clk_1|Add0~87\,
	cin0 => \u_basic|u_clk_1|Add0~112\,
	cin1 => \u_basic|u_clk_1|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~115_combout\,
	cout => \u_basic|u_clk_1|Add0~117\);

-- Location: LC_X5_Y7_N9
\u_basic|u_clk_1|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(23) = DFFEAS((((\u_basic|u_clk_1|Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_1|Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(23));

-- Location: LC_X4_Y7_N5
\u_basic|u_clk_1|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~120_combout\ = (\u_basic|u_clk_1|cnt\(24) $ ((!\u_basic|u_clk_1|Add0~117\)))
-- \u_basic|u_clk_1|Add0~122\ = CARRY(((\u_basic|u_clk_1|cnt\(24) & !\u_basic|u_clk_1|Add0~117\)))
-- \u_basic|u_clk_1|Add0~122COUT1_160\ = CARRY(((\u_basic|u_clk_1|cnt\(24) & !\u_basic|u_clk_1|Add0~117\)))

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
	datab => \u_basic|u_clk_1|cnt\(24),
	cin => \u_basic|u_clk_1|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~120_combout\,
	cout0 => \u_basic|u_clk_1|Add0~122\,
	cout1 => \u_basic|u_clk_1|Add0~122COUT1_160\);

-- Location: LC_X4_Y7_N6
\u_basic|u_clk_1|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~125_combout\ = \u_basic|u_clk_1|cnt\(25) $ (((((!\u_basic|u_clk_1|Add0~117\ & \u_basic|u_clk_1|Add0~122\) # (\u_basic|u_clk_1|Add0~117\ & \u_basic|u_clk_1|Add0~122COUT1_160\)))))
-- \u_basic|u_clk_1|Add0~127\ = CARRY(((!\u_basic|u_clk_1|Add0~122\)) # (!\u_basic|u_clk_1|cnt\(25)))
-- \u_basic|u_clk_1|Add0~127COUT1_161\ = CARRY(((!\u_basic|u_clk_1|Add0~122COUT1_160\)) # (!\u_basic|u_clk_1|cnt\(25)))

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
	dataa => \u_basic|u_clk_1|cnt\(25),
	cin => \u_basic|u_clk_1|Add0~117\,
	cin0 => \u_basic|u_clk_1|Add0~122\,
	cin1 => \u_basic|u_clk_1|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~125_combout\,
	cout0 => \u_basic|u_clk_1|Add0~127\,
	cout1 => \u_basic|u_clk_1|Add0~127COUT1_161\);

-- Location: LC_X4_Y7_N7
\u_basic|u_clk_1|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~130_combout\ = (\u_basic|u_clk_1|cnt\(26) $ ((!(!\u_basic|u_clk_1|Add0~117\ & \u_basic|u_clk_1|Add0~127\) # (\u_basic|u_clk_1|Add0~117\ & \u_basic|u_clk_1|Add0~127COUT1_161\))))
-- \u_basic|u_clk_1|Add0~132\ = CARRY(((\u_basic|u_clk_1|cnt\(26) & !\u_basic|u_clk_1|Add0~127\)))
-- \u_basic|u_clk_1|Add0~132COUT1_162\ = CARRY(((\u_basic|u_clk_1|cnt\(26) & !\u_basic|u_clk_1|Add0~127COUT1_161\)))

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
	datab => \u_basic|u_clk_1|cnt\(26),
	cin => \u_basic|u_clk_1|Add0~117\,
	cin0 => \u_basic|u_clk_1|Add0~127\,
	cin1 => \u_basic|u_clk_1|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~130_combout\,
	cout0 => \u_basic|u_clk_1|Add0~132\,
	cout1 => \u_basic|u_clk_1|Add0~132COUT1_162\);

-- Location: LC_X4_Y7_N8
\u_basic|u_clk_1|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Add0~135_combout\ = (\u_basic|u_clk_1|cnt\(27) $ (((!\u_basic|u_clk_1|Add0~117\ & \u_basic|u_clk_1|Add0~132\) # (\u_basic|u_clk_1|Add0~117\ & \u_basic|u_clk_1|Add0~132COUT1_162\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u_clk_1|cnt\(27),
	cin => \u_basic|u_clk_1|Add0~117\,
	cin0 => \u_basic|u_clk_1|Add0~132\,
	cin1 => \u_basic|u_clk_1|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Add0~135_combout\);

-- Location: LC_X5_Y7_N2
\u_basic|u_clk_1|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~135_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(27));

-- Location: LC_X4_Y6_N4
\u_basic|u_clk_1|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~7\ = (!\u_basic|u_clk_1|cnt\(26) & (!\u_basic|u_clk_1|cnt\(25) & (!E9_cnt[24] & !\u_basic|u_clk_1|cnt\(27))))
-- \u_basic|u_clk_1|cnt\(24) = DFFEAS(\u_basic|u_clk_1|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~120_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_1|cnt\(26),
	datab => \u_basic|u_clk_1|cnt\(25),
	datac => \u_basic|u_clk_1|Add0~120_combout\,
	datad => \u_basic|u_clk_1|cnt\(27),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~7\,
	regout => \u_basic|u_clk_1|cnt\(24));

-- Location: LC_X5_Y7_N6
\u_basic|u_clk_1|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~125_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(25));

-- Location: LC_X4_Y7_N9
\u_basic|u_clk_1|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_1|Add0~130_combout\, , , VCC)

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
	datac => \u_basic|u_clk_1|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|cnt\(26));

-- Location: LC_X3_Y6_N7
\u_basic|u_clk_1|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~4_combout\ = (\u_basic|u_clk_1|Equal0~2\ & (\u_basic|u_clk_1|Equal0~3\ & (\u_basic|u_clk_1|Equal0~1\ & \u_basic|u_clk_1|Equal0~0\)))

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
	dataa => \u_basic|u_clk_1|Equal0~2\,
	datab => \u_basic|u_clk_1|Equal0~3\,
	datac => \u_basic|u_clk_1|Equal0~1\,
	datad => \u_basic|u_clk_1|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~4_combout\);

-- Location: LC_X3_Y6_N8
\u_basic|u_clk_1|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|Equal0~8_combout\ = (\u_basic|u_clk_1|Equal0~5\ & (\u_basic|u_clk_1|Equal0~7\ & (\u_basic|u_clk_1|Equal0~6\ & \u_basic|u_clk_1|Equal0~4_combout\)))

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
	dataa => \u_basic|u_clk_1|Equal0~5\,
	datab => \u_basic|u_clk_1|Equal0~7\,
	datac => \u_basic|u_clk_1|Equal0~6\,
	datad => \u_basic|u_clk_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_1|Equal0~8_combout\);

-- Location: LC_X3_Y6_N9
\u_basic|u_clk_1|clkout\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_1|clkout~regout\ = DFFEAS((\u_basic|u_clk_1|clkout~regout\ $ (((\u_basic|u_clk_1|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_1|clkout~regout\,
	datad => \u_basic|u_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_1|clkout~regout\);

-- Location: LC_X13_Y8_N4
\u_basic|u_debounce|key_sec[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_sec\(1) = DFFEAS((((\BTN~combout\(1)))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , \u_basic|u_debounce|Equal0~5_combout\, , , , )

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
	datad => \BTN~combout\(1),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_debounce|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_sec\(1));

-- Location: LC_X14_Y8_N8
\u_basic|u_debounce|key_sec_pre[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|always0~4\ = ((\u_basic|u_flag|flag\(2) & (!F1_key_sec_pre[1] & \u_basic|u_debounce|key_sec\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_flag|flag\(2),
	datac => \u_basic|u_debounce|key_sec\(1),
	datad => \u_basic|u_debounce|key_sec\(1),
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_flag|always0~4\,
	regout => \u_basic|u_debounce|key_sec_pre\(1));

-- Location: LC_X14_Y7_N4
\u_basic|u_flag|flag[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag\(1) = DFFEAS((\u_basic|u_flag|flag\(1)) # ((\u_basic|u_flag|always0~4\ & (!\u_basic|u_flag|always0~3\ & \u_basic|u_flag|flag[0]~3_combout\))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_flag|flag\(1),
	datab => \u_basic|u_flag|always0~4\,
	datac => \u_basic|u_flag|always0~3\,
	datad => \u_basic|u_flag|flag[0]~3_combout\,
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_flag|flag\(1));

-- Location: LC_X15_Y7_N7
\u_basic|u_sequencer_num_1|code[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_1|code\(0) = DFFEAS((((!\u_basic|u_sequencer_num_1|code\(0)))), \u_basic|u_clk_1|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(1), , , , )

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
	clk => \u_basic|u_clk_1|clkout~regout\,
	datac => \u_basic|u_sequencer_num_1|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_1|code\(0));

-- Location: LC_X13_Y1_N5
\u_basic|u_clk_0|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~70_combout\ = (\u_basic|u_clk_0|cnt\(14) $ ((!\u_basic|u_clk_0|Add0~67\)))
-- \u_basic|u_clk_0|Add0~72\ = CARRY(((\u_basic|u_clk_0|cnt\(14) & !\u_basic|u_clk_0|Add0~67\)))
-- \u_basic|u_clk_0|Add0~72COUT1_152\ = CARRY(((\u_basic|u_clk_0|cnt\(14) & !\u_basic|u_clk_0|Add0~67\)))

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
	datab => \u_basic|u_clk_0|cnt\(14),
	cin => \u_basic|u_clk_0|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~70_combout\,
	cout0 => \u_basic|u_clk_0|Add0~72\,
	cout1 => \u_basic|u_clk_0|Add0~72COUT1_152\);

-- Location: LC_X13_Y2_N3
\u_basic|u_clk_0|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~70_combout\, , , VCC)

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
	datac => \u_basic|u_clk_0|Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(14));

-- Location: LC_X13_Y1_N0
\u_basic|u_clk_0|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~40_combout\ = (\u_basic|u_clk_0|cnt\(9) $ ((\u_basic|u_clk_0|Add0~47\)))
-- \u_basic|u_clk_0|Add0~42\ = CARRY(((!\u_basic|u_clk_0|Add0~47\) # (!\u_basic|u_clk_0|cnt\(9))))
-- \u_basic|u_clk_0|Add0~42COUT1_148\ = CARRY(((!\u_basic|u_clk_0|Add0~47\) # (!\u_basic|u_clk_0|cnt\(9))))

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
	datab => \u_basic|u_clk_0|cnt\(9),
	cin => \u_basic|u_clk_0|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~40_combout\,
	cout0 => \u_basic|u_clk_0|Add0~42\,
	cout1 => \u_basic|u_clk_0|Add0~42COUT1_148\);

-- Location: LC_X12_Y2_N6
\u_basic|u_clk_0|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(9) = DFFEAS((((!\u_basic|u_clk_0|Equal0~8_combout\ & \u_basic|u_clk_0|Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(9));

-- Location: LC_X13_Y1_N1
\u_basic|u_clk_0|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~50_combout\ = (\u_basic|u_clk_0|cnt\(10) $ ((!(!\u_basic|u_clk_0|Add0~47\ & \u_basic|u_clk_0|Add0~42\) # (\u_basic|u_clk_0|Add0~47\ & \u_basic|u_clk_0|Add0~42COUT1_148\))))
-- \u_basic|u_clk_0|Add0~52\ = CARRY(((\u_basic|u_clk_0|cnt\(10) & !\u_basic|u_clk_0|Add0~42\)))
-- \u_basic|u_clk_0|Add0~52COUT1_149\ = CARRY(((\u_basic|u_clk_0|cnt\(10) & !\u_basic|u_clk_0|Add0~42COUT1_148\)))

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
	datab => \u_basic|u_clk_0|cnt\(10),
	cin => \u_basic|u_clk_0|Add0~47\,
	cin0 => \u_basic|u_clk_0|Add0~42\,
	cin1 => \u_basic|u_clk_0|Add0~42COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~50_combout\,
	cout0 => \u_basic|u_clk_0|Add0~52\,
	cout1 => \u_basic|u_clk_0|Add0~52COUT1_149\);

-- Location: LC_X12_Y2_N7
\u_basic|u_clk_0|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(10) = DFFEAS((((\u_basic|u_clk_0|Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_0|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(10));

-- Location: LC_X13_Y1_N2
\u_basic|u_clk_0|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~55_combout\ = (\u_basic|u_clk_0|cnt\(11) $ (((!\u_basic|u_clk_0|Add0~47\ & \u_basic|u_clk_0|Add0~52\) # (\u_basic|u_clk_0|Add0~47\ & \u_basic|u_clk_0|Add0~52COUT1_149\))))
-- \u_basic|u_clk_0|Add0~57\ = CARRY(((!\u_basic|u_clk_0|Add0~52\) # (!\u_basic|u_clk_0|cnt\(11))))
-- \u_basic|u_clk_0|Add0~57COUT1_150\ = CARRY(((!\u_basic|u_clk_0|Add0~52COUT1_149\) # (!\u_basic|u_clk_0|cnt\(11))))

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
	datab => \u_basic|u_clk_0|cnt\(11),
	cin => \u_basic|u_clk_0|Add0~47\,
	cin0 => \u_basic|u_clk_0|Add0~52\,
	cin1 => \u_basic|u_clk_0|Add0~52COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~55_combout\,
	cout0 => \u_basic|u_clk_0|Add0~57\,
	cout1 => \u_basic|u_clk_0|Add0~57COUT1_150\);

-- Location: LC_X12_Y2_N9
\u_basic|u_clk_0|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~55_combout\, , , VCC)

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
	datac => \u_basic|u_clk_0|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(11));

-- Location: LC_X12_Y1_N1
\u_basic|u_clk_0|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~35_combout\ = ((!\u_basic|u_clk_0|cnt\(0)))
-- \u_basic|u_clk_0|Add0~37\ = CARRY(((\u_basic|u_clk_0|cnt\(0))))
-- \u_basic|u_clk_0|Add0~37COUT1_141\ = CARRY(((\u_basic|u_clk_0|cnt\(0))))

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
	datab => \u_basic|u_clk_0|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~35_combout\,
	cout0 => \u_basic|u_clk_0|Add0~37\,
	cout1 => \u_basic|u_clk_0|Add0~37COUT1_141\);

-- Location: LC_X12_Y2_N3
\u_basic|u_clk_0|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(0) = DFFEAS((((!\u_basic|u_clk_0|Equal0~8_combout\ & \u_basic|u_clk_0|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(0));

-- Location: LC_X12_Y1_N2
\u_basic|u_clk_0|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~30_combout\ = (\u_basic|u_clk_0|cnt\(1) $ ((\u_basic|u_clk_0|Add0~37\)))
-- \u_basic|u_clk_0|Add0~32\ = CARRY(((!\u_basic|u_clk_0|Add0~37\) # (!\u_basic|u_clk_0|cnt\(1))))
-- \u_basic|u_clk_0|Add0~32COUT1_142\ = CARRY(((!\u_basic|u_clk_0|Add0~37COUT1_141\) # (!\u_basic|u_clk_0|cnt\(1))))

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
	datab => \u_basic|u_clk_0|cnt\(1),
	cin0 => \u_basic|u_clk_0|Add0~37\,
	cin1 => \u_basic|u_clk_0|Add0~37COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~30_combout\,
	cout0 => \u_basic|u_clk_0|Add0~32\,
	cout1 => \u_basic|u_clk_0|Add0~32COUT1_142\);

-- Location: LC_X12_Y1_N0
\u_basic|u_clk_0|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(1) = DFFEAS((((\u_basic|u_clk_0|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_0|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(1));

-- Location: LC_X12_Y1_N3
\u_basic|u_clk_0|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~25_combout\ = (\u_basic|u_clk_0|cnt\(2) $ ((!\u_basic|u_clk_0|Add0~32\)))
-- \u_basic|u_clk_0|Add0~27\ = CARRY(((\u_basic|u_clk_0|cnt\(2) & !\u_basic|u_clk_0|Add0~32\)))
-- \u_basic|u_clk_0|Add0~27COUT1_143\ = CARRY(((\u_basic|u_clk_0|cnt\(2) & !\u_basic|u_clk_0|Add0~32COUT1_142\)))

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
	datab => \u_basic|u_clk_0|cnt\(2),
	cin0 => \u_basic|u_clk_0|Add0~32\,
	cin1 => \u_basic|u_clk_0|Add0~32COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~25_combout\,
	cout0 => \u_basic|u_clk_0|Add0~27\,
	cout1 => \u_basic|u_clk_0|Add0~27COUT1_143\);

-- Location: LC_X12_Y2_N8
\u_basic|u_clk_0|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(2) = DFFEAS((((\u_basic|u_clk_0|Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_0|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(2));

-- Location: LC_X12_Y1_N4
\u_basic|u_clk_0|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~20_combout\ = (\u_basic|u_clk_0|cnt\(3) $ ((\u_basic|u_clk_0|Add0~27\)))
-- \u_basic|u_clk_0|Add0~22\ = CARRY(((!\u_basic|u_clk_0|Add0~27COUT1_143\) # (!\u_basic|u_clk_0|cnt\(3))))

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
	datab => \u_basic|u_clk_0|cnt\(3),
	cin0 => \u_basic|u_clk_0|Add0~27\,
	cin1 => \u_basic|u_clk_0|Add0~27COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~20_combout\,
	cout => \u_basic|u_clk_0|Add0~22\);

-- Location: LC_X12_Y2_N1
\u_basic|u_clk_0|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~1\ = (!\u_basic|u_clk_0|cnt\(0) & (!\u_basic|u_clk_0|cnt\(2) & (!E10_cnt[3] & !\u_basic|u_clk_0|cnt\(1))))
-- \u_basic|u_clk_0|cnt\(3) = DFFEAS(\u_basic|u_clk_0|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~20_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_0|cnt\(0),
	datab => \u_basic|u_clk_0|cnt\(2),
	datac => \u_basic|u_clk_0|Add0~20_combout\,
	datad => \u_basic|u_clk_0|cnt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~1\,
	regout => \u_basic|u_clk_0|cnt\(3));

-- Location: LC_X12_Y1_N5
\u_basic|u_clk_0|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~10_combout\ = (\u_basic|u_clk_0|cnt\(4) $ ((!\u_basic|u_clk_0|Add0~22\)))
-- \u_basic|u_clk_0|Add0~12\ = CARRY(((\u_basic|u_clk_0|cnt\(4) & !\u_basic|u_clk_0|Add0~22\)))
-- \u_basic|u_clk_0|Add0~12COUT1_144\ = CARRY(((\u_basic|u_clk_0|cnt\(4) & !\u_basic|u_clk_0|Add0~22\)))

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
	datab => \u_basic|u_clk_0|cnt\(4),
	cin => \u_basic|u_clk_0|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~10_combout\,
	cout0 => \u_basic|u_clk_0|Add0~12\,
	cout1 => \u_basic|u_clk_0|Add0~12COUT1_144\);

-- Location: LC_X15_Y1_N3
\u_basic|u_clk_0|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(4) = DFFEAS(((\u_basic|u_clk_0|Add0~10_combout\ & ((!\u_basic|u_clk_0|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \u_basic|u_clk_0|Add0~10_combout\,
	datad => \u_basic|u_clk_0|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(4));

-- Location: LC_X12_Y1_N6
\u_basic|u_clk_0|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~15_combout\ = (\u_basic|u_clk_0|cnt\(5) $ (((!\u_basic|u_clk_0|Add0~22\ & \u_basic|u_clk_0|Add0~12\) # (\u_basic|u_clk_0|Add0~22\ & \u_basic|u_clk_0|Add0~12COUT1_144\))))
-- \u_basic|u_clk_0|Add0~17\ = CARRY(((!\u_basic|u_clk_0|Add0~12\) # (!\u_basic|u_clk_0|cnt\(5))))
-- \u_basic|u_clk_0|Add0~17COUT1_145\ = CARRY(((!\u_basic|u_clk_0|Add0~12COUT1_144\) # (!\u_basic|u_clk_0|cnt\(5))))

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
	datab => \u_basic|u_clk_0|cnt\(5),
	cin => \u_basic|u_clk_0|Add0~22\,
	cin0 => \u_basic|u_clk_0|Add0~12\,
	cin1 => \u_basic|u_clk_0|Add0~12COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~15_combout\,
	cout0 => \u_basic|u_clk_0|Add0~17\,
	cout1 => \u_basic|u_clk_0|Add0~17COUT1_145\);

-- Location: LC_X15_Y1_N0
\u_basic|u_clk_0|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~0\ = (\u_basic|u_clk_0|cnt\(4) & (\u_basic|u_clk_0|cnt\(6) & (!E10_cnt[5] & \u_basic|u_clk_0|cnt\(7))))
-- \u_basic|u_clk_0|cnt\(5) = DFFEAS(\u_basic|u_clk_0|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~15_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_0|cnt\(4),
	datab => \u_basic|u_clk_0|cnt\(6),
	datac => \u_basic|u_clk_0|Add0~15_combout\,
	datad => \u_basic|u_clk_0|cnt\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~0\,
	regout => \u_basic|u_clk_0|cnt\(5));

-- Location: LC_X12_Y1_N7
\u_basic|u_clk_0|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~5_combout\ = (\u_basic|u_clk_0|cnt\(6) $ ((!(!\u_basic|u_clk_0|Add0~22\ & \u_basic|u_clk_0|Add0~17\) # (\u_basic|u_clk_0|Add0~22\ & \u_basic|u_clk_0|Add0~17COUT1_145\))))
-- \u_basic|u_clk_0|Add0~7\ = CARRY(((\u_basic|u_clk_0|cnt\(6) & !\u_basic|u_clk_0|Add0~17\)))
-- \u_basic|u_clk_0|Add0~7COUT1_146\ = CARRY(((\u_basic|u_clk_0|cnt\(6) & !\u_basic|u_clk_0|Add0~17COUT1_145\)))

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
	datab => \u_basic|u_clk_0|cnt\(6),
	cin => \u_basic|u_clk_0|Add0~22\,
	cin0 => \u_basic|u_clk_0|Add0~17\,
	cin1 => \u_basic|u_clk_0|Add0~17COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~5_combout\,
	cout0 => \u_basic|u_clk_0|Add0~7\,
	cout1 => \u_basic|u_clk_0|Add0~7COUT1_146\);

-- Location: LC_X15_Y1_N2
\u_basic|u_clk_0|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(6) = DFFEAS((((!\u_basic|u_clk_0|Equal0~8_combout\ & \u_basic|u_clk_0|Add0~5_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(6));

-- Location: LC_X12_Y1_N8
\u_basic|u_clk_0|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~0_combout\ = (\u_basic|u_clk_0|cnt\(7) $ (((!\u_basic|u_clk_0|Add0~22\ & \u_basic|u_clk_0|Add0~7\) # (\u_basic|u_clk_0|Add0~22\ & \u_basic|u_clk_0|Add0~7COUT1_146\))))
-- \u_basic|u_clk_0|Add0~2\ = CARRY(((!\u_basic|u_clk_0|Add0~7\) # (!\u_basic|u_clk_0|cnt\(7))))
-- \u_basic|u_clk_0|Add0~2COUT1_147\ = CARRY(((!\u_basic|u_clk_0|Add0~7COUT1_146\) # (!\u_basic|u_clk_0|cnt\(7))))

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
	datab => \u_basic|u_clk_0|cnt\(7),
	cin => \u_basic|u_clk_0|Add0~22\,
	cin0 => \u_basic|u_clk_0|Add0~7\,
	cin1 => \u_basic|u_clk_0|Add0~7COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~0_combout\,
	cout0 => \u_basic|u_clk_0|Add0~2\,
	cout1 => \u_basic|u_clk_0|Add0~2COUT1_147\);

-- Location: LC_X15_Y1_N6
\u_basic|u_clk_0|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(7) = DFFEAS((((!\u_basic|u_clk_0|Equal0~8_combout\ & \u_basic|u_clk_0|Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(7));

-- Location: LC_X12_Y1_N9
\u_basic|u_clk_0|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~45_combout\ = \u_basic|u_clk_0|cnt\(8) $ ((((!(!\u_basic|u_clk_0|Add0~22\ & \u_basic|u_clk_0|Add0~2\) # (\u_basic|u_clk_0|Add0~22\ & \u_basic|u_clk_0|Add0~2COUT1_147\)))))
-- \u_basic|u_clk_0|Add0~47\ = CARRY((\u_basic|u_clk_0|cnt\(8) & ((!\u_basic|u_clk_0|Add0~2COUT1_147\))))

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
	dataa => \u_basic|u_clk_0|cnt\(8),
	cin => \u_basic|u_clk_0|Add0~22\,
	cin0 => \u_basic|u_clk_0|Add0~2\,
	cin1 => \u_basic|u_clk_0|Add0~2COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~45_combout\,
	cout => \u_basic|u_clk_0|Add0~47\);

-- Location: LC_X12_Y2_N2
\u_basic|u_clk_0|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~2\ = (!\u_basic|u_clk_0|cnt\(10) & (!\u_basic|u_clk_0|cnt\(11) & (!E10_cnt[8] & \u_basic|u_clk_0|cnt\(9))))
-- \u_basic|u_clk_0|cnt\(8) = DFFEAS(\u_basic|u_clk_0|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_0|cnt\(10),
	datab => \u_basic|u_clk_0|cnt\(11),
	datac => \u_basic|u_clk_0|Add0~45_combout\,
	datad => \u_basic|u_clk_0|cnt\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~2\,
	regout => \u_basic|u_clk_0|cnt\(8));

-- Location: LC_X13_Y1_N3
\u_basic|u_clk_0|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~60_combout\ = \u_basic|u_clk_0|cnt\(12) $ ((((!(!\u_basic|u_clk_0|Add0~47\ & \u_basic|u_clk_0|Add0~57\) # (\u_basic|u_clk_0|Add0~47\ & \u_basic|u_clk_0|Add0~57COUT1_150\)))))
-- \u_basic|u_clk_0|Add0~62\ = CARRY((\u_basic|u_clk_0|cnt\(12) & ((!\u_basic|u_clk_0|Add0~57\))))
-- \u_basic|u_clk_0|Add0~62COUT1_151\ = CARRY((\u_basic|u_clk_0|cnt\(12) & ((!\u_basic|u_clk_0|Add0~57COUT1_150\))))

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
	dataa => \u_basic|u_clk_0|cnt\(12),
	cin => \u_basic|u_clk_0|Add0~47\,
	cin0 => \u_basic|u_clk_0|Add0~57\,
	cin1 => \u_basic|u_clk_0|Add0~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~60_combout\,
	cout0 => \u_basic|u_clk_0|Add0~62\,
	cout1 => \u_basic|u_clk_0|Add0~62COUT1_151\);

-- Location: LC_X13_Y2_N4
\u_basic|u_clk_0|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(12) = DFFEAS((!\u_basic|u_clk_0|Equal0~8_combout\ & (((\u_basic|u_clk_0|Add0~60_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(12));

-- Location: LC_X13_Y1_N4
\u_basic|u_clk_0|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~65_combout\ = \u_basic|u_clk_0|cnt\(13) $ (((((!\u_basic|u_clk_0|Add0~47\ & \u_basic|u_clk_0|Add0~62\) # (\u_basic|u_clk_0|Add0~47\ & \u_basic|u_clk_0|Add0~62COUT1_151\)))))
-- \u_basic|u_clk_0|Add0~67\ = CARRY(((!\u_basic|u_clk_0|Add0~62COUT1_151\)) # (!\u_basic|u_clk_0|cnt\(13)))

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
	dataa => \u_basic|u_clk_0|cnt\(13),
	cin => \u_basic|u_clk_0|Add0~47\,
	cin0 => \u_basic|u_clk_0|Add0~62\,
	cin1 => \u_basic|u_clk_0|Add0~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~65_combout\,
	cout => \u_basic|u_clk_0|Add0~67\);

-- Location: LC_X13_Y1_N6
\u_basic|u_clk_0|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~75_combout\ = (\u_basic|u_clk_0|cnt\(15) $ (((!\u_basic|u_clk_0|Add0~67\ & \u_basic|u_clk_0|Add0~72\) # (\u_basic|u_clk_0|Add0~67\ & \u_basic|u_clk_0|Add0~72COUT1_152\))))
-- \u_basic|u_clk_0|Add0~77\ = CARRY(((!\u_basic|u_clk_0|Add0~72\) # (!\u_basic|u_clk_0|cnt\(15))))
-- \u_basic|u_clk_0|Add0~77COUT1_153\ = CARRY(((!\u_basic|u_clk_0|Add0~72COUT1_152\) # (!\u_basic|u_clk_0|cnt\(15))))

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
	datab => \u_basic|u_clk_0|cnt\(15),
	cin => \u_basic|u_clk_0|Add0~67\,
	cin0 => \u_basic|u_clk_0|Add0~72\,
	cin1 => \u_basic|u_clk_0|Add0~72COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~75_combout\,
	cout0 => \u_basic|u_clk_0|Add0~77\,
	cout1 => \u_basic|u_clk_0|Add0~77COUT1_153\);

-- Location: LC_X13_Y2_N8
\u_basic|u_clk_0|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~75_combout\, , , VCC)

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
	datac => \u_basic|u_clk_0|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(15));

-- Location: LC_X13_Y2_N0
\u_basic|u_clk_0|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~3\ = (!\u_basic|u_clk_0|cnt\(14) & (\u_basic|u_clk_0|cnt\(12) & (!E10_cnt[13] & !\u_basic|u_clk_0|cnt\(15))))
-- \u_basic|u_clk_0|cnt\(13) = DFFEAS(\u_basic|u_clk_0|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~65_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_0|cnt\(14),
	datab => \u_basic|u_clk_0|cnt\(12),
	datac => \u_basic|u_clk_0|Add0~65_combout\,
	datad => \u_basic|u_clk_0|cnt\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~3\,
	regout => \u_basic|u_clk_0|cnt\(13));

-- Location: LC_X13_Y1_N7
\u_basic|u_clk_0|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~80_combout\ = (\u_basic|u_clk_0|cnt\(16) $ ((!(!\u_basic|u_clk_0|Add0~67\ & \u_basic|u_clk_0|Add0~77\) # (\u_basic|u_clk_0|Add0~67\ & \u_basic|u_clk_0|Add0~77COUT1_153\))))
-- \u_basic|u_clk_0|Add0~82\ = CARRY(((\u_basic|u_clk_0|cnt\(16) & !\u_basic|u_clk_0|Add0~77\)))
-- \u_basic|u_clk_0|Add0~82COUT1_154\ = CARRY(((\u_basic|u_clk_0|cnt\(16) & !\u_basic|u_clk_0|Add0~77COUT1_153\)))

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
	datab => \u_basic|u_clk_0|cnt\(16),
	cin => \u_basic|u_clk_0|Add0~67\,
	cin0 => \u_basic|u_clk_0|Add0~77\,
	cin1 => \u_basic|u_clk_0|Add0~77COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~80_combout\,
	cout0 => \u_basic|u_clk_0|Add0~82\,
	cout1 => \u_basic|u_clk_0|Add0~82COUT1_154\);

-- Location: LC_X15_Y1_N4
\u_basic|u_clk_0|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(16) = DFFEAS((((!\u_basic|u_clk_0|Equal0~8_combout\ & \u_basic|u_clk_0|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(16));

-- Location: LC_X13_Y1_N8
\u_basic|u_clk_0|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~85_combout\ = (\u_basic|u_clk_0|cnt\(17) $ (((!\u_basic|u_clk_0|Add0~67\ & \u_basic|u_clk_0|Add0~82\) # (\u_basic|u_clk_0|Add0~67\ & \u_basic|u_clk_0|Add0~82COUT1_154\))))
-- \u_basic|u_clk_0|Add0~87\ = CARRY(((!\u_basic|u_clk_0|Add0~82\) # (!\u_basic|u_clk_0|cnt\(17))))
-- \u_basic|u_clk_0|Add0~87COUT1_155\ = CARRY(((!\u_basic|u_clk_0|Add0~82COUT1_154\) # (!\u_basic|u_clk_0|cnt\(17))))

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
	datab => \u_basic|u_clk_0|cnt\(17),
	cin => \u_basic|u_clk_0|Add0~67\,
	cin0 => \u_basic|u_clk_0|Add0~82\,
	cin1 => \u_basic|u_clk_0|Add0~82COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~85_combout\,
	cout0 => \u_basic|u_clk_0|Add0~87\,
	cout1 => \u_basic|u_clk_0|Add0~87COUT1_155\);

-- Location: LC_X15_Y1_N7
\u_basic|u_clk_0|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(17) = DFFEAS((((!\u_basic|u_clk_0|Equal0~8_combout\ & \u_basic|u_clk_0|Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(17));

-- Location: LC_X13_Y1_N9
\u_basic|u_clk_0|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~90_combout\ = \u_basic|u_clk_0|cnt\(18) $ ((((!(!\u_basic|u_clk_0|Add0~67\ & \u_basic|u_clk_0|Add0~87\) # (\u_basic|u_clk_0|Add0~67\ & \u_basic|u_clk_0|Add0~87COUT1_155\)))))
-- \u_basic|u_clk_0|Add0~92\ = CARRY((\u_basic|u_clk_0|cnt\(18) & ((!\u_basic|u_clk_0|Add0~87COUT1_155\))))

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
	dataa => \u_basic|u_clk_0|cnt\(18),
	cin => \u_basic|u_clk_0|Add0~67\,
	cin0 => \u_basic|u_clk_0|Add0~87\,
	cin1 => \u_basic|u_clk_0|Add0~87COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~90_combout\,
	cout => \u_basic|u_clk_0|Add0~92\);

-- Location: LC_X14_Y1_N0
\u_basic|u_clk_0|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~95_combout\ = \u_basic|u_clk_0|cnt\(19) $ ((((\u_basic|u_clk_0|Add0~92\))))
-- \u_basic|u_clk_0|Add0~97\ = CARRY(((!\u_basic|u_clk_0|Add0~92\)) # (!\u_basic|u_clk_0|cnt\(19)))
-- \u_basic|u_clk_0|Add0~97COUT1_156\ = CARRY(((!\u_basic|u_clk_0|Add0~92\)) # (!\u_basic|u_clk_0|cnt\(19)))

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
	dataa => \u_basic|u_clk_0|cnt\(19),
	cin => \u_basic|u_clk_0|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~95_combout\,
	cout0 => \u_basic|u_clk_0|Add0~97\,
	cout1 => \u_basic|u_clk_0|Add0~97COUT1_156\);

-- Location: LC_X15_Y1_N1
\u_basic|u_clk_0|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(19) = DFFEAS((((\u_basic|u_clk_0|Add0~95_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_0|Add0~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(19));

-- Location: LC_X15_Y1_N8
\u_basic|u_clk_0|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~5\ = (\u_basic|u_clk_0|cnt\(16) & (\u_basic|u_clk_0|cnt\(17) & (!E10_cnt[18] & !\u_basic|u_clk_0|cnt\(19))))
-- \u_basic|u_clk_0|cnt\(18) = DFFEAS(\u_basic|u_clk_0|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~90_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_0|cnt\(16),
	datab => \u_basic|u_clk_0|cnt\(17),
	datac => \u_basic|u_clk_0|Add0~90_combout\,
	datad => \u_basic|u_clk_0|cnt\(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~5\,
	regout => \u_basic|u_clk_0|cnt\(18));

-- Location: LC_X14_Y1_N1
\u_basic|u_clk_0|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~100_combout\ = (\u_basic|u_clk_0|cnt\(20) $ ((!(!\u_basic|u_clk_0|Add0~92\ & \u_basic|u_clk_0|Add0~97\) # (\u_basic|u_clk_0|Add0~92\ & \u_basic|u_clk_0|Add0~97COUT1_156\))))
-- \u_basic|u_clk_0|Add0~102\ = CARRY(((\u_basic|u_clk_0|cnt\(20) & !\u_basic|u_clk_0|Add0~97\)))
-- \u_basic|u_clk_0|Add0~102COUT1_157\ = CARRY(((\u_basic|u_clk_0|cnt\(20) & !\u_basic|u_clk_0|Add0~97COUT1_156\)))

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
	datab => \u_basic|u_clk_0|cnt\(20),
	cin => \u_basic|u_clk_0|Add0~92\,
	cin0 => \u_basic|u_clk_0|Add0~97\,
	cin1 => \u_basic|u_clk_0|Add0~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~100_combout\,
	cout0 => \u_basic|u_clk_0|Add0~102\,
	cout1 => \u_basic|u_clk_0|Add0~102COUT1_157\);

-- Location: LC_X13_Y2_N6
\u_basic|u_clk_0|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(20) = DFFEAS((!\u_basic|u_clk_0|Equal0~8_combout\ & (((\u_basic|u_clk_0|Add0~100_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(20));

-- Location: LC_X14_Y1_N2
\u_basic|u_clk_0|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~105_combout\ = (\u_basic|u_clk_0|cnt\(21) $ (((!\u_basic|u_clk_0|Add0~92\ & \u_basic|u_clk_0|Add0~102\) # (\u_basic|u_clk_0|Add0~92\ & \u_basic|u_clk_0|Add0~102COUT1_157\))))
-- \u_basic|u_clk_0|Add0~107\ = CARRY(((!\u_basic|u_clk_0|Add0~102\) # (!\u_basic|u_clk_0|cnt\(21))))
-- \u_basic|u_clk_0|Add0~107COUT1_158\ = CARRY(((!\u_basic|u_clk_0|Add0~102COUT1_157\) # (!\u_basic|u_clk_0|cnt\(21))))

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
	datab => \u_basic|u_clk_0|cnt\(21),
	cin => \u_basic|u_clk_0|Add0~92\,
	cin0 => \u_basic|u_clk_0|Add0~102\,
	cin1 => \u_basic|u_clk_0|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~105_combout\,
	cout0 => \u_basic|u_clk_0|Add0~107\,
	cout1 => \u_basic|u_clk_0|Add0~107COUT1_158\);

-- Location: LC_X14_Y1_N3
\u_basic|u_clk_0|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~110_combout\ = \u_basic|u_clk_0|cnt\(22) $ ((((!(!\u_basic|u_clk_0|Add0~92\ & \u_basic|u_clk_0|Add0~107\) # (\u_basic|u_clk_0|Add0~92\ & \u_basic|u_clk_0|Add0~107COUT1_158\)))))
-- \u_basic|u_clk_0|Add0~112\ = CARRY((\u_basic|u_clk_0|cnt\(22) & ((!\u_basic|u_clk_0|Add0~107\))))
-- \u_basic|u_clk_0|Add0~112COUT1_159\ = CARRY((\u_basic|u_clk_0|cnt\(22) & ((!\u_basic|u_clk_0|Add0~107COUT1_158\))))

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
	dataa => \u_basic|u_clk_0|cnt\(22),
	cin => \u_basic|u_clk_0|Add0~92\,
	cin0 => \u_basic|u_clk_0|Add0~107\,
	cin1 => \u_basic|u_clk_0|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~110_combout\,
	cout0 => \u_basic|u_clk_0|Add0~112\,
	cout1 => \u_basic|u_clk_0|Add0~112COUT1_159\);

-- Location: LC_X14_Y1_N4
\u_basic|u_clk_0|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~115_combout\ = (\u_basic|u_clk_0|cnt\(23) $ (((!\u_basic|u_clk_0|Add0~92\ & \u_basic|u_clk_0|Add0~112\) # (\u_basic|u_clk_0|Add0~92\ & \u_basic|u_clk_0|Add0~112COUT1_159\))))
-- \u_basic|u_clk_0|Add0~117\ = CARRY(((!\u_basic|u_clk_0|Add0~112COUT1_159\) # (!\u_basic|u_clk_0|cnt\(23))))

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
	datab => \u_basic|u_clk_0|cnt\(23),
	cin => \u_basic|u_clk_0|Add0~92\,
	cin0 => \u_basic|u_clk_0|Add0~112\,
	cin1 => \u_basic|u_clk_0|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~115_combout\,
	cout => \u_basic|u_clk_0|Add0~117\);

-- Location: LC_X13_Y2_N2
\u_basic|u_clk_0|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~115_combout\, , , VCC)

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
	datac => \u_basic|u_clk_0|Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(23));

-- Location: LC_X13_Y2_N7
\u_basic|u_clk_0|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~6\ = (!\u_basic|u_clk_0|cnt\(22) & (\u_basic|u_clk_0|cnt\(20) & (!E10_cnt[21] & !\u_basic|u_clk_0|cnt\(23))))
-- \u_basic|u_clk_0|cnt\(21) = DFFEAS(\u_basic|u_clk_0|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~105_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_0|cnt\(22),
	datab => \u_basic|u_clk_0|cnt\(20),
	datac => \u_basic|u_clk_0|Add0~105_combout\,
	datad => \u_basic|u_clk_0|cnt\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~6\,
	regout => \u_basic|u_clk_0|cnt\(21));

-- Location: LC_X13_Y2_N5
\u_basic|u_clk_0|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~110_combout\, , , VCC)

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
	datac => \u_basic|u_clk_0|Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(22));

-- Location: LC_X14_Y1_N5
\u_basic|u_clk_0|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~120_combout\ = (\u_basic|u_clk_0|cnt\(24) $ ((!\u_basic|u_clk_0|Add0~117\)))
-- \u_basic|u_clk_0|Add0~122\ = CARRY(((\u_basic|u_clk_0|cnt\(24) & !\u_basic|u_clk_0|Add0~117\)))
-- \u_basic|u_clk_0|Add0~122COUT1_160\ = CARRY(((\u_basic|u_clk_0|cnt\(24) & !\u_basic|u_clk_0|Add0~117\)))

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
	datab => \u_basic|u_clk_0|cnt\(24),
	cin => \u_basic|u_clk_0|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~120_combout\,
	cout0 => \u_basic|u_clk_0|Add0~122\,
	cout1 => \u_basic|u_clk_0|Add0~122COUT1_160\);

-- Location: LC_X14_Y1_N6
\u_basic|u_clk_0|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~125_combout\ = (\u_basic|u_clk_0|cnt\(25) $ (((!\u_basic|u_clk_0|Add0~117\ & \u_basic|u_clk_0|Add0~122\) # (\u_basic|u_clk_0|Add0~117\ & \u_basic|u_clk_0|Add0~122COUT1_160\))))
-- \u_basic|u_clk_0|Add0~127\ = CARRY(((!\u_basic|u_clk_0|Add0~122\) # (!\u_basic|u_clk_0|cnt\(25))))
-- \u_basic|u_clk_0|Add0~127COUT1_161\ = CARRY(((!\u_basic|u_clk_0|Add0~122COUT1_160\) # (!\u_basic|u_clk_0|cnt\(25))))

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
	datab => \u_basic|u_clk_0|cnt\(25),
	cin => \u_basic|u_clk_0|Add0~117\,
	cin0 => \u_basic|u_clk_0|Add0~122\,
	cin1 => \u_basic|u_clk_0|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~125_combout\,
	cout0 => \u_basic|u_clk_0|Add0~127\,
	cout1 => \u_basic|u_clk_0|Add0~127COUT1_161\);

-- Location: LC_X14_Y1_N7
\u_basic|u_clk_0|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~130_combout\ = (\u_basic|u_clk_0|cnt\(26) $ ((!(!\u_basic|u_clk_0|Add0~117\ & \u_basic|u_clk_0|Add0~127\) # (\u_basic|u_clk_0|Add0~117\ & \u_basic|u_clk_0|Add0~127COUT1_161\))))
-- \u_basic|u_clk_0|Add0~132\ = CARRY(((\u_basic|u_clk_0|cnt\(26) & !\u_basic|u_clk_0|Add0~127\)))
-- \u_basic|u_clk_0|Add0~132COUT1_162\ = CARRY(((\u_basic|u_clk_0|cnt\(26) & !\u_basic|u_clk_0|Add0~127COUT1_161\)))

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
	datab => \u_basic|u_clk_0|cnt\(26),
	cin => \u_basic|u_clk_0|Add0~117\,
	cin0 => \u_basic|u_clk_0|Add0~127\,
	cin1 => \u_basic|u_clk_0|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~130_combout\,
	cout0 => \u_basic|u_clk_0|Add0~132\,
	cout1 => \u_basic|u_clk_0|Add0~132COUT1_162\);

-- Location: LC_X14_Y1_N9
\u_basic|u_clk_0|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~130_combout\, , , VCC)

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
	datac => \u_basic|u_clk_0|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(26));

-- Location: LC_X14_Y1_N8
\u_basic|u_clk_0|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Add0~135_combout\ = (((!\u_basic|u_clk_0|Add0~117\ & \u_basic|u_clk_0|Add0~132\) # (\u_basic|u_clk_0|Add0~117\ & \u_basic|u_clk_0|Add0~132COUT1_162\) $ (\u_basic|u_clk_0|cnt\(27))))

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
	datad => \u_basic|u_clk_0|cnt\(27),
	cin => \u_basic|u_clk_0|Add0~117\,
	cin0 => \u_basic|u_clk_0|Add0~132\,
	cin1 => \u_basic|u_clk_0|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Add0~135_combout\);

-- Location: LC_X13_Y2_N9
\u_basic|u_clk_0|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(27) = DFFEAS((((\u_basic|u_clk_0|Add0~135_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_0|Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(27));

-- Location: LC_X13_Y2_N1
\u_basic|u_clk_0|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~7\ = (!\u_basic|u_clk_0|cnt\(25) & (!\u_basic|u_clk_0|cnt\(27) & (!E10_cnt[24] & !\u_basic|u_clk_0|cnt\(26))))
-- \u_basic|u_clk_0|cnt\(24) = DFFEAS(\u_basic|u_clk_0|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~120_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_0|cnt\(25),
	datab => \u_basic|u_clk_0|cnt\(27),
	datac => \u_basic|u_clk_0|Add0~120_combout\,
	datad => \u_basic|u_clk_0|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~7\,
	regout => \u_basic|u_clk_0|cnt\(24));

-- Location: LC_X14_Y2_N8
\u_basic|u_clk_0|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_0|Add0~125_combout\, , , VCC)

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
	datac => \u_basic|u_clk_0|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|cnt\(25));

-- Location: LC_X12_Y2_N4
\u_basic|u_clk_0|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~4_combout\ = (\u_basic|u_clk_0|Equal0~3\ & (\u_basic|u_clk_0|Equal0~2\ & (\u_basic|u_clk_0|Equal0~0\ & \u_basic|u_clk_0|Equal0~1\)))

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
	dataa => \u_basic|u_clk_0|Equal0~3\,
	datab => \u_basic|u_clk_0|Equal0~2\,
	datac => \u_basic|u_clk_0|Equal0~0\,
	datad => \u_basic|u_clk_0|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~4_combout\);

-- Location: LC_X12_Y2_N5
\u_basic|u_clk_0|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|Equal0~8_combout\ = (\u_basic|u_clk_0|Equal0~6\ & (\u_basic|u_clk_0|Equal0~7\ & (\u_basic|u_clk_0|Equal0~5\ & \u_basic|u_clk_0|Equal0~4_combout\)))

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
	dataa => \u_basic|u_clk_0|Equal0~6\,
	datab => \u_basic|u_clk_0|Equal0~7\,
	datac => \u_basic|u_clk_0|Equal0~5\,
	datad => \u_basic|u_clk_0|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_0|Equal0~8_combout\);

-- Location: LC_X12_Y2_N0
\u_basic|u_clk_0|clkout\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_0|clkout~regout\ = DFFEAS(((\u_basic|u_clk_0|Equal0~8_combout\ $ (\u_basic|u_clk_0|clkout~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \u_basic|u_clk_0|Equal0~8_combout\,
	datad => \u_basic|u_clk_0|clkout~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_0|clkout~regout\);

-- Location: LC_X12_Y8_N4
\u_basic|u_debounce|key_sec[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_debounce|key_sec\(0) = DFFEAS(((\BTN~combout\(0))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , \u_basic|u_debounce|Equal0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \BTN~combout\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_debounce|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_debounce|key_sec\(0));

-- Location: LC_X14_Y8_N6
\u_basic|u_debounce|key_sec_pre[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag[0]~6\ = (\u_basic|u_debounce|key_sec\(0) & (\u_basic|u_flag|flag\(1) & (!F1_key_sec_pre[0] & !\u_basic|u_flag|always0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_debounce|key_sec\(0),
	datab => \u_basic|u_flag|flag\(1),
	datac => \u_basic|u_debounce|key_sec\(0),
	datad => \u_basic|u_flag|always0~4\,
	aclr => \BTN_7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_flag|flag[0]~6\,
	regout => \u_basic|u_debounce|key_sec_pre\(0));

-- Location: LC_X14_Y7_N8
\u_basic|u_flag|flag[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_flag|flag\(0) = DFFEAS((\u_basic|u_flag|flag\(0)) # ((\u_basic|u_flag|flag[0]~3_combout\ & (!\u_basic|u_flag|always0~3\ & \u_basic|u_flag|flag[0]~6\))), GLOBAL(\clk~combout\), !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_flag|flag\(0),
	datab => \u_basic|u_flag|flag[0]~3_combout\,
	datac => \u_basic|u_flag|always0~3\,
	datad => \u_basic|u_flag|flag[0]~6\,
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_flag|flag\(0));

-- Location: LC_X13_Y7_N2
\u_basic|u_sequencer_num_0|code[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_0|code\(0) = DFFEAS((((!\u_basic|u_sequencer_num_0|code\(0)))), \u_basic|u_clk_0|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(0), , , , )

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
	clk => \u_basic|u_clk_0|clkout~regout\,
	datad => \u_basic|u_sequencer_num_0|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_0|code\(0));

-- Location: LC_X14_Y9_N5
\u_basic|u_decode_seg|Mux9~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|Mux9~0_combout\ = (\u_basic|u2|cnt\(0) & ((\u_basic|u_decode_seg|cath_control\(1)) # ((\u_basic|u_sequencer_num_1|code\(0))))) # (!\u_basic|u2|cnt\(0) & (!\u_basic|u_decode_seg|cath_control\(1) & 
-- ((\u_basic|u_sequencer_num_0|code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u_decode_seg|cath_control\(1),
	datac => \u_basic|u_sequencer_num_1|code\(0),
	datad => \u_basic|u_sequencer_num_0|code\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|Mux9~0_combout\);

-- Location: LC_X14_Y9_N6
\u_basic|u_decode_seg|Mux9~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|Mux9~1_combout\ = (\u_basic|u_decode_seg|cath_control\(1) & ((\u_basic|u_decode_seg|Mux9~0_combout\ & (\u_basic|u_sequencer_num_3|code\(0))) # (!\u_basic|u_decode_seg|Mux9~0_combout\ & ((\u_basic|u_sequencer_num_2|code\(0)))))) # 
-- (!\u_basic|u_decode_seg|cath_control\(1) & (((\u_basic|u_decode_seg|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datab => \u_basic|u_sequencer_num_3|code\(0),
	datac => \u_basic|u_sequencer_num_2|code\(0),
	datad => \u_basic|u_decode_seg|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|Mux9~1_combout\);

-- Location: LC_X9_Y10_N0
\u_basic|u_clk_5|Add0~40\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~40_combout\ = (\u_basic|u_clk_5|cnt\(9) $ ((\u_basic|u_clk_5|Add0~52\)))
-- \u_basic|u_clk_5|Add0~42\ = CARRY(((!\u_basic|u_clk_5|Add0~52\) # (!\u_basic|u_clk_5|cnt\(9))))
-- \u_basic|u_clk_5|Add0~42COUT1_148\ = CARRY(((!\u_basic|u_clk_5|Add0~52\) # (!\u_basic|u_clk_5|cnt\(9))))

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
	datab => \u_basic|u_clk_5|cnt\(9),
	cin => \u_basic|u_clk_5|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~40_combout\,
	cout0 => \u_basic|u_clk_5|Add0~42\,
	cout1 => \u_basic|u_clk_5|Add0~42COUT1_148\);

-- Location: LC_X10_Y9_N6
\u_basic|u_clk_5|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(9) = DFFEAS((((!\u_basic|u_clk_5|Equal0~8_combout\ & \u_basic|u_clk_5|Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_5|Equal0~8_combout\,
	datad => \u_basic|u_clk_5|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(9));

-- Location: LC_X9_Y10_N1
\u_basic|u_clk_5|Add0~45\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~45_combout\ = (\u_basic|u_clk_5|cnt\(10) $ ((!(!\u_basic|u_clk_5|Add0~52\ & \u_basic|u_clk_5|Add0~42\) # (\u_basic|u_clk_5|Add0~52\ & \u_basic|u_clk_5|Add0~42COUT1_148\))))
-- \u_basic|u_clk_5|Add0~47\ = CARRY(((\u_basic|u_clk_5|cnt\(10) & !\u_basic|u_clk_5|Add0~42\)))
-- \u_basic|u_clk_5|Add0~47COUT1_149\ = CARRY(((\u_basic|u_clk_5|cnt\(10) & !\u_basic|u_clk_5|Add0~42COUT1_148\)))

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
	datab => \u_basic|u_clk_5|cnt\(10),
	cin => \u_basic|u_clk_5|Add0~52\,
	cin0 => \u_basic|u_clk_5|Add0~42\,
	cin1 => \u_basic|u_clk_5|Add0~42COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~45_combout\,
	cout0 => \u_basic|u_clk_5|Add0~47\,
	cout1 => \u_basic|u_clk_5|Add0~47COUT1_149\);

-- Location: LC_X10_Y9_N3
\u_basic|u_clk_5|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(10) = DFFEAS((((!\u_basic|u_clk_5|Equal0~8_combout\ & \u_basic|u_clk_5|Add0~45_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_5|Equal0~8_combout\,
	datad => \u_basic|u_clk_5|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(10));

-- Location: LC_X9_Y10_N2
\u_basic|u_clk_5|Add0~55\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~55_combout\ = (\u_basic|u_clk_5|cnt\(11) $ (((!\u_basic|u_clk_5|Add0~52\ & \u_basic|u_clk_5|Add0~47\) # (\u_basic|u_clk_5|Add0~52\ & \u_basic|u_clk_5|Add0~47COUT1_149\))))
-- \u_basic|u_clk_5|Add0~57\ = CARRY(((!\u_basic|u_clk_5|Add0~47\) # (!\u_basic|u_clk_5|cnt\(11))))
-- \u_basic|u_clk_5|Add0~57COUT1_150\ = CARRY(((!\u_basic|u_clk_5|Add0~47COUT1_149\) # (!\u_basic|u_clk_5|cnt\(11))))

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
	datab => \u_basic|u_clk_5|cnt\(11),
	cin => \u_basic|u_clk_5|Add0~52\,
	cin0 => \u_basic|u_clk_5|Add0~47\,
	cin1 => \u_basic|u_clk_5|Add0~47COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~55_combout\,
	cout0 => \u_basic|u_clk_5|Add0~57\,
	cout1 => \u_basic|u_clk_5|Add0~57COUT1_150\);

-- Location: LC_X9_Y9_N0
\u_basic|u_clk_5|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~55_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(11));

-- Location: LC_X8_Y10_N1
\u_basic|u_clk_5|Add0~35\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~35_combout\ = ((!\u_basic|u_clk_5|cnt\(0)))
-- \u_basic|u_clk_5|Add0~37\ = CARRY(((\u_basic|u_clk_5|cnt\(0))))
-- \u_basic|u_clk_5|Add0~37COUT1_141\ = CARRY(((\u_basic|u_clk_5|cnt\(0))))

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
	datab => \u_basic|u_clk_5|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~35_combout\,
	cout0 => \u_basic|u_clk_5|Add0~37\,
	cout1 => \u_basic|u_clk_5|Add0~37COUT1_141\);

-- Location: LC_X9_Y9_N6
\u_basic|u_clk_5|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(0) = DFFEAS((((\u_basic|u_clk_5|Add0~35_combout\ & !\u_basic|u_clk_5|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_5|Add0~35_combout\,
	datad => \u_basic|u_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(0));

-- Location: LC_X8_Y10_N2
\u_basic|u_clk_5|Add0~30\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~30_combout\ = (\u_basic|u_clk_5|cnt\(1) $ ((\u_basic|u_clk_5|Add0~37\)))
-- \u_basic|u_clk_5|Add0~32\ = CARRY(((!\u_basic|u_clk_5|Add0~37\) # (!\u_basic|u_clk_5|cnt\(1))))
-- \u_basic|u_clk_5|Add0~32COUT1_142\ = CARRY(((!\u_basic|u_clk_5|Add0~37COUT1_141\) # (!\u_basic|u_clk_5|cnt\(1))))

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
	datab => \u_basic|u_clk_5|cnt\(1),
	cin0 => \u_basic|u_clk_5|Add0~37\,
	cin1 => \u_basic|u_clk_5|Add0~37COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~30_combout\,
	cout0 => \u_basic|u_clk_5|Add0~32\,
	cout1 => \u_basic|u_clk_5|Add0~32COUT1_142\);

-- Location: LC_X8_Y8_N0
\u_basic|u_clk_5|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~30_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(1));

-- Location: LC_X8_Y10_N3
\u_basic|u_clk_5|Add0~25\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~25_combout\ = (\u_basic|u_clk_5|cnt\(2) $ ((!\u_basic|u_clk_5|Add0~32\)))
-- \u_basic|u_clk_5|Add0~27\ = CARRY(((\u_basic|u_clk_5|cnt\(2) & !\u_basic|u_clk_5|Add0~32\)))
-- \u_basic|u_clk_5|Add0~27COUT1_143\ = CARRY(((\u_basic|u_clk_5|cnt\(2) & !\u_basic|u_clk_5|Add0~32COUT1_142\)))

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
	datab => \u_basic|u_clk_5|cnt\(2),
	cin0 => \u_basic|u_clk_5|Add0~32\,
	cin1 => \u_basic|u_clk_5|Add0~32COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~25_combout\,
	cout0 => \u_basic|u_clk_5|Add0~27\,
	cout1 => \u_basic|u_clk_5|Add0~27COUT1_143\);

-- Location: LC_X9_Y9_N4
\u_basic|u_clk_5|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~25_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(2));

-- Location: LC_X8_Y10_N4
\u_basic|u_clk_5|Add0~20\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~20_combout\ = \u_basic|u_clk_5|cnt\(3) $ ((((\u_basic|u_clk_5|Add0~27\))))
-- \u_basic|u_clk_5|Add0~22\ = CARRY(((!\u_basic|u_clk_5|Add0~27COUT1_143\)) # (!\u_basic|u_clk_5|cnt\(3)))

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
	dataa => \u_basic|u_clk_5|cnt\(3),
	cin0 => \u_basic|u_clk_5|Add0~27\,
	cin1 => \u_basic|u_clk_5|Add0~27COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~20_combout\,
	cout => \u_basic|u_clk_5|Add0~22\);

-- Location: LC_X9_Y9_N1
\u_basic|u_clk_5|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~1\ = (!\u_basic|u_clk_5|cnt\(0) & (!\u_basic|u_clk_5|cnt\(2) & (!E5_cnt[3] & !\u_basic|u_clk_5|cnt\(1))))
-- \u_basic|u_clk_5|cnt\(3) = DFFEAS(\u_basic|u_clk_5|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~20_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_5|cnt\(0),
	datab => \u_basic|u_clk_5|cnt\(2),
	datac => \u_basic|u_clk_5|Add0~20_combout\,
	datad => \u_basic|u_clk_5|cnt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~1\,
	regout => \u_basic|u_clk_5|cnt\(3));

-- Location: LC_X8_Y10_N5
\u_basic|u_clk_5|Add0~15\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~15_combout\ = (\u_basic|u_clk_5|cnt\(4) $ ((!\u_basic|u_clk_5|Add0~22\)))
-- \u_basic|u_clk_5|Add0~17\ = CARRY(((\u_basic|u_clk_5|cnt\(4) & !\u_basic|u_clk_5|Add0~22\)))
-- \u_basic|u_clk_5|Add0~17COUT1_144\ = CARRY(((\u_basic|u_clk_5|cnt\(4) & !\u_basic|u_clk_5|Add0~22\)))

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
	datab => \u_basic|u_clk_5|cnt\(4),
	cin => \u_basic|u_clk_5|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~15_combout\,
	cout0 => \u_basic|u_clk_5|Add0~17\,
	cout1 => \u_basic|u_clk_5|Add0~17COUT1_144\);

-- Location: LC_X8_Y10_N0
\u_basic|u_clk_5|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~15_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(4));

-- Location: LC_X8_Y10_N6
\u_basic|u_clk_5|Add0~10\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~10_combout\ = (\u_basic|u_clk_5|cnt\(5) $ (((!\u_basic|u_clk_5|Add0~22\ & \u_basic|u_clk_5|Add0~17\) # (\u_basic|u_clk_5|Add0~22\ & \u_basic|u_clk_5|Add0~17COUT1_144\))))
-- \u_basic|u_clk_5|Add0~12\ = CARRY(((!\u_basic|u_clk_5|Add0~17\) # (!\u_basic|u_clk_5|cnt\(5))))
-- \u_basic|u_clk_5|Add0~12COUT1_145\ = CARRY(((!\u_basic|u_clk_5|Add0~17COUT1_144\) # (!\u_basic|u_clk_5|cnt\(5))))

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
	datab => \u_basic|u_clk_5|cnt\(5),
	cin => \u_basic|u_clk_5|Add0~22\,
	cin0 => \u_basic|u_clk_5|Add0~17\,
	cin1 => \u_basic|u_clk_5|Add0~17COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~10_combout\,
	cout0 => \u_basic|u_clk_5|Add0~12\,
	cout1 => \u_basic|u_clk_5|Add0~12COUT1_145\);

-- Location: LC_X9_Y9_N3
\u_basic|u_clk_5|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~10_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(5));

-- Location: LC_X8_Y10_N7
\u_basic|u_clk_5|Add0~5\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~5_combout\ = \u_basic|u_clk_5|cnt\(6) $ ((((!(!\u_basic|u_clk_5|Add0~22\ & \u_basic|u_clk_5|Add0~12\) # (\u_basic|u_clk_5|Add0~22\ & \u_basic|u_clk_5|Add0~12COUT1_145\)))))
-- \u_basic|u_clk_5|Add0~7\ = CARRY((\u_basic|u_clk_5|cnt\(6) & ((!\u_basic|u_clk_5|Add0~12\))))
-- \u_basic|u_clk_5|Add0~7COUT1_146\ = CARRY((\u_basic|u_clk_5|cnt\(6) & ((!\u_basic|u_clk_5|Add0~12COUT1_145\))))

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
	dataa => \u_basic|u_clk_5|cnt\(6),
	cin => \u_basic|u_clk_5|Add0~22\,
	cin0 => \u_basic|u_clk_5|Add0~12\,
	cin1 => \u_basic|u_clk_5|Add0~12COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~5_combout\,
	cout0 => \u_basic|u_clk_5|Add0~7\,
	cout1 => \u_basic|u_clk_5|Add0~7COUT1_146\);

-- Location: LC_X9_Y9_N7
\u_basic|u_clk_5|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~0\ = (!\u_basic|u_clk_5|cnt\(5) & (\u_basic|u_clk_5|cnt\(7) & (!E5_cnt[6] & !\u_basic|u_clk_5|cnt\(4))))
-- \u_basic|u_clk_5|cnt\(6) = DFFEAS(\u_basic|u_clk_5|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~5_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_5|cnt\(5),
	datab => \u_basic|u_clk_5|cnt\(7),
	datac => \u_basic|u_clk_5|Add0~5_combout\,
	datad => \u_basic|u_clk_5|cnt\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~0\,
	regout => \u_basic|u_clk_5|cnt\(6));

-- Location: LC_X8_Y10_N8
\u_basic|u_clk_5|Add0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~0_combout\ = \u_basic|u_clk_5|cnt\(7) $ (((((!\u_basic|u_clk_5|Add0~22\ & \u_basic|u_clk_5|Add0~7\) # (\u_basic|u_clk_5|Add0~22\ & \u_basic|u_clk_5|Add0~7COUT1_146\)))))
-- \u_basic|u_clk_5|Add0~2\ = CARRY(((!\u_basic|u_clk_5|Add0~7\)) # (!\u_basic|u_clk_5|cnt\(7)))
-- \u_basic|u_clk_5|Add0~2COUT1_147\ = CARRY(((!\u_basic|u_clk_5|Add0~7COUT1_146\)) # (!\u_basic|u_clk_5|cnt\(7)))

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
	dataa => \u_basic|u_clk_5|cnt\(7),
	cin => \u_basic|u_clk_5|Add0~22\,
	cin0 => \u_basic|u_clk_5|Add0~7\,
	cin1 => \u_basic|u_clk_5|Add0~7COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~0_combout\,
	cout0 => \u_basic|u_clk_5|Add0~2\,
	cout1 => \u_basic|u_clk_5|Add0~2COUT1_147\);

-- Location: LC_X9_Y9_N8
\u_basic|u_clk_5|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(7) = DFFEAS((((\u_basic|u_clk_5|Add0~0_combout\ & !\u_basic|u_clk_5|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_5|Add0~0_combout\,
	datad => \u_basic|u_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(7));

-- Location: LC_X8_Y10_N9
\u_basic|u_clk_5|Add0~50\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~50_combout\ = (\u_basic|u_clk_5|cnt\(8) $ ((!(!\u_basic|u_clk_5|Add0~22\ & \u_basic|u_clk_5|Add0~2\) # (\u_basic|u_clk_5|Add0~22\ & \u_basic|u_clk_5|Add0~2COUT1_147\))))
-- \u_basic|u_clk_5|Add0~52\ = CARRY(((\u_basic|u_clk_5|cnt\(8) & !\u_basic|u_clk_5|Add0~2COUT1_147\)))

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
	datab => \u_basic|u_clk_5|cnt\(8),
	cin => \u_basic|u_clk_5|Add0~22\,
	cin0 => \u_basic|u_clk_5|Add0~2\,
	cin1 => \u_basic|u_clk_5|Add0~2COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~50_combout\,
	cout => \u_basic|u_clk_5|Add0~52\);

-- Location: LC_X9_Y9_N5
\u_basic|u_clk_5|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~2\ = (\u_basic|u_clk_5|cnt\(10) & (!\u_basic|u_clk_5|cnt\(11) & (!E5_cnt[8] & \u_basic|u_clk_5|cnt\(9))))
-- \u_basic|u_clk_5|cnt\(8) = DFFEAS(\u_basic|u_clk_5|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_5|cnt\(10),
	datab => \u_basic|u_clk_5|cnt\(11),
	datac => \u_basic|u_clk_5|Add0~50_combout\,
	datad => \u_basic|u_clk_5|cnt\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~2\,
	regout => \u_basic|u_clk_5|cnt\(8));

-- Location: LC_X9_Y10_N3
\u_basic|u_clk_5|Add0~60\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~60_combout\ = (\u_basic|u_clk_5|cnt\(12) $ ((!(!\u_basic|u_clk_5|Add0~52\ & \u_basic|u_clk_5|Add0~57\) # (\u_basic|u_clk_5|Add0~52\ & \u_basic|u_clk_5|Add0~57COUT1_150\))))
-- \u_basic|u_clk_5|Add0~62\ = CARRY(((\u_basic|u_clk_5|cnt\(12) & !\u_basic|u_clk_5|Add0~57\)))
-- \u_basic|u_clk_5|Add0~62COUT1_151\ = CARRY(((\u_basic|u_clk_5|cnt\(12) & !\u_basic|u_clk_5|Add0~57COUT1_150\)))

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
	datab => \u_basic|u_clk_5|cnt\(12),
	cin => \u_basic|u_clk_5|Add0~52\,
	cin0 => \u_basic|u_clk_5|Add0~57\,
	cin1 => \u_basic|u_clk_5|Add0~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~60_combout\,
	cout0 => \u_basic|u_clk_5|Add0~62\,
	cout1 => \u_basic|u_clk_5|Add0~62COUT1_151\);

-- Location: LC_X10_Y9_N4
\u_basic|u_clk_5|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(12) = DFFEAS((!\u_basic|u_clk_5|Equal0~8_combout\ & (((\u_basic|u_clk_5|Add0~60_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_5|Equal0~8_combout\,
	datac => \u_basic|u_clk_5|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(12));

-- Location: LC_X9_Y10_N5
\u_basic|u_clk_5|Add0~75\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~75_combout\ = \u_basic|u_clk_5|cnt\(14) $ ((((!\u_basic|u_clk_5|Add0~72\))))
-- \u_basic|u_clk_5|Add0~77\ = CARRY((\u_basic|u_clk_5|cnt\(14) & ((!\u_basic|u_clk_5|Add0~72\))))
-- \u_basic|u_clk_5|Add0~77COUT1_152\ = CARRY((\u_basic|u_clk_5|cnt\(14) & ((!\u_basic|u_clk_5|Add0~72\))))

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
	dataa => \u_basic|u_clk_5|cnt\(14),
	cin => \u_basic|u_clk_5|Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~75_combout\,
	cout0 => \u_basic|u_clk_5|Add0~77\,
	cout1 => \u_basic|u_clk_5|Add0~77COUT1_152\);

-- Location: LC_X10_Y9_N1
\u_basic|u_clk_5|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(14) = DFFEAS((((\u_basic|u_clk_5|Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_5|Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(14));

-- Location: LC_X9_Y10_N4
\u_basic|u_clk_5|Add0~70\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~70_combout\ = \u_basic|u_clk_5|cnt\(13) $ (((((!\u_basic|u_clk_5|Add0~52\ & \u_basic|u_clk_5|Add0~62\) # (\u_basic|u_clk_5|Add0~52\ & \u_basic|u_clk_5|Add0~62COUT1_151\)))))
-- \u_basic|u_clk_5|Add0~72\ = CARRY(((!\u_basic|u_clk_5|Add0~62COUT1_151\)) # (!\u_basic|u_clk_5|cnt\(13)))

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
	dataa => \u_basic|u_clk_5|cnt\(13),
	cin => \u_basic|u_clk_5|Add0~52\,
	cin0 => \u_basic|u_clk_5|Add0~62\,
	cin1 => \u_basic|u_clk_5|Add0~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~70_combout\,
	cout => \u_basic|u_clk_5|Add0~72\);

-- Location: LC_X9_Y10_N6
\u_basic|u_clk_5|Add0~65\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~65_combout\ = \u_basic|u_clk_5|cnt\(15) $ (((((!\u_basic|u_clk_5|Add0~72\ & \u_basic|u_clk_5|Add0~77\) # (\u_basic|u_clk_5|Add0~72\ & \u_basic|u_clk_5|Add0~77COUT1_152\)))))
-- \u_basic|u_clk_5|Add0~67\ = CARRY(((!\u_basic|u_clk_5|Add0~77\)) # (!\u_basic|u_clk_5|cnt\(15)))
-- \u_basic|u_clk_5|Add0~67COUT1_153\ = CARRY(((!\u_basic|u_clk_5|Add0~77COUT1_152\)) # (!\u_basic|u_clk_5|cnt\(15)))

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
	dataa => \u_basic|u_clk_5|cnt\(15),
	cin => \u_basic|u_clk_5|Add0~72\,
	cin0 => \u_basic|u_clk_5|Add0~77\,
	cin1 => \u_basic|u_clk_5|Add0~77COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~65_combout\,
	cout0 => \u_basic|u_clk_5|Add0~67\,
	cout1 => \u_basic|u_clk_5|Add0~67COUT1_153\);

-- Location: LC_X10_Y9_N8
\u_basic|u_clk_5|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(15) = DFFEAS((((!\u_basic|u_clk_5|Equal0~8_combout\ & \u_basic|u_clk_5|Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_5|Equal0~8_combout\,
	datad => \u_basic|u_clk_5|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(15));

-- Location: LC_X10_Y9_N7
\u_basic|u_clk_5|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~3\ = (\u_basic|u_clk_5|cnt\(12) & (!\u_basic|u_clk_5|cnt\(14) & (!E5_cnt[13] & \u_basic|u_clk_5|cnt\(15))))
-- \u_basic|u_clk_5|cnt\(13) = DFFEAS(\u_basic|u_clk_5|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_5|cnt\(12),
	datab => \u_basic|u_clk_5|cnt\(14),
	datac => \u_basic|u_clk_5|Add0~70_combout\,
	datad => \u_basic|u_clk_5|cnt\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~3\,
	regout => \u_basic|u_clk_5|cnt\(13));

-- Location: LC_X9_Y10_N7
\u_basic|u_clk_5|Add0~85\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~85_combout\ = (\u_basic|u_clk_5|cnt\(16) $ ((!(!\u_basic|u_clk_5|Add0~72\ & \u_basic|u_clk_5|Add0~67\) # (\u_basic|u_clk_5|Add0~72\ & \u_basic|u_clk_5|Add0~67COUT1_153\))))
-- \u_basic|u_clk_5|Add0~87\ = CARRY(((\u_basic|u_clk_5|cnt\(16) & !\u_basic|u_clk_5|Add0~67\)))
-- \u_basic|u_clk_5|Add0~87COUT1_154\ = CARRY(((\u_basic|u_clk_5|cnt\(16) & !\u_basic|u_clk_5|Add0~67COUT1_153\)))

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
	datab => \u_basic|u_clk_5|cnt\(16),
	cin => \u_basic|u_clk_5|Add0~72\,
	cin0 => \u_basic|u_clk_5|Add0~67\,
	cin1 => \u_basic|u_clk_5|Add0~67COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~85_combout\,
	cout0 => \u_basic|u_clk_5|Add0~87\,
	cout1 => \u_basic|u_clk_5|Add0~87COUT1_154\);

-- Location: LC_X9_Y10_N8
\u_basic|u_clk_5|Add0~90\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~90_combout\ = (\u_basic|u_clk_5|cnt\(17) $ (((!\u_basic|u_clk_5|Add0~72\ & \u_basic|u_clk_5|Add0~87\) # (\u_basic|u_clk_5|Add0~72\ & \u_basic|u_clk_5|Add0~87COUT1_154\))))
-- \u_basic|u_clk_5|Add0~92\ = CARRY(((!\u_basic|u_clk_5|Add0~87\) # (!\u_basic|u_clk_5|cnt\(17))))
-- \u_basic|u_clk_5|Add0~92COUT1_155\ = CARRY(((!\u_basic|u_clk_5|Add0~87COUT1_154\) # (!\u_basic|u_clk_5|cnt\(17))))

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
	datab => \u_basic|u_clk_5|cnt\(17),
	cin => \u_basic|u_clk_5|Add0~72\,
	cin0 => \u_basic|u_clk_5|Add0~87\,
	cin1 => \u_basic|u_clk_5|Add0~87COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~90_combout\,
	cout0 => \u_basic|u_clk_5|Add0~92\,
	cout1 => \u_basic|u_clk_5|Add0~92COUT1_155\);

-- Location: LC_X9_Y10_N9
\u_basic|u_clk_5|Add0~95\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~95_combout\ = \u_basic|u_clk_5|cnt\(18) $ ((((!(!\u_basic|u_clk_5|Add0~72\ & \u_basic|u_clk_5|Add0~92\) # (\u_basic|u_clk_5|Add0~72\ & \u_basic|u_clk_5|Add0~92COUT1_155\)))))
-- \u_basic|u_clk_5|Add0~97\ = CARRY((\u_basic|u_clk_5|cnt\(18) & ((!\u_basic|u_clk_5|Add0~92COUT1_155\))))

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
	dataa => \u_basic|u_clk_5|cnt\(18),
	cin => \u_basic|u_clk_5|Add0~72\,
	cin0 => \u_basic|u_clk_5|Add0~92\,
	cin1 => \u_basic|u_clk_5|Add0~92COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~95_combout\,
	cout => \u_basic|u_clk_5|Add0~97\);

-- Location: LC_X10_Y10_N0
\u_basic|u_clk_5|Add0~80\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~80_combout\ = \u_basic|u_clk_5|cnt\(19) $ ((((\u_basic|u_clk_5|Add0~97\))))
-- \u_basic|u_clk_5|Add0~82\ = CARRY(((!\u_basic|u_clk_5|Add0~97\)) # (!\u_basic|u_clk_5|cnt\(19)))
-- \u_basic|u_clk_5|Add0~82COUT1_156\ = CARRY(((!\u_basic|u_clk_5|Add0~97\)) # (!\u_basic|u_clk_5|cnt\(19)))

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
	dataa => \u_basic|u_clk_5|cnt\(19),
	cin => \u_basic|u_clk_5|Add0~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~80_combout\,
	cout0 => \u_basic|u_clk_5|Add0~82\,
	cout1 => \u_basic|u_clk_5|Add0~82COUT1_156\);

-- Location: LC_X11_Y10_N0
\u_basic|u_clk_5|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(19) = DFFEAS((((!\u_basic|u_clk_5|Equal0~8_combout\ & \u_basic|u_clk_5|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_5|Equal0~8_combout\,
	datad => \u_basic|u_clk_5|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(19));

-- Location: LC_X11_Y10_N6
\u_basic|u_clk_5|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~5\ = (!\u_basic|u_clk_5|cnt\(18) & (\u_basic|u_clk_5|cnt\(19) & (!E5_cnt[16] & !\u_basic|u_clk_5|cnt\(17))))
-- \u_basic|u_clk_5|cnt\(16) = DFFEAS(\u_basic|u_clk_5|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~85_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_5|cnt\(18),
	datab => \u_basic|u_clk_5|cnt\(19),
	datac => \u_basic|u_clk_5|Add0~85_combout\,
	datad => \u_basic|u_clk_5|cnt\(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~5\,
	regout => \u_basic|u_clk_5|cnt\(16));

-- Location: LC_X10_Y10_N9
\u_basic|u_clk_5|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~90_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(17));

-- Location: LC_X11_Y10_N4
\u_basic|u_clk_5|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~95_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(18));

-- Location: LC_X10_Y10_N1
\u_basic|u_clk_5|Add0~100\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~100_combout\ = (\u_basic|u_clk_5|cnt\(20) $ ((!(!\u_basic|u_clk_5|Add0~97\ & \u_basic|u_clk_5|Add0~82\) # (\u_basic|u_clk_5|Add0~97\ & \u_basic|u_clk_5|Add0~82COUT1_156\))))
-- \u_basic|u_clk_5|Add0~102\ = CARRY(((\u_basic|u_clk_5|cnt\(20) & !\u_basic|u_clk_5|Add0~82\)))
-- \u_basic|u_clk_5|Add0~102COUT1_157\ = CARRY(((\u_basic|u_clk_5|cnt\(20) & !\u_basic|u_clk_5|Add0~82COUT1_156\)))

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
	datab => \u_basic|u_clk_5|cnt\(20),
	cin => \u_basic|u_clk_5|Add0~97\,
	cin0 => \u_basic|u_clk_5|Add0~82\,
	cin1 => \u_basic|u_clk_5|Add0~82COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~100_combout\,
	cout0 => \u_basic|u_clk_5|Add0~102\,
	cout1 => \u_basic|u_clk_5|Add0~102COUT1_157\);

-- Location: LC_X11_Y10_N5
\u_basic|u_clk_5|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(20) = DFFEAS((((\u_basic|u_clk_5|Add0~100_combout\ & !\u_basic|u_clk_5|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_5|Add0~100_combout\,
	datad => \u_basic|u_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(20));

-- Location: LC_X10_Y10_N2
\u_basic|u_clk_5|Add0~110\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~110_combout\ = \u_basic|u_clk_5|cnt\(21) $ (((((!\u_basic|u_clk_5|Add0~97\ & \u_basic|u_clk_5|Add0~102\) # (\u_basic|u_clk_5|Add0~97\ & \u_basic|u_clk_5|Add0~102COUT1_157\)))))
-- \u_basic|u_clk_5|Add0~112\ = CARRY(((!\u_basic|u_clk_5|Add0~102\)) # (!\u_basic|u_clk_5|cnt\(21)))
-- \u_basic|u_clk_5|Add0~112COUT1_158\ = CARRY(((!\u_basic|u_clk_5|Add0~102COUT1_157\)) # (!\u_basic|u_clk_5|cnt\(21)))

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
	dataa => \u_basic|u_clk_5|cnt\(21),
	cin => \u_basic|u_clk_5|Add0~97\,
	cin0 => \u_basic|u_clk_5|Add0~102\,
	cin1 => \u_basic|u_clk_5|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~110_combout\,
	cout0 => \u_basic|u_clk_5|Add0~112\,
	cout1 => \u_basic|u_clk_5|Add0~112COUT1_158\);

-- Location: LC_X11_Y10_N1
\u_basic|u_clk_5|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~6\ = (\u_basic|u_clk_5|cnt\(20) & (!\u_basic|u_clk_5|cnt\(22) & (!E5_cnt[21] & \u_basic|u_clk_5|cnt\(23))))
-- \u_basic|u_clk_5|cnt\(21) = DFFEAS(\u_basic|u_clk_5|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \u_basic|u_clk_5|cnt\(20),
	datab => \u_basic|u_clk_5|cnt\(22),
	datac => \u_basic|u_clk_5|Add0~110_combout\,
	datad => \u_basic|u_clk_5|cnt\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~6\,
	regout => \u_basic|u_clk_5|cnt\(21));

-- Location: LC_X10_Y10_N3
\u_basic|u_clk_5|Add0~115\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~115_combout\ = \u_basic|u_clk_5|cnt\(22) $ ((((!(!\u_basic|u_clk_5|Add0~97\ & \u_basic|u_clk_5|Add0~112\) # (\u_basic|u_clk_5|Add0~97\ & \u_basic|u_clk_5|Add0~112COUT1_158\)))))
-- \u_basic|u_clk_5|Add0~117\ = CARRY((\u_basic|u_clk_5|cnt\(22) & ((!\u_basic|u_clk_5|Add0~112\))))
-- \u_basic|u_clk_5|Add0~117COUT1_159\ = CARRY((\u_basic|u_clk_5|cnt\(22) & ((!\u_basic|u_clk_5|Add0~112COUT1_158\))))

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
	dataa => \u_basic|u_clk_5|cnt\(22),
	cin => \u_basic|u_clk_5|Add0~97\,
	cin0 => \u_basic|u_clk_5|Add0~112\,
	cin1 => \u_basic|u_clk_5|Add0~112COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~115_combout\,
	cout0 => \u_basic|u_clk_5|Add0~117\,
	cout1 => \u_basic|u_clk_5|Add0~117COUT1_159\);

-- Location: LC_X11_Y10_N7
\u_basic|u_clk_5|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(22) = DFFEAS((((\u_basic|u_clk_5|Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_5|Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(22));

-- Location: LC_X10_Y10_N4
\u_basic|u_clk_5|Add0~105\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~105_combout\ = \u_basic|u_clk_5|cnt\(23) $ (((((!\u_basic|u_clk_5|Add0~97\ & \u_basic|u_clk_5|Add0~117\) # (\u_basic|u_clk_5|Add0~97\ & \u_basic|u_clk_5|Add0~117COUT1_159\)))))
-- \u_basic|u_clk_5|Add0~107\ = CARRY(((!\u_basic|u_clk_5|Add0~117COUT1_159\)) # (!\u_basic|u_clk_5|cnt\(23)))

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
	dataa => \u_basic|u_clk_5|cnt\(23),
	cin => \u_basic|u_clk_5|Add0~97\,
	cin0 => \u_basic|u_clk_5|Add0~117\,
	cin1 => \u_basic|u_clk_5|Add0~117COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~105_combout\,
	cout => \u_basic|u_clk_5|Add0~107\);

-- Location: LC_X11_Y10_N3
\u_basic|u_clk_5|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(23) = DFFEAS((((!\u_basic|u_clk_5|Equal0~8_combout\ & \u_basic|u_clk_5|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \u_basic|u_clk_5|Equal0~8_combout\,
	datad => \u_basic|u_clk_5|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(23));

-- Location: LC_X10_Y10_N5
\u_basic|u_clk_5|Add0~120\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~120_combout\ = (\u_basic|u_clk_5|cnt\(24) $ ((!\u_basic|u_clk_5|Add0~107\)))
-- \u_basic|u_clk_5|Add0~122\ = CARRY(((\u_basic|u_clk_5|cnt\(24) & !\u_basic|u_clk_5|Add0~107\)))
-- \u_basic|u_clk_5|Add0~122COUT1_160\ = CARRY(((\u_basic|u_clk_5|cnt\(24) & !\u_basic|u_clk_5|Add0~107\)))

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
	datab => \u_basic|u_clk_5|cnt\(24),
	cin => \u_basic|u_clk_5|Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~120_combout\,
	cout0 => \u_basic|u_clk_5|Add0~122\,
	cout1 => \u_basic|u_clk_5|Add0~122COUT1_160\);

-- Location: LC_X10_Y10_N6
\u_basic|u_clk_5|Add0~125\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~125_combout\ = (\u_basic|u_clk_5|cnt\(25) $ (((!\u_basic|u_clk_5|Add0~107\ & \u_basic|u_clk_5|Add0~122\) # (\u_basic|u_clk_5|Add0~107\ & \u_basic|u_clk_5|Add0~122COUT1_160\))))
-- \u_basic|u_clk_5|Add0~127\ = CARRY(((!\u_basic|u_clk_5|Add0~122\) # (!\u_basic|u_clk_5|cnt\(25))))
-- \u_basic|u_clk_5|Add0~127COUT1_161\ = CARRY(((!\u_basic|u_clk_5|Add0~122COUT1_160\) # (!\u_basic|u_clk_5|cnt\(25))))

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
	datab => \u_basic|u_clk_5|cnt\(25),
	cin => \u_basic|u_clk_5|Add0~107\,
	cin0 => \u_basic|u_clk_5|Add0~122\,
	cin1 => \u_basic|u_clk_5|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~125_combout\,
	cout0 => \u_basic|u_clk_5|Add0~127\,
	cout1 => \u_basic|u_clk_5|Add0~127COUT1_161\);

-- Location: LC_X10_Y10_N7
\u_basic|u_clk_5|Add0~130\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~130_combout\ = (\u_basic|u_clk_5|cnt\(26) $ ((!(!\u_basic|u_clk_5|Add0~107\ & \u_basic|u_clk_5|Add0~127\) # (\u_basic|u_clk_5|Add0~107\ & \u_basic|u_clk_5|Add0~127COUT1_161\))))
-- \u_basic|u_clk_5|Add0~132\ = CARRY(((\u_basic|u_clk_5|cnt\(26) & !\u_basic|u_clk_5|Add0~127\)))
-- \u_basic|u_clk_5|Add0~132COUT1_162\ = CARRY(((\u_basic|u_clk_5|cnt\(26) & !\u_basic|u_clk_5|Add0~127COUT1_161\)))

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
	datab => \u_basic|u_clk_5|cnt\(26),
	cin => \u_basic|u_clk_5|Add0~107\,
	cin0 => \u_basic|u_clk_5|Add0~127\,
	cin1 => \u_basic|u_clk_5|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~130_combout\,
	cout0 => \u_basic|u_clk_5|Add0~132\,
	cout1 => \u_basic|u_clk_5|Add0~132COUT1_162\);

-- Location: LC_X11_Y10_N2
\u_basic|u_clk_5|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(26) = DFFEAS((((\u_basic|u_clk_5|Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \u_basic|u_clk_5|Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(26));

-- Location: LC_X10_Y10_N8
\u_basic|u_clk_5|Add0~135\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Add0~135_combout\ = (\u_basic|u_clk_5|cnt\(27) $ (((!\u_basic|u_clk_5|Add0~107\ & \u_basic|u_clk_5|Add0~132\) # (\u_basic|u_clk_5|Add0~107\ & \u_basic|u_clk_5|Add0~132COUT1_162\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u_clk_5|cnt\(27),
	cin => \u_basic|u_clk_5|Add0~107\,
	cin0 => \u_basic|u_clk_5|Add0~132\,
	cin1 => \u_basic|u_clk_5|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Add0~135_combout\);

-- Location: LC_X11_Y10_N9
\u_basic|u_clk_5|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~135_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(27));

-- Location: LC_X10_Y9_N0
\u_basic|u_clk_5|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~7\ = (!\u_basic|u_clk_5|cnt\(25) & (!\u_basic|u_clk_5|cnt\(27) & (!E5_cnt[24] & !\u_basic|u_clk_5|cnt\(26))))
-- \u_basic|u_clk_5|cnt\(24) = DFFEAS(\u_basic|u_clk_5|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~120_combout\, , , VCC)

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
	dataa => \u_basic|u_clk_5|cnt\(25),
	datab => \u_basic|u_clk_5|cnt\(27),
	datac => \u_basic|u_clk_5|Add0~120_combout\,
	datad => \u_basic|u_clk_5|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~7\,
	regout => \u_basic|u_clk_5|cnt\(24));

-- Location: LC_X11_Y10_N8
\u_basic|u_clk_5|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \u_basic|u_clk_5|Add0~125_combout\, , , VCC)

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
	datac => \u_basic|u_clk_5|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|cnt\(25));

-- Location: LC_X10_Y9_N2
\u_basic|u_clk_5|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~4_combout\ = (\u_basic|u_clk_5|Equal0~2\ & (\u_basic|u_clk_5|Equal0~3\ & (\u_basic|u_clk_5|Equal0~1\ & \u_basic|u_clk_5|Equal0~0\)))

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
	dataa => \u_basic|u_clk_5|Equal0~2\,
	datab => \u_basic|u_clk_5|Equal0~3\,
	datac => \u_basic|u_clk_5|Equal0~1\,
	datad => \u_basic|u_clk_5|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~4_combout\);

-- Location: LC_X10_Y9_N5
\u_basic|u_clk_5|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|Equal0~8_combout\ = (\u_basic|u_clk_5|Equal0~5\ & (\u_basic|u_clk_5|Equal0~7\ & (\u_basic|u_clk_5|Equal0~6\ & \u_basic|u_clk_5|Equal0~4_combout\)))

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
	dataa => \u_basic|u_clk_5|Equal0~5\,
	datab => \u_basic|u_clk_5|Equal0~7\,
	datac => \u_basic|u_clk_5|Equal0~6\,
	datad => \u_basic|u_clk_5|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_clk_5|Equal0~8_combout\);

-- Location: LC_X13_Y9_N9
\u_basic|u_clk_5|clkout\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_clk_5|clkout~regout\ = DFFEAS((\u_basic|u_clk_5|clkout~regout\ $ (((\u_basic|u_clk_5|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \u_basic|u_clk_5|clkout~regout\,
	datad => \u_basic|u_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_clk_5|clkout~regout\);

-- Location: LC_X13_Y9_N5
\u_basic|u_sequencer_eng|code[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_eng|code\(0) = DFFEAS((((!\u_basic|u_sequencer_eng|code\(0)))), \u_basic|u_clk_5|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(5), , , , )

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
	clk => \u_basic|u_clk_5|clkout~regout\,
	datac => \u_basic|u_sequencer_eng|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_eng|code\(0));

-- Location: LC_X13_Y6_N0
\u_basic|u_decode_seg|digit[0]~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit[0]~0_combout\ = (((!\u_basic|u_decode_seg|cath_control\(1)))) # (!\u_basic|u_decode_seg|cath_control\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|cath_control\(2),
	datad => \u_basic|u_decode_seg|cath_control\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|digit[0]~0_combout\);

-- Location: LC_X14_Y9_N2
\u_basic|u_decode_seg|digit[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit\(0) = DFFEAS((\u_basic|u2|cnt\(0) & (((\u_basic|u_sequencer_eng|code\(0))))) # (!\u_basic|u2|cnt\(0) & (\u_basic|u_sequencer_num_4|code\(0))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , 
-- \u_basic|u_decode_seg|digit[0]~0_combout\, \u_basic|u_decode_seg|Mux9~1_combout\, , , !\u_basic|u_decode_seg|cath_control\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u_sequencer_num_4|code\(0),
	datac => \u_basic|u_decode_seg|Mux9~1_combout\,
	datad => \u_basic|u_sequencer_eng|code\(0),
	aclr => GND,
	sload => \u_basic|u_decode_seg|ALT_INV_cath_control\(2),
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit\(0));

-- Location: LC_X13_Y9_N4
\u_basic|u_sequencer_eng|code[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_eng|code\(1) = DFFEAS((\u_basic|u_sequencer_eng|code\(0) & (((!\u_basic|u_sequencer_eng|code\(1) & !\u_basic|u_sequencer_eng|code\(2))))) # (!\u_basic|u_sequencer_eng|code\(0) & (((\u_basic|u_sequencer_eng|code\(1))))), 
-- \u_basic|u_clk_5|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(5), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "505a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_5|clkout~regout\,
	dataa => \u_basic|u_sequencer_eng|code\(0),
	datac => \u_basic|u_sequencer_eng|code\(1),
	datad => \u_basic|u_sequencer_eng|code\(2),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_eng|code\(1));

-- Location: LC_X14_Y9_N7
\u_basic|u_sequencer_eng|code[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_eng|code\(2) = DFFEAS(\u_basic|u_sequencer_eng|code\(2) $ (((\u_basic|u_sequencer_eng|code\(0) & (!\u_basic|u_sequencer_eng|code\(1) & !\u_basic|u_flag|flag\(5))))), \u_basic|u_clk_5|clkout~regout\, !\BTN_7~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_5|clkout~regout\,
	dataa => \u_basic|u_sequencer_eng|code\(0),
	datab => \u_basic|u_sequencer_eng|code\(1),
	datac => \u_basic|u_sequencer_eng|code\(2),
	datad => \u_basic|u_flag|flag\(5),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_eng|code\(2));

-- Location: LC_X15_Y9_N0
\u_basic|u_sequencer_num_3|code[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_3|code\(3) = DFFEAS((\u_basic|u_sequencer_num_3|code\(1) & (\u_basic|u_sequencer_num_3|code\(3) $ (((\u_basic|u_sequencer_num_3|code\(2) & \u_basic|u_sequencer_num_3|code\(0)))))) # (!\u_basic|u_sequencer_num_3|code\(1) & 
-- (\u_basic|u_sequencer_num_3|code\(3) & ((\u_basic|u_sequencer_num_3|code\(2)) # (!\u_basic|u_sequencer_num_3|code\(0))))), \u_basic|u_clk_3|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(3), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "68f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_3|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_3|code\(1),
	datab => \u_basic|u_sequencer_num_3|code\(2),
	datac => \u_basic|u_sequencer_num_3|code\(3),
	datad => \u_basic|u_sequencer_num_3|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_3|code\(3));

-- Location: LC_X15_Y9_N4
\u_basic|u_sequencer_num_3|code[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_3|code\(1) = DFFEAS((\u_basic|u_sequencer_num_3|code\(1) & (((!\u_basic|u_sequencer_num_3|code\(0))))) # (!\u_basic|u_sequencer_num_3|code\(1) & (\u_basic|u_sequencer_num_3|code\(0) & ((\u_basic|u_sequencer_num_3|code\(2)) # 
-- (!\u_basic|u_sequencer_num_3|code\(3))))), \u_basic|u_clk_3|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(3), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "45aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_3|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_3|code\(1),
	datab => \u_basic|u_sequencer_num_3|code\(2),
	datac => \u_basic|u_sequencer_num_3|code\(3),
	datad => \u_basic|u_sequencer_num_3|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_3|code\(1));

-- Location: LC_X15_Y9_N9
\u_basic|u_sequencer_num_3|code[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_3|code\(2) = DFFEAS(\u_basic|u_sequencer_num_3|code\(2) $ (((\u_basic|u_sequencer_num_3|code\(0) & (!\u_basic|u_flag|flag\(3) & \u_basic|u_sequencer_num_3|code\(1))))), \u_basic|u_clk_3|clkout~regout\, !\BTN_7~combout\, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_3|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_3|code\(0),
	datab => \u_basic|u_flag|flag\(3),
	datac => \u_basic|u_sequencer_num_3|code\(1),
	datad => \u_basic|u_sequencer_num_3|code\(2),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_3|code\(2));

-- Location: LC_X15_Y8_N5
\u_basic|u_sequencer_num_2|code[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_2|code\(3) = DFFEAS((\u_basic|u_sequencer_num_2|code\(3) & ((\u_basic|u_sequencer_num_2|code\(2) $ (\u_basic|u_sequencer_num_2|code\(1))) # (!\u_basic|u_sequencer_num_2|code\(0)))) # (!\u_basic|u_sequencer_num_2|code\(3) & 
-- (\u_basic|u_sequencer_num_2|code\(2) & (\u_basic|u_sequencer_num_2|code\(0) & \u_basic|u_sequencer_num_2|code\(1)))), \u_basic|u_clk_2|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_2|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_2|code\(3),
	datab => \u_basic|u_sequencer_num_2|code\(2),
	datac => \u_basic|u_sequencer_num_2|code\(0),
	datad => \u_basic|u_sequencer_num_2|code\(1),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_2|code\(3));

-- Location: LC_X15_Y8_N3
\u_basic|u_sequencer_num_2|code[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_2|code\(1) = DFFEAS((\u_basic|u_sequencer_num_2|code\(0) & (!\u_basic|u_sequencer_num_2|code\(1) & ((\u_basic|u_sequencer_num_2|code\(2)) # (!\u_basic|u_sequencer_num_2|code\(3))))) # (!\u_basic|u_sequencer_num_2|code\(0) & 
-- (((\u_basic|u_sequencer_num_2|code\(1))))), \u_basic|u_clk_2|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fd0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_2|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_2|code\(3),
	datab => \u_basic|u_sequencer_num_2|code\(2),
	datac => \u_basic|u_sequencer_num_2|code\(0),
	datad => \u_basic|u_sequencer_num_2|code\(1),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_2|code\(1));

-- Location: LC_X14_Y8_N7
\u_basic|u_sequencer_num_2|code[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_2|code\(2) = DFFEAS(\u_basic|u_sequencer_num_2|code\(2) $ (((\u_basic|u_sequencer_num_2|code\(1) & (!\u_basic|u_flag|flag\(2) & \u_basic|u_sequencer_num_2|code\(0))))), \u_basic|u_clk_2|clkout~regout\, !\BTN_7~combout\, , , , , , 
-- )

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
	clk => \u_basic|u_clk_2|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_2|code\(1),
	datab => \u_basic|u_flag|flag\(2),
	datac => \u_basic|u_sequencer_num_2|code\(2),
	datad => \u_basic|u_sequencer_num_2|code\(0),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_2|code\(2));

-- Location: LC_X15_Y7_N9
\u_basic|u_sequencer_num_1|code[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_1|code\(3) = DFFEAS((\u_basic|u_sequencer_num_1|code\(1) & (\u_basic|u_sequencer_num_1|code\(3) $ (((\u_basic|u_sequencer_num_1|code\(2) & \u_basic|u_sequencer_num_1|code\(0)))))) # (!\u_basic|u_sequencer_num_1|code\(1) & 
-- (\u_basic|u_sequencer_num_1|code\(3) & ((\u_basic|u_sequencer_num_1|code\(2)) # (!\u_basic|u_sequencer_num_1|code\(0))))), \u_basic|u_clk_1|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(1), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "68cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_1|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_1|code\(1),
	datab => \u_basic|u_sequencer_num_1|code\(3),
	datac => \u_basic|u_sequencer_num_1|code\(2),
	datad => \u_basic|u_sequencer_num_1|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_1|code\(3));

-- Location: LC_X15_Y7_N8
\u_basic|u_sequencer_num_1|code[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_1|code\(1) = DFFEAS((\u_basic|u_sequencer_num_1|code\(1) & (((!\u_basic|u_sequencer_num_1|code\(0))))) # (!\u_basic|u_sequencer_num_1|code\(1) & (\u_basic|u_sequencer_num_1|code\(0) & ((\u_basic|u_sequencer_num_1|code\(2)) # 
-- (!\u_basic|u_sequencer_num_1|code\(3))))), \u_basic|u_clk_1|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(1), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "51aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_1|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_1|code\(1),
	datab => \u_basic|u_sequencer_num_1|code\(3),
	datac => \u_basic|u_sequencer_num_1|code\(2),
	datad => \u_basic|u_sequencer_num_1|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_1|code\(1));

-- Location: LC_X15_Y7_N1
\u_basic|u_sequencer_num_1|code[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_1|code\(2) = DFFEAS(\u_basic|u_sequencer_num_1|code\(2) $ (((!\u_basic|u_flag|flag\(1) & (\u_basic|u_sequencer_num_1|code\(0) & \u_basic|u_sequencer_num_1|code\(1))))), \u_basic|u_clk_1|clkout~regout\, !\BTN_7~combout\, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_1|clkout~regout\,
	dataa => \u_basic|u_flag|flag\(1),
	datab => \u_basic|u_sequencer_num_1|code\(2),
	datac => \u_basic|u_sequencer_num_1|code\(0),
	datad => \u_basic|u_sequencer_num_1|code\(1),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_1|code\(2));

-- Location: LC_X13_Y7_N8
\u_basic|u_sequencer_num_0|code[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_0|code\(3) = DFFEAS((\u_basic|u_sequencer_num_0|code\(3) & ((\u_basic|u_sequencer_num_0|code\(2) $ (\u_basic|u_sequencer_num_0|code\(1))) # (!\u_basic|u_sequencer_num_0|code\(0)))) # (!\u_basic|u_sequencer_num_0|code\(3) & 
-- (\u_basic|u_sequencer_num_0|code\(2) & (\u_basic|u_sequencer_num_0|code\(1) & \u_basic|u_sequencer_num_0|code\(0)))), \u_basic|u_clk_0|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "68aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_0|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_0|code\(3),
	datab => \u_basic|u_sequencer_num_0|code\(2),
	datac => \u_basic|u_sequencer_num_0|code\(1),
	datad => \u_basic|u_sequencer_num_0|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_0|code\(3));

-- Location: LC_X13_Y7_N5
\u_basic|u_sequencer_num_0|code[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_0|code\(1) = DFFEAS((\u_basic|u_sequencer_num_0|code\(1) & (((!\u_basic|u_sequencer_num_0|code\(0))))) # (!\u_basic|u_sequencer_num_0|code\(1) & (\u_basic|u_sequencer_num_0|code\(0) & ((\u_basic|u_sequencer_num_0|code\(2)) # 
-- (!\u_basic|u_sequencer_num_0|code\(3))))), \u_basic|u_clk_0|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0df0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_0|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_0|code\(3),
	datab => \u_basic|u_sequencer_num_0|code\(2),
	datac => \u_basic|u_sequencer_num_0|code\(1),
	datad => \u_basic|u_sequencer_num_0|code\(0),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_0|code\(1));

-- Location: LC_X13_Y7_N7
\u_basic|u_sequencer_num_0|code[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_0|code\(2) = DFFEAS(\u_basic|u_sequencer_num_0|code\(2) $ (((\u_basic|u_sequencer_num_0|code\(0) & (\u_basic|u_sequencer_num_0|code\(1) & !\u_basic|u_flag|flag\(0))))), \u_basic|u_clk_0|clkout~regout\, !\BTN_7~combout\, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_0|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_0|code\(2),
	datab => \u_basic|u_sequencer_num_0|code\(0),
	datac => \u_basic|u_sequencer_num_0|code\(1),
	datad => \u_basic|u_flag|flag\(0),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_0|code\(2));

-- Location: LC_X14_Y9_N3
\u_basic|u_decode_seg|Mux7~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|Mux7~0_combout\ = (\u_basic|u2|cnt\(0) & ((\u_basic|u_decode_seg|cath_control\(1)) # ((\u_basic|u_sequencer_num_1|code\(2))))) # (!\u_basic|u2|cnt\(0) & (!\u_basic|u_decode_seg|cath_control\(1) & 
-- ((\u_basic|u_sequencer_num_0|code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u_decode_seg|cath_control\(1),
	datac => \u_basic|u_sequencer_num_1|code\(2),
	datad => \u_basic|u_sequencer_num_0|code\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|Mux7~0_combout\);

-- Location: LC_X14_Y9_N4
\u_basic|u_decode_seg|Mux7~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|Mux7~1_combout\ = (\u_basic|u_decode_seg|cath_control\(1) & ((\u_basic|u_decode_seg|Mux7~0_combout\ & (\u_basic|u_sequencer_num_3|code\(2))) # (!\u_basic|u_decode_seg|Mux7~0_combout\ & ((\u_basic|u_sequencer_num_2|code\(2)))))) # 
-- (!\u_basic|u_decode_seg|cath_control\(1) & (((\u_basic|u_decode_seg|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datab => \u_basic|u_sequencer_num_3|code\(2),
	datac => \u_basic|u_sequencer_num_2|code\(2),
	datad => \u_basic|u_decode_seg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|Mux7~1_combout\);

-- Location: LC_X14_Y7_N9
\u_basic|u_sequencer_num_4|code[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_4|code\(3) = DFFEAS((\u_basic|u_sequencer_num_4|code\(0) & ((\u_basic|u_sequencer_num_4|code\(3) & (\u_basic|u_sequencer_num_4|code\(1) $ (\u_basic|u_sequencer_num_4|code\(2)))) # (!\u_basic|u_sequencer_num_4|code\(3) & 
-- (\u_basic|u_sequencer_num_4|code\(1) & \u_basic|u_sequencer_num_4|code\(2))))) # (!\u_basic|u_sequencer_num_4|code\(0) & (\u_basic|u_sequencer_num_4|code\(3))), \u_basic|u_clk_4|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(4), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6cc4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_4|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_4|code\(0),
	datab => \u_basic|u_sequencer_num_4|code\(3),
	datac => \u_basic|u_sequencer_num_4|code\(1),
	datad => \u_basic|u_sequencer_num_4|code\(2),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_4|code\(3));

-- Location: LC_X14_Y7_N7
\u_basic|u_sequencer_num_4|code[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_4|code\(1) = DFFEAS((\u_basic|u_sequencer_num_4|code\(0) & (!\u_basic|u_sequencer_num_4|code\(1) & ((\u_basic|u_sequencer_num_4|code\(2)) # (!\u_basic|u_sequencer_num_4|code\(3))))) # (!\u_basic|u_sequencer_num_4|code\(0) & 
-- (((\u_basic|u_sequencer_num_4|code\(1))))), \u_basic|u_clk_4|clkout~regout\, !\BTN_7~combout\, , !\u_basic|u_flag|flag\(4), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "585a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_4|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_4|code\(0),
	datab => \u_basic|u_sequencer_num_4|code\(2),
	datac => \u_basic|u_sequencer_num_4|code\(1),
	datad => \u_basic|u_sequencer_num_4|code\(3),
	aclr => \BTN_7~combout\,
	ena => \u_basic|u_flag|ALT_INV_flag\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_4|code\(1));

-- Location: LC_X12_Y7_N2
\u_basic|u_sequencer_num_4|code[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_sequencer_num_4|code\(2) = DFFEAS(\u_basic|u_sequencer_num_4|code\(2) $ (((\u_basic|u_sequencer_num_4|code\(0) & (\u_basic|u_sequencer_num_4|code\(1) & !\u_basic|u_flag|flag\(4))))), \u_basic|u_clk_4|clkout~regout\, !\BTN_7~combout\, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_4|clkout~regout\,
	dataa => \u_basic|u_sequencer_num_4|code\(2),
	datab => \u_basic|u_sequencer_num_4|code\(0),
	datac => \u_basic|u_sequencer_num_4|code\(1),
	datad => \u_basic|u_flag|flag\(4),
	aclr => \BTN_7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_sequencer_num_4|code\(2));

-- Location: LC_X14_Y9_N8
\u_basic|u_decode_seg|digit[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit\(2) = DFFEAS((\u_basic|u2|cnt\(0) & (\u_basic|u_sequencer_eng|code\(2))) # (!\u_basic|u2|cnt\(0) & (((\u_basic|u_sequencer_num_4|code\(2))))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , 
-- \u_basic|u_decode_seg|digit[0]~0_combout\, \u_basic|u_decode_seg|Mux7~1_combout\, , , !\u_basic|u_decode_seg|cath_control\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u_sequencer_eng|code\(2),
	datac => \u_basic|u_decode_seg|Mux7~1_combout\,
	datad => \u_basic|u_sequencer_num_4|code\(2),
	aclr => GND,
	sload => \u_basic|u_decode_seg|ALT_INV_cath_control\(2),
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit\(2));

-- Location: LC_X14_Y9_N9
\u_basic|u_decode_seg|Mux8~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|Mux8~0_combout\ = (\u_basic|u2|cnt\(0) & ((\u_basic|u_decode_seg|cath_control\(1)) # ((\u_basic|u_sequencer_num_1|code\(1))))) # (!\u_basic|u2|cnt\(0) & (!\u_basic|u_decode_seg|cath_control\(1) & 
-- (\u_basic|u_sequencer_num_0|code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u_decode_seg|cath_control\(1),
	datac => \u_basic|u_sequencer_num_0|code\(1),
	datad => \u_basic|u_sequencer_num_1|code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|Mux8~0_combout\);

-- Location: LC_X14_Y9_N0
\u_basic|u_decode_seg|Mux8~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|Mux8~1_combout\ = (\u_basic|u_decode_seg|cath_control\(1) & ((\u_basic|u_decode_seg|Mux8~0_combout\ & (\u_basic|u_sequencer_num_3|code\(1))) # (!\u_basic|u_decode_seg|Mux8~0_combout\ & ((\u_basic|u_sequencer_num_2|code\(1)))))) # 
-- (!\u_basic|u_decode_seg|cath_control\(1) & (((\u_basic|u_decode_seg|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datab => \u_basic|u_sequencer_num_3|code\(1),
	datac => \u_basic|u_sequencer_num_2|code\(1),
	datad => \u_basic|u_decode_seg|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|Mux8~1_combout\);

-- Location: LC_X14_Y9_N1
\u_basic|u_decode_seg|digit[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit\(1) = DFFEAS((\u_basic|u2|cnt\(0) & (!\u_basic|u_sequencer_eng|code\(1))) # (!\u_basic|u2|cnt\(0) & (((\u_basic|u_sequencer_num_4|code\(1))))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , 
-- \u_basic|u_decode_seg|digit[0]~0_combout\, \u_basic|u_decode_seg|Mux8~1_combout\, , , !\u_basic|u_decode_seg|cath_control\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7722",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u2|cnt\(0),
	datab => \u_basic|u_sequencer_eng|code\(1),
	datac => \u_basic|u_decode_seg|Mux8~1_combout\,
	datad => \u_basic|u_sequencer_num_4|code\(1),
	aclr => GND,
	sload => \u_basic|u_decode_seg|ALT_INV_cath_control\(2),
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit\(1));

-- Location: LC_X16_Y7_N3
\u_basic|u_decode_seg|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|Mux6~0_combout\ = (\u_basic|u_decode_seg|cath_control\(1) & (\u_basic|u2|cnt\(0))) # (!\u_basic|u_decode_seg|cath_control\(1) & ((\u_basic|u2|cnt\(0) & (\u_basic|u_sequencer_num_1|code\(3))) # (!\u_basic|u2|cnt\(0) & 
-- ((\u_basic|u_sequencer_num_0|code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datab => \u_basic|u2|cnt\(0),
	datac => \u_basic|u_sequencer_num_1|code\(3),
	datad => \u_basic|u_sequencer_num_0|code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|Mux6~0_combout\);

-- Location: LC_X16_Y7_N4
\u_basic|u_decode_seg|Mux6~1\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|Mux6~1_combout\ = (\u_basic|u_decode_seg|cath_control\(1) & ((\u_basic|u_decode_seg|Mux6~0_combout\ & (\u_basic|u_sequencer_num_3|code\(3))) # (!\u_basic|u_decode_seg|Mux6~0_combout\ & ((\u_basic|u_sequencer_num_2|code\(3)))))) # 
-- (!\u_basic|u_decode_seg|cath_control\(1) & (((\u_basic|u_decode_seg|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datab => \u_basic|u_sequencer_num_3|code\(3),
	datac => \u_basic|u_sequencer_num_2|code\(3),
	datad => \u_basic|u_decode_seg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|Mux6~1_combout\);

-- Location: LC_X16_Y7_N6
\u_basic|u_decode_seg|digit[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit\(3) = DFFEAS(((\u_basic|u2|cnt\(0)) # ((\u_basic|u_sequencer_num_4|code\(3)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u_decode_seg|digit[0]~0_combout\, \u_basic|u_decode_seg|Mux6~1_combout\, , , 
-- !\u_basic|u_decode_seg|cath_control\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	datab => \u_basic|u2|cnt\(0),
	datac => \u_basic|u_decode_seg|Mux6~1_combout\,
	datad => \u_basic|u_sequencer_num_4|code\(3),
	aclr => GND,
	sload => \u_basic|u_decode_seg|ALT_INV_cath_control\(2),
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit\(3));

-- Location: LC_X10_Y6_N7
\u_basic|u_decode_seg|WideOr6~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|WideOr6~0_combout\ = (\u_basic|u_decode_seg|digit\(1) & (((!\u_basic|u_decode_seg|digit\(2) & !\u_basic|u_decode_seg|digit\(3))) # (!\u_basic|u_decode_seg|digit\(0)))) # (!\u_basic|u_decode_seg|digit\(1) & 
-- (((\u_basic|u_decode_seg|digit\(2)) # (\u_basic|u_decode_seg|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|digit\(0),
	datab => \u_basic|u_decode_seg|digit\(2),
	datac => \u_basic|u_decode_seg|digit\(1),
	datad => \u_basic|u_decode_seg|digit\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|WideOr6~0_combout\);

-- Location: LC_X10_Y5_N4
\digit_scan~1\ : maxii_lcell
-- Equation(s):
-- \digit_scan~1_combout\ = (\sw~combout\ & (\u_basic|u_decode_seg|WideOr6~0_combout\)) # (!\sw~combout\ & (((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\,
	datab => \u_basic|u_decode_seg|WideOr6~0_combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_scan~1_combout\);

-- Location: LC_X10_Y6_N1
\u_basic|u_decode_seg|WideOr5~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|WideOr5~0_combout\ = (!\u_basic|u_decode_seg|digit\(3) & ((\u_basic|u_decode_seg|digit\(0) & ((\u_basic|u_decode_seg|digit\(1)) # (!\u_basic|u_decode_seg|digit\(2)))) # (!\u_basic|u_decode_seg|digit\(0) & 
-- (!\u_basic|u_decode_seg|digit\(2) & \u_basic|u_decode_seg|digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|digit\(0),
	datab => \u_basic|u_decode_seg|digit\(2),
	datac => \u_basic|u_decode_seg|digit\(1),
	datad => \u_basic|u_decode_seg|digit\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|WideOr5~0_combout\);

-- Location: LC_X10_Y5_N7
\digit_scan~2\ : maxii_lcell
-- Equation(s):
-- \digit_scan~2_combout\ = (\sw~combout\ & (!\u_basic|u_decode_seg|WideOr5~0_combout\)) # (!\sw~combout\ & (((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2277",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\,
	datab => \u_basic|u_decode_seg|WideOr5~0_combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_scan~2_combout\);

-- Location: LC_X10_Y6_N6
\u_basic|u_decode_seg|WideOr4~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|WideOr4~0_combout\ = (\u_basic|u_decode_seg|digit\(1) & (\u_basic|u_decode_seg|digit\(0) & ((!\u_basic|u_decode_seg|digit\(3))))) # (!\u_basic|u_decode_seg|digit\(1) & ((\u_basic|u_decode_seg|digit\(2) & 
-- ((!\u_basic|u_decode_seg|digit\(3)))) # (!\u_basic|u_decode_seg|digit\(2) & (\u_basic|u_decode_seg|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|digit\(0),
	datab => \u_basic|u_decode_seg|digit\(2),
	datac => \u_basic|u_decode_seg|digit\(1),
	datad => \u_basic|u_decode_seg|digit\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|WideOr4~0_combout\);

-- Location: LC_X10_Y5_N6
\digit_scan~3\ : maxii_lcell
-- Equation(s):
-- \digit_scan~3_combout\ = (\sw~combout\ & (((!\u_basic|u_decode_seg|WideOr4~0_combout\)))) # (!\sw~combout\ & (((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\,
	datac => \u_basic|u_decode_seg|WideOr4~0_combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_scan~3_combout\);

-- Location: LC_X10_Y6_N8
\u_basic|u_decode_seg|WideOr3~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|WideOr3~0_combout\ = (\u_basic|u_decode_seg|digit\(2) & (\u_basic|u_decode_seg|digit\(0) $ (\u_basic|u_decode_seg|digit\(1) $ (!\u_basic|u_decode_seg|digit\(3))))) # (!\u_basic|u_decode_seg|digit\(2) & 
-- ((\u_basic|u_decode_seg|digit\(0) & (!\u_basic|u_decode_seg|digit\(1) & !\u_basic|u_decode_seg|digit\(3))) # (!\u_basic|u_decode_seg|digit\(0) & (\u_basic|u_decode_seg|digit\(1) & \u_basic|u_decode_seg|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5886",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|digit\(0),
	datab => \u_basic|u_decode_seg|digit\(2),
	datac => \u_basic|u_decode_seg|digit\(1),
	datad => \u_basic|u_decode_seg|digit\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|WideOr3~0_combout\);

-- Location: LC_X10_Y5_N9
\digit_scan~4\ : maxii_lcell
-- Equation(s):
-- \digit_scan~4_combout\ = (\sw~combout\ & (!\u_basic|u_decode_seg|WideOr3~0_combout\)) # (!\sw~combout\ & (((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2277",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\,
	datab => \u_basic|u_decode_seg|WideOr3~0_combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_scan~4_combout\);

-- Location: LC_X10_Y6_N4
\u_basic|u_decode_seg|WideOr2~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|WideOr2~0_combout\ = (\u_basic|u_decode_seg|digit\(2) & (\u_basic|u_decode_seg|digit\(3) & ((\u_basic|u_decode_seg|digit\(0)) # (!\u_basic|u_decode_seg|digit\(1))))) # (!\u_basic|u_decode_seg|digit\(2) & 
-- (\u_basic|u_decode_seg|digit\(1) & (\u_basic|u_decode_seg|digit\(0) $ (!\u_basic|u_decode_seg|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|digit\(0),
	datab => \u_basic|u_decode_seg|digit\(2),
	datac => \u_basic|u_decode_seg|digit\(1),
	datad => \u_basic|u_decode_seg|digit\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|WideOr2~0_combout\);

-- Location: LC_X10_Y6_N5
\digit_scan~5\ : maxii_lcell
-- Equation(s):
-- \digit_scan~5_combout\ = ((\sw~combout\ & (!\u_basic|u_decode_seg|WideOr2~0_combout\)) # (!\sw~combout\ & ((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "505f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|WideOr2~0_combout\,
	datac => \sw~combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_scan~5_combout\);

-- Location: LC_X10_Y6_N2
\u_basic|u_decode_seg|WideOr1~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|WideOr1~0_combout\ = (\u_basic|u_decode_seg|digit\(0) & ((\u_basic|u_decode_seg|digit\(1) & ((\u_basic|u_decode_seg|digit\(3)))) # (!\u_basic|u_decode_seg|digit\(1) & (\u_basic|u_decode_seg|digit\(2))))) # 
-- (!\u_basic|u_decode_seg|digit\(0) & (\u_basic|u_decode_seg|digit\(2) & (\u_basic|u_decode_seg|digit\(1) $ (\u_basic|u_decode_seg|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|digit\(0),
	datab => \u_basic|u_decode_seg|digit\(2),
	datac => \u_basic|u_decode_seg|digit\(1),
	datad => \u_basic|u_decode_seg|digit\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|WideOr1~0_combout\);

-- Location: LC_X10_Y6_N9
\digit_scan~6\ : maxii_lcell
-- Equation(s):
-- \digit_scan~6_combout\ = ((\sw~combout\ & (!\u_basic|u_decode_seg|WideOr1~0_combout\)) # (!\sw~combout\ & ((!\u_startup|code_test~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "303f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_basic|u_decode_seg|WideOr1~0_combout\,
	datac => \sw~combout\,
	datad => \u_startup|code_test~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_scan~6_combout\);

-- Location: LC_X10_Y6_N0
\u_basic|u_decode_seg|WideOr0~0\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|WideOr0~0_combout\ = (\u_basic|u_decode_seg|digit\(1) & (((\u_basic|u_decode_seg|digit\(2) & \u_basic|u_decode_seg|digit\(3))))) # (!\u_basic|u_decode_seg|digit\(1) & (!\u_basic|u_decode_seg|digit\(3) & 
-- (\u_basic|u_decode_seg|digit\(0) $ (\u_basic|u_decode_seg|digit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c006",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|digit\(0),
	datab => \u_basic|u_decode_seg|digit\(2),
	datac => \u_basic|u_decode_seg|digit\(1),
	datad => \u_basic|u_decode_seg|digit\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_basic|u_decode_seg|WideOr0~0_combout\);

-- Location: LC_X10_Y5_N5
\digit_scan~7\ : maxii_lcell
-- Equation(s):
-- \digit_scan~7_combout\ = (\sw~combout\ & (((!\u_basic|u_decode_seg|WideOr0~0_combout\)))) # (!\sw~combout\ & (!\u_startup|code_test~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\,
	datab => \u_startup|code_test~regout\,
	datad => \u_basic|u_decode_seg|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_scan~7_combout\);

-- Location: LC_X7_Y7_N7
\u_startup|u_decode_seg_startup|digit_cath[0]~0\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\ = (((!\u_startup|u_decode_lattice_startup|cnt\(1)) # (!\u_startup|u_decode_lattice_startup|cnt\(2))))

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
	datac => \u_startup|u_decode_lattice_startup|cnt\(2),
	datad => \u_startup|u_decode_lattice_startup|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\);

-- Location: LC_X7_Y7_N5
\u_startup|u_decode_seg_startup|digit_cath[0]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_seg_startup|digit_cath\(0) = DFFEAS((((!\u_startup|u_decode_lattice_startup|Decoder0~0_combout\))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\, , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datad => \u_startup|u_decode_lattice_startup|Decoder0~0_combout\,
	aclr => GND,
	ena => \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_seg_startup|digit_cath\(0));

-- Location: LC_X12_Y6_N4
\u_basic|u_decode_seg|digit_cath[0]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit_cath\(0) = DFFEAS((\u_basic|u_decode_seg|cath_control\(1)) # (((\u_basic|u_decode_seg|cath_control\(2)) # (\u_basic|u2|cnt\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u_decode_seg|digit[0]~0_combout\, , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datac => \u_basic|u_decode_seg|cath_control\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit_cath\(0));

-- Location: LC_X10_Y6_N3
\digit_cath~0\ : maxii_lcell
-- Equation(s):
-- \digit_cath~0_combout\ = (\sw~combout\ & (((\u_basic|u_decode_seg|digit_cath\(0))))) # (!\sw~combout\ & (((\u_startup|u_decode_seg_startup|digit_cath\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\,
	datac => \u_startup|u_decode_seg_startup|digit_cath\(0),
	datad => \u_basic|u_decode_seg|digit_cath\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_cath~0_combout\);

-- Location: LC_X7_Y7_N0
\u_startup|u_decode_seg_startup|digit_cath[1]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_seg_startup|digit_cath\(1) = DFFEAS((((!\u_startup|u_decode_lattice_startup|Decoder0~1_combout\))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\, , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datad => \u_startup|u_decode_lattice_startup|Decoder0~1_combout\,
	aclr => GND,
	ena => \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_seg_startup|digit_cath\(1));

-- Location: LC_X12_Y6_N1
\u_basic|u_decode_seg|digit_cath[1]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit_cath\(1) = DFFEAS((\u_basic|u_decode_seg|cath_control\(1)) # (((\u_basic|u_decode_seg|cath_control\(2)) # (!\u_basic|u2|cnt\(0)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u_decode_seg|digit[0]~0_combout\, , 
-- , , )

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
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datac => \u_basic|u_decode_seg|cath_control\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit_cath\(1));

-- Location: LC_X11_Y6_N7
\digit_cath~1\ : maxii_lcell
-- Equation(s):
-- \digit_cath~1_combout\ = ((\sw~combout\ & ((\u_basic|u_decode_seg|digit_cath\(1)))) # (!\sw~combout\ & (\u_startup|u_decode_seg_startup|digit_cath\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\,
	datac => \u_startup|u_decode_seg_startup|digit_cath\(1),
	datad => \u_basic|u_decode_seg|digit_cath\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_cath~1_combout\);

-- Location: LC_X7_Y7_N8
\u_startup|u_decode_seg_startup|digit_cath[2]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_seg_startup|digit_cath\(2) = DFFEAS((((!\u_startup|u_decode_lattice_startup|Decoder0~2_combout\))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\, , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datad => \u_startup|u_decode_lattice_startup|Decoder0~2_combout\,
	aclr => GND,
	ena => \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_seg_startup|digit_cath\(2));

-- Location: LC_X12_Y6_N9
\u_basic|u_decode_seg|digit_cath[2]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit_cath\(2) = DFFEAS((((\u_basic|u_decode_seg|cath_control\(2)) # (\u_basic|u2|cnt\(0)))) # (!\u_basic|u_decode_seg|cath_control\(1)), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u_decode_seg|digit[0]~0_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datac => \u_basic|u_decode_seg|cath_control\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit_cath\(2));

-- Location: LC_X11_Y6_N6
\digit_cath~2\ : maxii_lcell
-- Equation(s):
-- \digit_cath~2_combout\ = (\sw~combout\ & (((\u_basic|u_decode_seg|digit_cath\(2))))) # (!\sw~combout\ & (\u_startup|u_decode_seg_startup|digit_cath\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_startup|u_decode_seg_startup|digit_cath\(2),
	datab => \sw~combout\,
	datad => \u_basic|u_decode_seg|digit_cath\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_cath~2_combout\);

-- Location: LC_X7_Y7_N3
\u_startup|u_decode_seg_startup|digit_cath[3]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_seg_startup|digit_cath\(3) = DFFEAS((((!\u_startup|u_decode_lattice_startup|Decoder0~3_combout\))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\, , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datad => \u_startup|u_decode_lattice_startup|Decoder0~3_combout\,
	aclr => GND,
	ena => \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_seg_startup|digit_cath\(3));

-- Location: LC_X12_Y9_N9
\u_basic|u_decode_seg|digit_cath[3]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit_cath\(3) = DFFEAS((((\u_basic|u_decode_seg|cath_control\(2)) # (!\u_basic|u2|cnt\(0)))) # (!\u_basic|u_decode_seg|cath_control\(1)), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u_decode_seg|digit[0]~0_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_basic|u_clk_500|clkout~regout\,
	dataa => \u_basic|u_decode_seg|cath_control\(1),
	datac => \u_basic|u2|cnt\(0),
	datad => \u_basic|u_decode_seg|cath_control\(2),
	aclr => GND,
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit_cath\(3));

-- Location: LC_X11_Y7_N2
\digit_cath~3\ : maxii_lcell
-- Equation(s):
-- \digit_cath~3_combout\ = ((\sw~combout\ & ((\u_basic|u_decode_seg|digit_cath\(3)))) # (!\sw~combout\ & (\u_startup|u_decode_seg_startup|digit_cath\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\,
	datac => \u_startup|u_decode_seg_startup|digit_cath\(3),
	datad => \u_basic|u_decode_seg|digit_cath\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_cath~3_combout\);

-- Location: LC_X12_Y6_N3
\u_basic|u_decode_seg|digit_cath[4]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit_cath\(4) = DFFEAS((((\u_basic|u2|cnt\(0)) # (!\u_basic|u_decode_seg|cath_control\(2)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u_decode_seg|digit[0]~0_combout\, , , , )

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
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_decode_seg|cath_control\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit_cath\(4));

-- Location: LC_X7_Y7_N6
\u_startup|u_decode_seg_startup|digit_cath[4]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_seg_startup|digit_cath\(4) = DFFEAS((((\u_startup|u_decode_lattice_startup|cnt\(0)) # (!\u_startup|u_decode_lattice_startup|cnt\(2)))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , 
-- \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\, , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datac => \u_startup|u_decode_lattice_startup|cnt\(2),
	datad => \u_startup|u_decode_lattice_startup|cnt\(0),
	aclr => GND,
	ena => \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_seg_startup|digit_cath\(4));

-- Location: LC_X11_Y6_N5
\digit_cath~4\ : maxii_lcell
-- Equation(s):
-- \digit_cath~4_combout\ = ((\sw~combout\ & (\u_basic|u_decode_seg|digit_cath\(4))) # (!\sw~combout\ & ((\u_startup|u_decode_seg_startup|digit_cath\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_basic|u_decode_seg|digit_cath\(4),
	datac => \u_startup|u_decode_seg_startup|digit_cath\(4),
	datad => \sw~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_cath~4_combout\);

-- Location: LC_X12_Y6_N2
\u_basic|u_decode_seg|digit_cath[5]\ : maxii_lcell
-- Equation(s):
-- \u_basic|u_decode_seg|digit_cath\(5) = DFFEAS((((!\u_basic|u2|cnt\(0)) # (!\u_basic|u_decode_seg|cath_control\(2)))), GLOBAL(\u_basic|u_clk_500|clkout~regout\), VCC, , \u_basic|u_decode_seg|digit[0]~0_combout\, , , , )

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
	clk => \u_basic|u_clk_500|clkout~regout\,
	datac => \u_basic|u_decode_seg|cath_control\(2),
	datad => \u_basic|u2|cnt\(0),
	aclr => GND,
	ena => \u_basic|u_decode_seg|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_basic|u_decode_seg|digit_cath\(5));

-- Location: LC_X7_Y7_N9
\u_startup|u_decode_seg_startup|digit_cath[5]\ : maxii_lcell
-- Equation(s):
-- \u_startup|u_decode_seg_startup|digit_cath\(5) = DFFEAS((((!\u_startup|u_decode_lattice_startup|cnt\(0)) # (!\u_startup|u_decode_lattice_startup|cnt\(2)))), GLOBAL(\u_startup|u_clk_500|clkout~regout\), VCC, , 
-- \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\, , , , )

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
	clk => \u_startup|u_clk_500|clkout~regout\,
	datac => \u_startup|u_decode_lattice_startup|cnt\(2),
	datad => \u_startup|u_decode_lattice_startup|cnt\(0),
	aclr => GND,
	ena => \u_startup|u_decode_seg_startup|digit_cath[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_startup|u_decode_seg_startup|digit_cath\(5));

-- Location: LC_X11_Y6_N8
\digit_cath~5\ : maxii_lcell
-- Equation(s):
-- \digit_cath~5_combout\ = ((\sw~combout\ & (\u_basic|u_decode_seg|digit_cath\(5))) # (!\sw~combout\ & ((\u_startup|u_decode_seg_startup|digit_cath\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\,
	datac => \u_basic|u_decode_seg|digit_cath\(5),
	datad => \u_startup|u_decode_seg_startup|digit_cath\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \digit_cath~5_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \row~0_combout\,
	oe => VCC,
	padio => ww_row(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \row~1_combout\,
	oe => VCC,
	padio => ww_row(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \row~2_combout\,
	oe => VCC,
	padio => ww_row(2));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \row~3_combout\,
	oe => VCC,
	padio => ww_row(3));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \row~4_combout\,
	oe => VCC,
	padio => ww_row(4));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \row~5_combout\,
	oe => VCC,
	padio => ww_row(5));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \row~6_combout\,
	oe => VCC,
	padio => ww_row(6));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \row~7_combout\,
	oe => VCC,
	padio => ww_row(7));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col~0_combout\,
	oe => VCC,
	padio => ww_col(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col~1_combout\,
	oe => VCC,
	padio => ww_col(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col~2_combout\,
	oe => VCC,
	padio => ww_col(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col~3_combout\,
	oe => VCC,
	padio => ww_col(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col~4_combout\,
	oe => VCC,
	padio => ww_col(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col~5_combout\,
	oe => VCC,
	padio => ww_col(5));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col~6_combout\,
	oe => VCC,
	padio => ww_col(6));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col~7_combout\,
	oe => VCC,
	padio => ww_col(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_scan~0_combout\,
	oe => VCC,
	padio => ww_digit_scan(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_scan~1_combout\,
	oe => VCC,
	padio => ww_digit_scan(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_scan~2_combout\,
	oe => VCC,
	padio => ww_digit_scan(2));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_scan~3_combout\,
	oe => VCC,
	padio => ww_digit_scan(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_scan~4_combout\,
	oe => VCC,
	padio => ww_digit_scan(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_scan~5_combout\,
	oe => VCC,
	padio => ww_digit_scan(5));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_scan~6_combout\,
	oe => VCC,
	padio => ww_digit_scan(6));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_scan[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_scan~7_combout\,
	oe => VCC,
	padio => ww_digit_scan(7));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_cath~0_combout\,
	oe => VCC,
	padio => ww_digit_cath(0));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_cath~1_combout\,
	oe => VCC,
	padio => ww_digit_cath(1));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_cath~2_combout\,
	oe => VCC,
	padio => ww_digit_cath(2));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_cath~3_combout\,
	oe => VCC,
	padio => ww_digit_cath(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_cath~4_combout\,
	oe => VCC,
	padio => ww_digit_cath(4));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\digit_cath[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \digit_cath~5_combout\,
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


