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

-- DATE "12/12/2018 21:57:33"

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

ENTITY 	bell IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	bell_code : IN std_logic_vector(2 DOWNTO 0);
	bell_pulse : IN std_logic;
	frequncy_bell : OUT std_logic
	);
END bell;

-- Design Ports Information
-- rst	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- frequncy_bell	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- bell_code[0]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bell_code[1]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bell_pulse	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bell_code[2]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bell IS
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
SIGNAL ww_bell_code : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_bell_pulse : std_logic;
SIGNAL ww_frequncy_bell : std_logic;
SIGNAL \bell_pulse~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~65_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~45_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~47\ : std_logic;
SIGNAL \bell_clk_6|Add0~47COUT1_136\ : std_logic;
SIGNAL \bell_clk_6|Add0~40_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~7\ : std_logic;
SIGNAL \bell_clk_6|Add0~7COUT1_142\ : std_logic;
SIGNAL \bell_clk_6|Add0~0_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~2\ : std_logic;
SIGNAL \bell_clk_6|Add0~2COUT1_143\ : std_logic;
SIGNAL \bell_clk_6|Add0~50_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~42\ : std_logic;
SIGNAL \bell_clk_6|Add0~42COUT1_137\ : std_logic;
SIGNAL \bell_clk_6|Add0~35_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~52\ : std_logic;
SIGNAL \bell_clk_6|Add0~52COUT1_144\ : std_logic;
SIGNAL \bell_clk_6|Add0~55_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~57\ : std_logic;
SIGNAL \bell_clk_6|Add0~57COUT1_145\ : std_logic;
SIGNAL \bell_clk_6|Add0~60_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~62\ : std_logic;
SIGNAL \bell_clk_6|Add0~65_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~67\ : std_logic;
SIGNAL \bell_clk_6|Add0~67COUT1_146\ : std_logic;
SIGNAL \bell_clk_6|Add0~70_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~72\ : std_logic;
SIGNAL \bell_clk_6|Add0~72COUT1_147\ : std_logic;
SIGNAL \bell_clk_6|Add0~75_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~77COUT1_148\ : std_logic;
SIGNAL \bell_clk_6|Add0~82COUT1_149\ : std_logic;
SIGNAL \bell_clk_6|Add0~87\ : std_logic;
SIGNAL \bell_clk_6|Add0~90_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~77\ : std_logic;
SIGNAL \bell_clk_6|Add0~80_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~82\ : std_logic;
SIGNAL \bell_clk_6|Add0~85_combout\ : std_logic;
SIGNAL \bell_clk_6|Equal0~5\ : std_logic;
SIGNAL \bell_clk_6|Add0~92\ : std_logic;
SIGNAL \bell_clk_6|Add0~92COUT1_150\ : std_logic;
SIGNAL \bell_clk_6|Add0~95_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~97\ : std_logic;
SIGNAL \bell_clk_6|Add0~97COUT1_151\ : std_logic;
SIGNAL \bell_clk_6|Add0~100_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~102\ : std_logic;
SIGNAL \bell_clk_6|Add0~102COUT1_152\ : std_logic;
SIGNAL \bell_clk_6|Add0~105_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~107\ : std_logic;
SIGNAL \bell_clk_6|Add0~107COUT1_153\ : std_logic;
SIGNAL \bell_clk_6|Add0~110_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~112\ : std_logic;
SIGNAL \bell_clk_6|Add0~117COUT1_154\ : std_logic;
SIGNAL \bell_clk_6|Add0~122\ : std_logic;
SIGNAL \bell_clk_6|Add0~122COUT1_155\ : std_logic;
SIGNAL \bell_clk_6|Add0~125_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~127\ : std_logic;
SIGNAL \bell_clk_6|Add0~127COUT1_156\ : std_logic;
SIGNAL \bell_clk_6|Add0~130_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~115_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~117\ : std_logic;
SIGNAL \bell_clk_6|Add0~120_combout\ : std_logic;
SIGNAL \bell_clk_6|Equal0~7\ : std_logic;
SIGNAL \bell_clk_6|Equal0~6\ : std_logic;
SIGNAL \bell_clk_6|Add0~37\ : std_logic;
SIGNAL \bell_clk_6|Add0~25_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~27\ : std_logic;
SIGNAL \bell_clk_6|Add0~27COUT1_138\ : std_logic;
SIGNAL \bell_clk_6|Add0~20_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~22\ : std_logic;
SIGNAL \bell_clk_6|Add0~22COUT1_139\ : std_logic;
SIGNAL \bell_clk_6|Add0~15_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~17\ : std_logic;
SIGNAL \bell_clk_6|Add0~17COUT1_140\ : std_logic;
SIGNAL \bell_clk_6|Add0~30_combout\ : std_logic;
SIGNAL \bell_clk_6|Equal0~1\ : std_logic;
SIGNAL \bell_clk_6|Equal0~3\ : std_logic;
SIGNAL \bell_clk_6|Equal0~2\ : std_logic;
SIGNAL \bell_clk_1|Add0~0_combout\ : std_logic;
SIGNAL \bell_clk_6|Equal0~0\ : std_logic;
SIGNAL \bell_clk_6|Equal0~4_combout\ : std_logic;
SIGNAL \bell_clk_6|Equal0~8_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~32\ : std_logic;
SIGNAL \bell_clk_6|Add0~32COUT1_141\ : std_logic;
SIGNAL \bell_clk_6|Add0~10_combout\ : std_logic;
SIGNAL \bell_clk_6|Add0~12\ : std_logic;
SIGNAL \bell_clk_6|Add0~5_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~2\ : std_logic;
SIGNAL \bell_clk_1|Add0~2COUT1_141\ : std_logic;
SIGNAL \bell_clk_1|Add0~35_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~37\ : std_logic;
SIGNAL \bell_clk_1|Add0~37COUT1_142\ : std_logic;
SIGNAL \bell_clk_1|Add0~30_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~32\ : std_logic;
SIGNAL \bell_clk_1|Add0~32COUT1_143\ : std_logic;
SIGNAL \bell_clk_1|Add0~25_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~27\ : std_logic;
SIGNAL \bell_clk_1|Add0~10_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~12\ : std_logic;
SIGNAL \bell_clk_1|Add0~12COUT1_144\ : std_logic;
SIGNAL \bell_clk_1|Add0~20_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~22\ : std_logic;
SIGNAL \bell_clk_1|Add0~22COUT1_145\ : std_logic;
SIGNAL \bell_clk_1|Add0~5_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~7\ : std_logic;
SIGNAL \bell_clk_1|Add0~7COUT1_146\ : std_logic;
SIGNAL \bell_clk_1|Add0~15_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~17\ : std_logic;
SIGNAL \bell_clk_1|Add0~17COUT1_147\ : std_logic;
SIGNAL \bell_clk_1|Add0~40_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~42\ : std_logic;
SIGNAL \bell_clk_1|Add0~55_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~57\ : std_logic;
SIGNAL \bell_clk_1|Add0~57COUT1_148\ : std_logic;
SIGNAL \bell_clk_1|Add0~45_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~47\ : std_logic;
SIGNAL \bell_clk_1|Add0~47COUT1_149\ : std_logic;
SIGNAL \bell_clk_1|Add0~50_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~52\ : std_logic;
SIGNAL \bell_clk_1|Add0~52COUT1_150\ : std_logic;
SIGNAL \bell_clk_1|Add0~60_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~62\ : std_logic;
SIGNAL \bell_clk_1|Add0~62COUT1_151\ : std_logic;
SIGNAL \bell_clk_1|Add0~70_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~67\ : std_logic;
SIGNAL \bell_clk_1|Add0~67COUT1_152\ : std_logic;
SIGNAL \bell_clk_1|Add0~75_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~72\ : std_logic;
SIGNAL \bell_clk_1|Add0~77\ : std_logic;
SIGNAL \bell_clk_1|Add0~77COUT1_153\ : std_logic;
SIGNAL \bell_clk_1|Add0~80_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~95_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~82\ : std_logic;
SIGNAL \bell_clk_1|Add0~82COUT1_154\ : std_logic;
SIGNAL \bell_clk_1|Add0~85_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~87\ : std_logic;
SIGNAL \bell_clk_1|Add0~87COUT1_155\ : std_logic;
SIGNAL \bell_clk_1|Add0~90_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~92\ : std_logic;
SIGNAL \bell_clk_1|Add0~97\ : std_logic;
SIGNAL \bell_clk_1|Add0~97COUT1_156\ : std_logic;
SIGNAL \bell_clk_1|Add0~102COUT1_157\ : std_logic;
SIGNAL \bell_clk_1|Add0~107\ : std_logic;
SIGNAL \bell_clk_1|Add0~107COUT1_158\ : std_logic;
SIGNAL \bell_clk_1|Add0~110_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~112\ : std_logic;
SIGNAL \bell_clk_1|Add0~112COUT1_159\ : std_logic;
SIGNAL \bell_clk_1|Add0~115_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~100_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~102\ : std_logic;
SIGNAL \bell_clk_1|Add0~105_combout\ : std_logic;
SIGNAL \bell_clk_1|Equal0~6\ : std_logic;
SIGNAL \bell_clk_1|Add0~117\ : std_logic;
SIGNAL \bell_clk_1|Add0~120_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~122\ : std_logic;
SIGNAL \bell_clk_1|Add0~122COUT1_160\ : std_logic;
SIGNAL \bell_clk_1|Add0~125_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~127\ : std_logic;
SIGNAL \bell_clk_1|Add0~127COUT1_161\ : std_logic;
SIGNAL \bell_clk_1|Add0~130_combout\ : std_logic;
SIGNAL \bell_clk_1|Add0~132\ : std_logic;
SIGNAL \bell_clk_1|Add0~132COUT1_162\ : std_logic;
SIGNAL \bell_clk_1|Add0~135_combout\ : std_logic;
SIGNAL \bell_clk_1|Equal0~7\ : std_logic;
SIGNAL \bell_clk_1|Equal0~5\ : std_logic;
SIGNAL \bell_clk_1|Equal0~0\ : std_logic;
SIGNAL \bell_clk_1|Equal0~2\ : std_logic;
SIGNAL \bell_clk_1|Equal0~3\ : std_logic;
SIGNAL \bell_clk_1|Equal0~1\ : std_logic;
SIGNAL \bell_clk_1|Equal0~4_combout\ : std_logic;
SIGNAL \bell_clk_1|Equal0~8_combout\ : std_logic;
SIGNAL \bell_clk_1|clkout~regout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~65_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~67\ : std_logic;
SIGNAL \bell_clk_2|Add0~67COUT1_152\ : std_logic;
SIGNAL \bell_clk_2|Add0~75_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~25_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~27\ : std_logic;
SIGNAL \bell_clk_2|Add0~27COUT1_141\ : std_logic;
SIGNAL \bell_clk_2|Add0~20_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~22\ : std_logic;
SIGNAL \bell_clk_2|Add0~22COUT1_142\ : std_logic;
SIGNAL \bell_clk_2|Add0~15_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~17\ : std_logic;
SIGNAL \bell_clk_2|Add0~17COUT1_143\ : std_logic;
SIGNAL \bell_clk_2|Add0~10_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~12\ : std_logic;
SIGNAL \bell_clk_2|Add0~5_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~7\ : std_logic;
SIGNAL \bell_clk_2|Add0~7COUT1_144\ : std_logic;
SIGNAL \bell_clk_2|Add0~0_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~2\ : std_logic;
SIGNAL \bell_clk_2|Add0~2COUT1_145\ : std_logic;
SIGNAL \bell_clk_2|Add0~30_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~32\ : std_logic;
SIGNAL \bell_clk_2|Add0~32COUT1_146\ : std_logic;
SIGNAL \bell_clk_2|Add0~35_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~37\ : std_logic;
SIGNAL \bell_clk_2|Add0~37COUT1_147\ : std_logic;
SIGNAL \bell_clk_2|Add0~40_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~42\ : std_logic;
SIGNAL \bell_clk_2|Add0~45_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~47\ : std_logic;
SIGNAL \bell_clk_2|Add0~47COUT1_148\ : std_logic;
SIGNAL \bell_clk_2|Add0~50_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~52\ : std_logic;
SIGNAL \bell_clk_2|Add0~52COUT1_149\ : std_logic;
SIGNAL \bell_clk_2|Add0~55_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~57\ : std_logic;
SIGNAL \bell_clk_2|Add0~57COUT1_150\ : std_logic;
SIGNAL \bell_clk_2|Add0~60_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~62\ : std_logic;
SIGNAL \bell_clk_2|Add0~62COUT1_151\ : std_logic;
SIGNAL \bell_clk_2|Add0~70_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~72\ : std_logic;
SIGNAL \bell_clk_2|Add0~77\ : std_logic;
SIGNAL \bell_clk_2|Add0~77COUT1_153\ : std_logic;
SIGNAL \bell_clk_2|Add0~80_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~95_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~82\ : std_logic;
SIGNAL \bell_clk_2|Add0~82COUT1_154\ : std_logic;
SIGNAL \bell_clk_2|Add0~85_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~87\ : std_logic;
SIGNAL \bell_clk_2|Add0~87COUT1_155\ : std_logic;
SIGNAL \bell_clk_2|Add0~90_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~92\ : std_logic;
SIGNAL \bell_clk_2|Add0~97\ : std_logic;
SIGNAL \bell_clk_2|Add0~97COUT1_156\ : std_logic;
SIGNAL \bell_clk_2|Add0~100_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~102\ : std_logic;
SIGNAL \bell_clk_2|Add0~102COUT1_157\ : std_logic;
SIGNAL \bell_clk_2|Add0~105_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~107\ : std_logic;
SIGNAL \bell_clk_2|Add0~107COUT1_158\ : std_logic;
SIGNAL \bell_clk_2|Add0~110_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~112\ : std_logic;
SIGNAL \bell_clk_2|Add0~112COUT1_159\ : std_logic;
SIGNAL \bell_clk_2|Add0~115_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~117\ : std_logic;
SIGNAL \bell_clk_2|Add0~122COUT1_160\ : std_logic;
SIGNAL \bell_clk_2|Add0~127\ : std_logic;
SIGNAL \bell_clk_2|Add0~127COUT1_161\ : std_logic;
SIGNAL \bell_clk_2|Add0~130_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~132\ : std_logic;
SIGNAL \bell_clk_2|Add0~132COUT1_162\ : std_logic;
SIGNAL \bell_clk_2|Add0~135_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~120_combout\ : std_logic;
SIGNAL \bell_clk_2|Add0~122\ : std_logic;
SIGNAL \bell_clk_2|Add0~125_combout\ : std_logic;
SIGNAL \bell_clk_2|Equal0~7\ : std_logic;
SIGNAL \bell_clk_2|Equal0~5\ : std_logic;
SIGNAL \bell_clk_2|Equal0~6\ : std_logic;
SIGNAL \bell_clk_2|Equal0~3\ : std_logic;
SIGNAL \bell_clk_2|Equal0~2\ : std_logic;
SIGNAL \bell_clk_2|Equal0~0\ : std_logic;
SIGNAL \bell_clk_2|Equal0~1\ : std_logic;
SIGNAL \bell_clk_2|Equal0~4_combout\ : std_logic;
SIGNAL \bell_clk_2|Equal0~8_combout\ : std_logic;
SIGNAL \bell_clk_2|clkout~regout\ : std_logic;
SIGNAL \bell_clk_3|Add0~35_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~37\ : std_logic;
SIGNAL \bell_clk_3|Add0~37COUT1_142\ : std_logic;
SIGNAL \bell_clk_3|Add0~50_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~52\ : std_logic;
SIGNAL \bell_clk_3|Add0~52COUT1_143\ : std_logic;
SIGNAL \bell_clk_3|Add0~40_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~0_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~15_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~17\ : std_logic;
SIGNAL \bell_clk_3|Add0~17COUT1_136\ : std_logic;
SIGNAL \bell_clk_3|Add0~10_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~12\ : std_logic;
SIGNAL \bell_clk_3|Add0~12COUT1_137\ : std_logic;
SIGNAL \bell_clk_3|Add0~5_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~7\ : std_logic;
SIGNAL \bell_clk_3|Add0~2\ : std_logic;
SIGNAL \bell_clk_3|Add0~2COUT1_138\ : std_logic;
SIGNAL \bell_clk_3|Add0~20_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~22\ : std_logic;
SIGNAL \bell_clk_3|Add0~22COUT1_139\ : std_logic;
SIGNAL \bell_clk_3|Add0~25_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~27\ : std_logic;
SIGNAL \bell_clk_3|Add0~27COUT1_140\ : std_logic;
SIGNAL \bell_clk_3|Add0~30_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~32\ : std_logic;
SIGNAL \bell_clk_3|Add0~32COUT1_141\ : std_logic;
SIGNAL \bell_clk_3|Add0~45_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~47\ : std_logic;
SIGNAL \bell_clk_3|Add0~55_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~42\ : std_logic;
SIGNAL \bell_clk_3|Add0~42COUT1_144\ : std_logic;
SIGNAL \bell_clk_3|Add0~60_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~57\ : std_logic;
SIGNAL \bell_clk_3|Add0~57COUT1_146\ : std_logic;
SIGNAL \bell_clk_3|Add0~70_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~62\ : std_logic;
SIGNAL \bell_clk_3|Add0~62COUT1_145\ : std_logic;
SIGNAL \bell_clk_3|Add0~65_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~67\ : std_logic;
SIGNAL \bell_clk_3|Add0~72\ : std_logic;
SIGNAL \bell_clk_3|Add0~72COUT1_147\ : std_logic;
SIGNAL \bell_clk_3|Add0~77COUT1_148\ : std_logic;
SIGNAL \bell_clk_3|Add0~82\ : std_logic;
SIGNAL \bell_clk_3|Add0~82COUT1_149\ : std_logic;
SIGNAL \bell_clk_3|Add0~85_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~75_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~87\ : std_logic;
SIGNAL \bell_clk_3|Add0~90_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~77\ : std_logic;
SIGNAL \bell_clk_3|Add0~80_combout\ : std_logic;
SIGNAL \bell_clk_3|Equal0~5\ : std_logic;
SIGNAL \bell_clk_3|Add0~92\ : std_logic;
SIGNAL \bell_clk_3|Add0~92COUT1_150\ : std_logic;
SIGNAL \bell_clk_3|Add0~95_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~97COUT1_151\ : std_logic;
SIGNAL \bell_clk_3|Add0~102COUT1_152\ : std_logic;
SIGNAL \bell_clk_3|Add0~107\ : std_logic;
SIGNAL \bell_clk_3|Add0~107COUT1_153\ : std_logic;
SIGNAL \bell_clk_3|Add0~110_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~97\ : std_logic;
SIGNAL \bell_clk_3|Add0~100_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~102\ : std_logic;
SIGNAL \bell_clk_3|Add0~105_combout\ : std_logic;
SIGNAL \bell_clk_3|Equal0~6\ : std_logic;
SIGNAL \bell_clk_3|Add0~112\ : std_logic;
SIGNAL \bell_clk_3|Add0~117COUT1_154\ : std_logic;
SIGNAL \bell_clk_3|Add0~122COUT1_155\ : std_logic;
SIGNAL \bell_clk_3|Add0~127\ : std_logic;
SIGNAL \bell_clk_3|Add0~127COUT1_156\ : std_logic;
SIGNAL \bell_clk_3|Add0~130_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~115_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~117\ : std_logic;
SIGNAL \bell_clk_3|Add0~120_combout\ : std_logic;
SIGNAL \bell_clk_3|Add0~122\ : std_logic;
SIGNAL \bell_clk_3|Add0~125_combout\ : std_logic;
SIGNAL \bell_clk_3|Equal0~7\ : std_logic;
SIGNAL \bell_clk_3|Equal0~2\ : std_logic;
SIGNAL \bell_clk_3|Equal0~1\ : std_logic;
SIGNAL \bell_clk_3|Equal0~3\ : std_logic;
SIGNAL \bell_clk_3|Equal0~0\ : std_logic;
SIGNAL \bell_clk_3|Equal0~4_combout\ : std_logic;
SIGNAL \bell_clk_3|Equal0~8_combout\ : std_logic;
SIGNAL \bell_clk_3|clkout~regout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~40_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~42\ : std_logic;
SIGNAL \bell_clk_5|Add0~42COUT1_148\ : std_logic;
SIGNAL \bell_clk_5|Add0~45_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~47\ : std_logic;
SIGNAL \bell_clk_5|Add0~47COUT1_149\ : std_logic;
SIGNAL \bell_clk_5|Add0~50_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~30_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~32\ : std_logic;
SIGNAL \bell_clk_5|Add0~32COUT1_141\ : std_logic;
SIGNAL \bell_clk_5|Add0~25_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~15_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~17\ : std_logic;
SIGNAL \bell_clk_5|Add0~17COUT1_144\ : std_logic;
SIGNAL \bell_clk_5|Add0~10_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~12\ : std_logic;
SIGNAL \bell_clk_5|Add0~12COUT1_145\ : std_logic;
SIGNAL \bell_clk_5|Add0~0_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~2\ : std_logic;
SIGNAL \bell_clk_5|Add0~2COUT1_146\ : std_logic;
SIGNAL \bell_clk_5|Add0~35_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~27\ : std_logic;
SIGNAL \bell_clk_5|Add0~27COUT1_142\ : std_logic;
SIGNAL \bell_clk_5|Add0~20_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~22\ : std_logic;
SIGNAL \bell_clk_5|Add0~22COUT1_143\ : std_logic;
SIGNAL \bell_clk_5|Add0~5_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~7\ : std_logic;
SIGNAL \bell_clk_5|Add0~37\ : std_logic;
SIGNAL \bell_clk_5|Add0~37COUT1_147\ : std_logic;
SIGNAL \bell_clk_5|Add0~55_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~57\ : std_logic;
SIGNAL \bell_clk_5|Add0~52\ : std_logic;
SIGNAL \bell_clk_5|Add0~52COUT1_150\ : std_logic;
SIGNAL \bell_clk_5|Add0~60_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~62\ : std_logic;
SIGNAL \bell_clk_5|Add0~62COUT1_151\ : std_logic;
SIGNAL \bell_clk_5|Add0~65_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~67\ : std_logic;
SIGNAL \bell_clk_5|Add0~70_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~72\ : std_logic;
SIGNAL \bell_clk_5|Add0~72COUT1_152\ : std_logic;
SIGNAL \bell_clk_5|Add0~75_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~77\ : std_logic;
SIGNAL \bell_clk_5|Add0~77COUT1_153\ : std_logic;
SIGNAL \bell_clk_5|Add0~80_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~82\ : std_logic;
SIGNAL \bell_clk_5|Add0~82COUT1_154\ : std_logic;
SIGNAL \bell_clk_5|Add0~85_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~87\ : std_logic;
SIGNAL \bell_clk_5|Add0~87COUT1_155\ : std_logic;
SIGNAL \bell_clk_5|Add0~90_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~92\ : std_logic;
SIGNAL \bell_clk_5|Add0~95_combout\ : std_logic;
SIGNAL \bell_clk_5|Equal0~5\ : std_logic;
SIGNAL \bell_clk_5|Add0~97\ : std_logic;
SIGNAL \bell_clk_5|Add0~97COUT1_156\ : std_logic;
SIGNAL \bell_clk_5|Add0~100_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~102\ : std_logic;
SIGNAL \bell_clk_5|Add0~102COUT1_157\ : std_logic;
SIGNAL \bell_clk_5|Add0~105_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~107\ : std_logic;
SIGNAL \bell_clk_5|Add0~107COUT1_158\ : std_logic;
SIGNAL \bell_clk_5|Add0~110_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~112\ : std_logic;
SIGNAL \bell_clk_5|Add0~112COUT1_159\ : std_logic;
SIGNAL \bell_clk_5|Add0~115_combout\ : std_logic;
SIGNAL \bell_clk_5|Equal0~6\ : std_logic;
SIGNAL \bell_clk_5|Add0~117\ : std_logic;
SIGNAL \bell_clk_5|Add0~120_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~122COUT1_160\ : std_logic;
SIGNAL \bell_clk_5|Add0~127COUT1_161\ : std_logic;
SIGNAL \bell_clk_5|Add0~132\ : std_logic;
SIGNAL \bell_clk_5|Add0~132COUT1_162\ : std_logic;
SIGNAL \bell_clk_5|Add0~135_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~122\ : std_logic;
SIGNAL \bell_clk_5|Add0~125_combout\ : std_logic;
SIGNAL \bell_clk_5|Add0~127\ : std_logic;
SIGNAL \bell_clk_5|Add0~130_combout\ : std_logic;
SIGNAL \bell_clk_5|Equal0~7\ : std_logic;
SIGNAL \bell_clk_5|Equal0~2\ : std_logic;
SIGNAL \bell_clk_5|Equal0~3\ : std_logic;
SIGNAL \bell_clk_5|Equal0~0\ : std_logic;
SIGNAL \bell_clk_5|Equal0~1\ : std_logic;
SIGNAL \bell_clk_5|Equal0~4_combout\ : std_logic;
SIGNAL \bell_clk_5|Equal0~8_combout\ : std_logic;
SIGNAL \bell_clk_5|clkout~regout\ : std_logic;
SIGNAL \bell_clk_7|Add0~40_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~42\ : std_logic;
SIGNAL \bell_clk_7|Add0~42COUT1_142\ : std_logic;
SIGNAL \bell_clk_7|Add0~45_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~47\ : std_logic;
SIGNAL \bell_clk_7|Add0~47COUT1_143\ : std_logic;
SIGNAL \bell_clk_7|Add0~50_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~35_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~37\ : std_logic;
SIGNAL \bell_clk_7|Add0~37COUT1_136\ : std_logic;
SIGNAL \bell_clk_7|Add0~25_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~30_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~27\ : std_logic;
SIGNAL \bell_clk_7|Add0~27COUT1_137\ : std_logic;
SIGNAL \bell_clk_7|Add0~20_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~32\ : std_logic;
SIGNAL \bell_clk_7|Add0~32COUT1_138\ : std_logic;
SIGNAL \bell_clk_7|Add0~15_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~22\ : std_logic;
SIGNAL \bell_clk_7|Add0~17\ : std_logic;
SIGNAL \bell_clk_7|Add0~17COUT1_139\ : std_logic;
SIGNAL \bell_clk_7|Add0~5_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~7\ : std_logic;
SIGNAL \bell_clk_7|Add0~7COUT1_140\ : std_logic;
SIGNAL \bell_clk_7|Add0~10_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~12\ : std_logic;
SIGNAL \bell_clk_7|Add0~12COUT1_141\ : std_logic;
SIGNAL \bell_clk_7|Add0~0_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~2\ : std_logic;
SIGNAL \bell_clk_7|Add0~52\ : std_logic;
SIGNAL \bell_clk_7|Add0~52COUT1_144\ : std_logic;
SIGNAL \bell_clk_7|Add0~55_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~57\ : std_logic;
SIGNAL \bell_clk_7|Add0~57COUT1_145\ : std_logic;
SIGNAL \bell_clk_7|Add0~60_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~62\ : std_logic;
SIGNAL \bell_clk_7|Add0~90_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~65_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~67\ : std_logic;
SIGNAL \bell_clk_7|Add0~67COUT1_146\ : std_logic;
SIGNAL \bell_clk_7|Add0~70_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~72\ : std_logic;
SIGNAL \bell_clk_7|Add0~72COUT1_147\ : std_logic;
SIGNAL \bell_clk_7|Add0~75_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~77\ : std_logic;
SIGNAL \bell_clk_7|Add0~77COUT1_148\ : std_logic;
SIGNAL \bell_clk_7|Add0~80_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~82\ : std_logic;
SIGNAL \bell_clk_7|Add0~82COUT1_149\ : std_logic;
SIGNAL \bell_clk_7|Add0~85_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~87\ : std_logic;
SIGNAL \bell_clk_7|Add0~92\ : std_logic;
SIGNAL \bell_clk_7|Add0~92COUT1_150\ : std_logic;
SIGNAL \bell_clk_7|Add0~95_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~97\ : std_logic;
SIGNAL \bell_clk_7|Add0~97COUT1_151\ : std_logic;
SIGNAL \bell_clk_7|Add0~100_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~102\ : std_logic;
SIGNAL \bell_clk_7|Add0~102COUT1_152\ : std_logic;
SIGNAL \bell_clk_7|Add0~105_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~107\ : std_logic;
SIGNAL \bell_clk_7|Add0~107COUT1_153\ : std_logic;
SIGNAL \bell_clk_7|Add0~110_combout\ : std_logic;
SIGNAL \bell_clk_7|Equal0~6\ : std_logic;
SIGNAL \bell_clk_7|Add0~112\ : std_logic;
SIGNAL \bell_clk_7|Add0~115_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~117\ : std_logic;
SIGNAL \bell_clk_7|Add0~117COUT1_154\ : std_logic;
SIGNAL \bell_clk_7|Add0~120_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~122\ : std_logic;
SIGNAL \bell_clk_7|Add0~122COUT1_155\ : std_logic;
SIGNAL \bell_clk_7|Add0~125_combout\ : std_logic;
SIGNAL \bell_clk_7|Add0~127\ : std_logic;
SIGNAL \bell_clk_7|Add0~127COUT1_156\ : std_logic;
SIGNAL \bell_clk_7|Add0~130_combout\ : std_logic;
SIGNAL \bell_clk_7|Equal0~7\ : std_logic;
SIGNAL \bell_clk_7|Equal0~5\ : std_logic;
SIGNAL \bell_clk_7|Equal0~0\ : std_logic;
SIGNAL \bell_clk_7|Equal0~3\ : std_logic;
SIGNAL \bell_clk_7|Equal0~2\ : std_logic;
SIGNAL \bell_clk_7|Equal0~1\ : std_logic;
SIGNAL \bell_clk_7|Equal0~4_combout\ : std_logic;
SIGNAL \bell_clk_7|Equal0~8_combout\ : std_logic;
SIGNAL \bell_clk_7|clkout~regout\ : std_logic;
SIGNAL \bell_clk_4|Add0~30_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~32\ : std_logic;
SIGNAL \bell_clk_4|Add0~32COUT1_136\ : std_logic;
SIGNAL \bell_clk_4|Add0~25_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~27\ : std_logic;
SIGNAL \bell_clk_4|Add0~27COUT1_137\ : std_logic;
SIGNAL \bell_clk_4|Add0~15_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~17\ : std_logic;
SIGNAL \bell_clk_4|Add0~20_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~22\ : std_logic;
SIGNAL \bell_clk_4|Add0~22COUT1_138\ : std_logic;
SIGNAL \bell_clk_4|Add0~10_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~12\ : std_logic;
SIGNAL \bell_clk_4|Add0~12COUT1_139\ : std_logic;
SIGNAL \bell_clk_4|Add0~5_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~7\ : std_logic;
SIGNAL \bell_clk_4|Add0~7COUT1_140\ : std_logic;
SIGNAL \bell_clk_4|Add0~0_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~2\ : std_logic;
SIGNAL \bell_clk_4|Add0~2COUT1_141\ : std_logic;
SIGNAL \bell_clk_4|Add0~35_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~37\ : std_logic;
SIGNAL \bell_clk_4|Add0~55_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~45_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~47\ : std_logic;
SIGNAL \bell_clk_4|Add0~47COUT1_142\ : std_logic;
SIGNAL \bell_clk_4|Add0~40_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~42\ : std_logic;
SIGNAL \bell_clk_4|Add0~42COUT1_143\ : std_logic;
SIGNAL \bell_clk_4|Add0~50_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~52\ : std_logic;
SIGNAL \bell_clk_4|Add0~52COUT1_144\ : std_logic;
SIGNAL \bell_clk_4|Add0~60_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~57\ : std_logic;
SIGNAL \bell_clk_4|Add0~57COUT1_146\ : std_logic;
SIGNAL \bell_clk_4|Add0~70_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~62\ : std_logic;
SIGNAL \bell_clk_4|Add0~62COUT1_145\ : std_logic;
SIGNAL \bell_clk_4|Add0~65_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~67\ : std_logic;
SIGNAL \bell_clk_4|Add0~90_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~72\ : std_logic;
SIGNAL \bell_clk_4|Add0~72COUT1_147\ : std_logic;
SIGNAL \bell_clk_4|Add0~75_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~77\ : std_logic;
SIGNAL \bell_clk_4|Add0~77COUT1_148\ : std_logic;
SIGNAL \bell_clk_4|Add0~80_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~82\ : std_logic;
SIGNAL \bell_clk_4|Add0~82COUT1_149\ : std_logic;
SIGNAL \bell_clk_4|Add0~85_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~87\ : std_logic;
SIGNAL \bell_clk_4|Add0~92\ : std_logic;
SIGNAL \bell_clk_4|Add0~92COUT1_150\ : std_logic;
SIGNAL \bell_clk_4|Add0~95_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~97\ : std_logic;
SIGNAL \bell_clk_4|Add0~97COUT1_151\ : std_logic;
SIGNAL \bell_clk_4|Add0~100_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~102\ : std_logic;
SIGNAL \bell_clk_4|Add0~102COUT1_152\ : std_logic;
SIGNAL \bell_clk_4|Add0~105_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~107\ : std_logic;
SIGNAL \bell_clk_4|Add0~107COUT1_153\ : std_logic;
SIGNAL \bell_clk_4|Add0~110_combout\ : std_logic;
SIGNAL \bell_clk_4|Equal0~6\ : std_logic;
SIGNAL \bell_clk_4|Equal0~5\ : std_logic;
SIGNAL \bell_clk_4|Add0~112\ : std_logic;
SIGNAL \bell_clk_4|Add0~117COUT1_154\ : std_logic;
SIGNAL \bell_clk_4|Add0~122\ : std_logic;
SIGNAL \bell_clk_4|Add0~122COUT1_155\ : std_logic;
SIGNAL \bell_clk_4|Add0~125_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~127\ : std_logic;
SIGNAL \bell_clk_4|Add0~127COUT1_156\ : std_logic;
SIGNAL \bell_clk_4|Add0~130_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~115_combout\ : std_logic;
SIGNAL \bell_clk_4|Add0~117\ : std_logic;
SIGNAL \bell_clk_4|Add0~120_combout\ : std_logic;
SIGNAL \bell_clk_4|Equal0~7\ : std_logic;
SIGNAL \bell_clk_4|Equal0~3\ : std_logic;
SIGNAL \bell_clk_4|Equal0~2\ : std_logic;
SIGNAL \bell_clk_4|Equal0~1\ : std_logic;
SIGNAL \bell_clk_4|Equal0~0_combout\ : std_logic;
SIGNAL \bell_clk_4|Equal0~4_combout\ : std_logic;
SIGNAL \bell_clk_4|Equal0~8_combout\ : std_logic;
SIGNAL \bell_clk_4|clkout~regout\ : std_logic;
SIGNAL \bell_clk_6|clkout~regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \bell_clk_4|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \bell_code~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bell_clk_1|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \bell_clk_5|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \bell_clk_2|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \bell_clk_6|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \bell_clk_3|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \bell_clk_7|cnt\ : std_logic_vector(27 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_bell_code <= bell_code;
ww_bell_pulse <= bell_pulse;
frequncy_bell <= ww_frequncy_bell;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bell_code[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bell_code(1),
	combout => \bell_code~combout\(1));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bell_code[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bell_code(0),
	combout => \bell_code~combout\(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bell_pulse~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bell_pulse,
	combout => \bell_pulse~combout\);

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

-- Location: LC_X14_Y6_N5
\bell_clk_1|Add0~65\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~65_combout\ = (\bell_clk_1|cnt\(14) $ ((!\bell_clk_1|Add0~72\)))
-- \bell_clk_1|Add0~67\ = CARRY(((\bell_clk_1|cnt\(14) & !\bell_clk_1|Add0~72\)))
-- \bell_clk_1|Add0~67COUT1_152\ = CARRY(((\bell_clk_1|cnt\(14) & !\bell_clk_1|Add0~72\)))

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
	datab => \bell_clk_1|cnt\(14),
	cin => \bell_clk_1|Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~65_combout\,
	cout0 => \bell_clk_1|Add0~67\,
	cout1 => \bell_clk_1|Add0~67COUT1_152\);

-- Location: LC_X11_Y6_N5
\bell_clk_1|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(14) = DFFEAS(((!\bell_clk_1|Equal0~8_combout\ & ((\bell_clk_1|Add0~65_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_1|Equal0~8_combout\,
	datad => \bell_clk_1|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(14));

-- Location: LC_X6_Y6_N2
\bell_clk_6|Add0~45\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~45_combout\ = \bell_clk_6|cnt\(1) $ ((\bell_clk_1|cnt\(0)))
-- \bell_clk_6|Add0~47\ = CARRY((\bell_clk_6|cnt\(1) & (\bell_clk_1|cnt\(0))))
-- \bell_clk_6|Add0~47COUT1_136\ = CARRY((\bell_clk_6|cnt\(1) & (\bell_clk_1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bell_clk_6|cnt\(1),
	datab => \bell_clk_1|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~45_combout\,
	cout0 => \bell_clk_6|Add0~47\,
	cout1 => \bell_clk_6|Add0~47COUT1_136\);

-- Location: LC_X5_Y6_N8
\bell_clk_6|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(1) = DFFEAS((((\bell_clk_6|Add0~45_combout\ & !\bell_clk_6|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_6|Add0~45_combout\,
	datad => \bell_clk_6|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(1));

-- Location: LC_X6_Y6_N3
\bell_clk_6|Add0~40\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~40_combout\ = \bell_clk_6|cnt\(2) $ ((((\bell_clk_6|Add0~47\))))
-- \bell_clk_6|Add0~42\ = CARRY(((!\bell_clk_6|Add0~47\)) # (!\bell_clk_6|cnt\(2)))
-- \bell_clk_6|Add0~42COUT1_137\ = CARRY(((!\bell_clk_6|Add0~47COUT1_136\)) # (!\bell_clk_6|cnt\(2)))

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
	dataa => \bell_clk_6|cnt\(2),
	cin0 => \bell_clk_6|Add0~47\,
	cin1 => \bell_clk_6|Add0~47COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~40_combout\,
	cout0 => \bell_clk_6|Add0~42\,
	cout1 => \bell_clk_6|Add0~42COUT1_137\);

-- Location: LC_X5_Y6_N0
\bell_clk_6|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(2) = DFFEAS(((!\bell_clk_6|Equal0~8_combout\ & (\bell_clk_6|Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \bell_clk_6|Equal0~8_combout\,
	datac => \bell_clk_6|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(2));

-- Location: LC_X7_Y6_N0
\bell_clk_6|Add0~5\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~5_combout\ = \bell_clk_6|cnt\(9) $ ((((!\bell_clk_6|Add0~12\))))
-- \bell_clk_6|Add0~7\ = CARRY((\bell_clk_6|cnt\(9) & ((!\bell_clk_6|Add0~12\))))
-- \bell_clk_6|Add0~7COUT1_142\ = CARRY((\bell_clk_6|cnt\(9) & ((!\bell_clk_6|Add0~12\))))

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
	dataa => \bell_clk_6|cnt\(9),
	cin => \bell_clk_6|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~5_combout\,
	cout0 => \bell_clk_6|Add0~7\,
	cout1 => \bell_clk_6|Add0~7COUT1_142\);

-- Location: LC_X7_Y6_N1
\bell_clk_6|Add0~0\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~0_combout\ = (\bell_clk_6|cnt\(10) $ (((!\bell_clk_6|Add0~12\ & \bell_clk_6|Add0~7\) # (\bell_clk_6|Add0~12\ & \bell_clk_6|Add0~7COUT1_142\))))
-- \bell_clk_6|Add0~2\ = CARRY(((!\bell_clk_6|Add0~7\) # (!\bell_clk_6|cnt\(10))))
-- \bell_clk_6|Add0~2COUT1_143\ = CARRY(((!\bell_clk_6|Add0~7COUT1_142\) # (!\bell_clk_6|cnt\(10))))

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
	datab => \bell_clk_6|cnt\(10),
	cin => \bell_clk_6|Add0~12\,
	cin0 => \bell_clk_6|Add0~7\,
	cin1 => \bell_clk_6|Add0~7COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~0_combout\,
	cout0 => \bell_clk_6|Add0~2\,
	cout1 => \bell_clk_6|Add0~2COUT1_143\);

-- Location: LC_X4_Y6_N3
\bell_clk_6|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(10) = DFFEAS(((\bell_clk_6|Add0~0_combout\ & ((!\bell_clk_6|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_6|Add0~0_combout\,
	datad => \bell_clk_6|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(10));

-- Location: LC_X7_Y6_N2
\bell_clk_6|Add0~50\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~50_combout\ = (\bell_clk_6|cnt\(11) $ ((!(!\bell_clk_6|Add0~12\ & \bell_clk_6|Add0~2\) # (\bell_clk_6|Add0~12\ & \bell_clk_6|Add0~2COUT1_143\))))
-- \bell_clk_6|Add0~52\ = CARRY(((\bell_clk_6|cnt\(11) & !\bell_clk_6|Add0~2\)))
-- \bell_clk_6|Add0~52COUT1_144\ = CARRY(((\bell_clk_6|cnt\(11) & !\bell_clk_6|Add0~2COUT1_143\)))

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
	datab => \bell_clk_6|cnt\(11),
	cin => \bell_clk_6|Add0~12\,
	cin0 => \bell_clk_6|Add0~2\,
	cin1 => \bell_clk_6|Add0~2COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~50_combout\,
	cout0 => \bell_clk_6|Add0~52\,
	cout1 => \bell_clk_6|Add0~52COUT1_144\);

-- Location: LC_X6_Y6_N4
\bell_clk_6|Add0~35\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~35_combout\ = \bell_clk_6|cnt\(3) $ ((((!\bell_clk_6|Add0~42\))))
-- \bell_clk_6|Add0~37\ = CARRY((\bell_clk_6|cnt\(3) & ((!\bell_clk_6|Add0~42COUT1_137\))))

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
	dataa => \bell_clk_6|cnt\(3),
	cin0 => \bell_clk_6|Add0~42\,
	cin1 => \bell_clk_6|Add0~42COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~35_combout\,
	cout => \bell_clk_6|Add0~37\);

-- Location: LC_X5_Y6_N9
\bell_clk_6|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(3) = DFFEAS((((!\bell_clk_6|Equal0~8_combout\ & \bell_clk_6|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_6|Equal0~8_combout\,
	datad => \bell_clk_6|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(3));

-- Location: LC_X4_Y6_N4
\bell_clk_6|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~2\ = (\bell_clk_6|cnt\(2) & (!\bell_clk_6|cnt\(1) & (!B6_cnt[11] & \bell_clk_6|cnt\(3))))
-- \bell_clk_6|cnt\(11) = DFFEAS(\bell_clk_6|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~50_combout\, , , VCC)

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
	dataa => \bell_clk_6|cnt\(2),
	datab => \bell_clk_6|cnt\(1),
	datac => \bell_clk_6|Add0~50_combout\,
	datad => \bell_clk_6|cnt\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~2\,
	regout => \bell_clk_6|cnt\(11));

-- Location: LC_X7_Y6_N3
\bell_clk_6|Add0~55\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~55_combout\ = (\bell_clk_6|cnt\(12) $ (((!\bell_clk_6|Add0~12\ & \bell_clk_6|Add0~52\) # (\bell_clk_6|Add0~12\ & \bell_clk_6|Add0~52COUT1_144\))))
-- \bell_clk_6|Add0~57\ = CARRY(((!\bell_clk_6|Add0~52\) # (!\bell_clk_6|cnt\(12))))
-- \bell_clk_6|Add0~57COUT1_145\ = CARRY(((!\bell_clk_6|Add0~52COUT1_144\) # (!\bell_clk_6|cnt\(12))))

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
	datab => \bell_clk_6|cnt\(12),
	cin => \bell_clk_6|Add0~12\,
	cin0 => \bell_clk_6|Add0~52\,
	cin1 => \bell_clk_6|Add0~52COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~55_combout\,
	cout0 => \bell_clk_6|Add0~57\,
	cout1 => \bell_clk_6|Add0~57COUT1_145\);

-- Location: LC_X4_Y6_N5
\bell_clk_6|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(12) = DFFEAS((((\bell_clk_6|Add0~55_combout\ & !\bell_clk_6|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_6|Add0~55_combout\,
	datad => \bell_clk_6|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(12));

-- Location: LC_X7_Y6_N4
\bell_clk_6|Add0~60\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~60_combout\ = (\bell_clk_6|cnt\(13) $ ((!(!\bell_clk_6|Add0~12\ & \bell_clk_6|Add0~57\) # (\bell_clk_6|Add0~12\ & \bell_clk_6|Add0~57COUT1_145\))))
-- \bell_clk_6|Add0~62\ = CARRY(((\bell_clk_6|cnt\(13) & !\bell_clk_6|Add0~57COUT1_145\)))

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
	datab => \bell_clk_6|cnt\(13),
	cin => \bell_clk_6|Add0~12\,
	cin0 => \bell_clk_6|Add0~57\,
	cin1 => \bell_clk_6|Add0~57COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~60_combout\,
	cout => \bell_clk_6|Add0~62\);

-- Location: LC_X4_Y6_N8
\bell_clk_6|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(13) = DFFEAS((((\bell_clk_6|Add0~60_combout\ & !\bell_clk_6|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_6|Add0~60_combout\,
	datad => \bell_clk_6|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(13));

-- Location: LC_X7_Y6_N5
\bell_clk_6|Add0~65\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~65_combout\ = \bell_clk_6|cnt\(14) $ ((((\bell_clk_6|Add0~62\))))
-- \bell_clk_6|Add0~67\ = CARRY(((!\bell_clk_6|Add0~62\)) # (!\bell_clk_6|cnt\(14)))
-- \bell_clk_6|Add0~67COUT1_146\ = CARRY(((!\bell_clk_6|Add0~62\)) # (!\bell_clk_6|cnt\(14)))

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
	dataa => \bell_clk_6|cnt\(14),
	cin => \bell_clk_6|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~65_combout\,
	cout0 => \bell_clk_6|Add0~67\,
	cout1 => \bell_clk_6|Add0~67COUT1_146\);

-- Location: LC_X4_Y6_N2
\bell_clk_6|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~3\ = (\bell_clk_6|cnt\(12) & (!\bell_clk_6|cnt\(15) & (!B6_cnt[14] & \bell_clk_6|cnt\(13))))
-- \bell_clk_6|cnt\(14) = DFFEAS(\bell_clk_6|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~65_combout\, , , VCC)

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
	dataa => \bell_clk_6|cnt\(12),
	datab => \bell_clk_6|cnt\(15),
	datac => \bell_clk_6|Add0~65_combout\,
	datad => \bell_clk_6|cnt\(13),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~3\,
	regout => \bell_clk_6|cnt\(14));

-- Location: LC_X7_Y6_N6
\bell_clk_6|Add0~70\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~70_combout\ = (\bell_clk_6|cnt\(15) $ ((!(!\bell_clk_6|Add0~62\ & \bell_clk_6|Add0~67\) # (\bell_clk_6|Add0~62\ & \bell_clk_6|Add0~67COUT1_146\))))
-- \bell_clk_6|Add0~72\ = CARRY(((\bell_clk_6|cnt\(15) & !\bell_clk_6|Add0~67\)))
-- \bell_clk_6|Add0~72COUT1_147\ = CARRY(((\bell_clk_6|cnt\(15) & !\bell_clk_6|Add0~67COUT1_146\)))

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
	datab => \bell_clk_6|cnt\(15),
	cin => \bell_clk_6|Add0~62\,
	cin0 => \bell_clk_6|Add0~67\,
	cin1 => \bell_clk_6|Add0~67COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~70_combout\,
	cout0 => \bell_clk_6|Add0~72\,
	cout1 => \bell_clk_6|Add0~72COUT1_147\);

-- Location: LC_X4_Y6_N9
\bell_clk_6|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~70_combout\, , , VCC)

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
	datac => \bell_clk_6|Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(15));

-- Location: LC_X7_Y6_N7
\bell_clk_6|Add0~75\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~75_combout\ = (\bell_clk_6|cnt\(16) $ (((!\bell_clk_6|Add0~62\ & \bell_clk_6|Add0~72\) # (\bell_clk_6|Add0~62\ & \bell_clk_6|Add0~72COUT1_147\))))
-- \bell_clk_6|Add0~77\ = CARRY(((!\bell_clk_6|Add0~72\) # (!\bell_clk_6|cnt\(16))))
-- \bell_clk_6|Add0~77COUT1_148\ = CARRY(((!\bell_clk_6|Add0~72COUT1_147\) # (!\bell_clk_6|cnt\(16))))

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
	datab => \bell_clk_6|cnt\(16),
	cin => \bell_clk_6|Add0~62\,
	cin0 => \bell_clk_6|Add0~72\,
	cin1 => \bell_clk_6|Add0~72COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~75_combout\,
	cout0 => \bell_clk_6|Add0~77\,
	cout1 => \bell_clk_6|Add0~77COUT1_148\);

-- Location: LC_X7_Y6_N8
\bell_clk_6|Add0~80\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~80_combout\ = (\bell_clk_6|cnt\(17) $ ((!(!\bell_clk_6|Add0~62\ & \bell_clk_6|Add0~77\) # (\bell_clk_6|Add0~62\ & \bell_clk_6|Add0~77COUT1_148\))))
-- \bell_clk_6|Add0~82\ = CARRY(((\bell_clk_6|cnt\(17) & !\bell_clk_6|Add0~77\)))
-- \bell_clk_6|Add0~82COUT1_149\ = CARRY(((\bell_clk_6|cnt\(17) & !\bell_clk_6|Add0~77COUT1_148\)))

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
	datab => \bell_clk_6|cnt\(17),
	cin => \bell_clk_6|Add0~62\,
	cin0 => \bell_clk_6|Add0~77\,
	cin1 => \bell_clk_6|Add0~77COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~80_combout\,
	cout0 => \bell_clk_6|Add0~82\,
	cout1 => \bell_clk_6|Add0~82COUT1_149\);

-- Location: LC_X7_Y6_N9
\bell_clk_6|Add0~85\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~85_combout\ = \bell_clk_6|cnt\(18) $ (((((!\bell_clk_6|Add0~62\ & \bell_clk_6|Add0~82\) # (\bell_clk_6|Add0~62\ & \bell_clk_6|Add0~82COUT1_149\)))))
-- \bell_clk_6|Add0~87\ = CARRY(((!\bell_clk_6|Add0~82COUT1_149\)) # (!\bell_clk_6|cnt\(18)))

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
	dataa => \bell_clk_6|cnt\(18),
	cin => \bell_clk_6|Add0~62\,
	cin0 => \bell_clk_6|Add0~82\,
	cin1 => \bell_clk_6|Add0~82COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~85_combout\,
	cout => \bell_clk_6|Add0~87\);

-- Location: LC_X8_Y6_N0
\bell_clk_6|Add0~90\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~90_combout\ = \bell_clk_6|cnt\(19) $ ((((!\bell_clk_6|Add0~87\))))
-- \bell_clk_6|Add0~92\ = CARRY((\bell_clk_6|cnt\(19) & ((!\bell_clk_6|Add0~87\))))
-- \bell_clk_6|Add0~92COUT1_150\ = CARRY((\bell_clk_6|cnt\(19) & ((!\bell_clk_6|Add0~87\))))

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
	dataa => \bell_clk_6|cnt\(19),
	cin => \bell_clk_6|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~90_combout\,
	cout0 => \bell_clk_6|Add0~92\,
	cout1 => \bell_clk_6|Add0~92COUT1_150\);

-- Location: LC_X9_Y6_N1
\bell_clk_6|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(19) = DFFEAS((((\bell_clk_6|Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_6|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(19));

-- Location: LC_X9_Y6_N4
\bell_clk_6|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~5\ = (!\bell_clk_6|cnt\(18) & (!\bell_clk_6|cnt\(17) & (!B6_cnt[16] & !\bell_clk_6|cnt\(19))))
-- \bell_clk_6|cnt\(16) = DFFEAS(\bell_clk_6|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~75_combout\, , , VCC)

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
	dataa => \bell_clk_6|cnt\(18),
	datab => \bell_clk_6|cnt\(17),
	datac => \bell_clk_6|Add0~75_combout\,
	datad => \bell_clk_6|cnt\(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~5\,
	regout => \bell_clk_6|cnt\(16));

-- Location: LC_X10_Y6_N8
\bell_clk_6|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~80_combout\, , , VCC)

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
	datac => \bell_clk_6|Add0~80_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(17));

-- Location: LC_X9_Y6_N9
\bell_clk_6|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~85_combout\, , , VCC)

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
	datac => \bell_clk_6|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(18));

-- Location: LC_X8_Y6_N1
\bell_clk_6|Add0~95\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~95_combout\ = \bell_clk_6|cnt\(20) $ (((((!\bell_clk_6|Add0~87\ & \bell_clk_6|Add0~92\) # (\bell_clk_6|Add0~87\ & \bell_clk_6|Add0~92COUT1_150\)))))
-- \bell_clk_6|Add0~97\ = CARRY(((!\bell_clk_6|Add0~92\)) # (!\bell_clk_6|cnt\(20)))
-- \bell_clk_6|Add0~97COUT1_151\ = CARRY(((!\bell_clk_6|Add0~92COUT1_150\)) # (!\bell_clk_6|cnt\(20)))

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
	dataa => \bell_clk_6|cnt\(20),
	cin => \bell_clk_6|Add0~87\,
	cin0 => \bell_clk_6|Add0~92\,
	cin1 => \bell_clk_6|Add0~92COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~95_combout\,
	cout0 => \bell_clk_6|Add0~97\,
	cout1 => \bell_clk_6|Add0~97COUT1_151\);

-- Location: LC_X9_Y6_N0
\bell_clk_6|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~6\ = (!\bell_clk_6|cnt\(22) & (!\bell_clk_6|cnt\(23) & (!B6_cnt[20] & !\bell_clk_6|cnt\(21))))
-- \bell_clk_6|cnt\(20) = DFFEAS(\bell_clk_6|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~95_combout\, , , VCC)

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
	dataa => \bell_clk_6|cnt\(22),
	datab => \bell_clk_6|cnt\(23),
	datac => \bell_clk_6|Add0~95_combout\,
	datad => \bell_clk_6|cnt\(21),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~6\,
	regout => \bell_clk_6|cnt\(20));

-- Location: LC_X8_Y6_N2
\bell_clk_6|Add0~100\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~100_combout\ = \bell_clk_6|cnt\(21) $ ((((!(!\bell_clk_6|Add0~87\ & \bell_clk_6|Add0~97\) # (\bell_clk_6|Add0~87\ & \bell_clk_6|Add0~97COUT1_151\)))))
-- \bell_clk_6|Add0~102\ = CARRY((\bell_clk_6|cnt\(21) & ((!\bell_clk_6|Add0~97\))))
-- \bell_clk_6|Add0~102COUT1_152\ = CARRY((\bell_clk_6|cnt\(21) & ((!\bell_clk_6|Add0~97COUT1_151\))))

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
	dataa => \bell_clk_6|cnt\(21),
	cin => \bell_clk_6|Add0~87\,
	cin0 => \bell_clk_6|Add0~97\,
	cin1 => \bell_clk_6|Add0~97COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~100_combout\,
	cout0 => \bell_clk_6|Add0~102\,
	cout1 => \bell_clk_6|Add0~102COUT1_152\);

-- Location: LC_X9_Y6_N6
\bell_clk_6|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(21) = DFFEAS((((\bell_clk_6|Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_6|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(21));

-- Location: LC_X8_Y6_N3
\bell_clk_6|Add0~105\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~105_combout\ = \bell_clk_6|cnt\(22) $ (((((!\bell_clk_6|Add0~87\ & \bell_clk_6|Add0~102\) # (\bell_clk_6|Add0~87\ & \bell_clk_6|Add0~102COUT1_152\)))))
-- \bell_clk_6|Add0~107\ = CARRY(((!\bell_clk_6|Add0~102\)) # (!\bell_clk_6|cnt\(22)))
-- \bell_clk_6|Add0~107COUT1_153\ = CARRY(((!\bell_clk_6|Add0~102COUT1_152\)) # (!\bell_clk_6|cnt\(22)))

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
	dataa => \bell_clk_6|cnt\(22),
	cin => \bell_clk_6|Add0~87\,
	cin0 => \bell_clk_6|Add0~102\,
	cin1 => \bell_clk_6|Add0~102COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~105_combout\,
	cout0 => \bell_clk_6|Add0~107\,
	cout1 => \bell_clk_6|Add0~107COUT1_153\);

-- Location: LC_X9_Y6_N3
\bell_clk_6|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(22) = DFFEAS((((\bell_clk_6|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_6|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(22));

-- Location: LC_X8_Y6_N4
\bell_clk_6|Add0~110\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~110_combout\ = \bell_clk_6|cnt\(23) $ ((((!(!\bell_clk_6|Add0~87\ & \bell_clk_6|Add0~107\) # (\bell_clk_6|Add0~87\ & \bell_clk_6|Add0~107COUT1_153\)))))
-- \bell_clk_6|Add0~112\ = CARRY((\bell_clk_6|cnt\(23) & ((!\bell_clk_6|Add0~107COUT1_153\))))

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
	dataa => \bell_clk_6|cnt\(23),
	cin => \bell_clk_6|Add0~87\,
	cin0 => \bell_clk_6|Add0~107\,
	cin1 => \bell_clk_6|Add0~107COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~110_combout\,
	cout => \bell_clk_6|Add0~112\);

-- Location: LC_X9_Y6_N7
\bell_clk_6|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~110_combout\, , , VCC)

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
	datac => \bell_clk_6|Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(23));

-- Location: LC_X8_Y6_N5
\bell_clk_6|Add0~115\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~115_combout\ = (\bell_clk_6|cnt\(24) $ ((\bell_clk_6|Add0~112\)))
-- \bell_clk_6|Add0~117\ = CARRY(((!\bell_clk_6|Add0~112\) # (!\bell_clk_6|cnt\(24))))
-- \bell_clk_6|Add0~117COUT1_154\ = CARRY(((!\bell_clk_6|Add0~112\) # (!\bell_clk_6|cnt\(24))))

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
	datab => \bell_clk_6|cnt\(24),
	cin => \bell_clk_6|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~115_combout\,
	cout0 => \bell_clk_6|Add0~117\,
	cout1 => \bell_clk_6|Add0~117COUT1_154\);

-- Location: LC_X8_Y6_N6
\bell_clk_6|Add0~120\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~120_combout\ = (\bell_clk_6|cnt\(25) $ ((!(!\bell_clk_6|Add0~112\ & \bell_clk_6|Add0~117\) # (\bell_clk_6|Add0~112\ & \bell_clk_6|Add0~117COUT1_154\))))
-- \bell_clk_6|Add0~122\ = CARRY(((\bell_clk_6|cnt\(25) & !\bell_clk_6|Add0~117\)))
-- \bell_clk_6|Add0~122COUT1_155\ = CARRY(((\bell_clk_6|cnt\(25) & !\bell_clk_6|Add0~117COUT1_154\)))

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
	datab => \bell_clk_6|cnt\(25),
	cin => \bell_clk_6|Add0~112\,
	cin0 => \bell_clk_6|Add0~117\,
	cin1 => \bell_clk_6|Add0~117COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~120_combout\,
	cout0 => \bell_clk_6|Add0~122\,
	cout1 => \bell_clk_6|Add0~122COUT1_155\);

-- Location: LC_X8_Y6_N7
\bell_clk_6|Add0~125\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~125_combout\ = (\bell_clk_6|cnt\(26) $ (((!\bell_clk_6|Add0~112\ & \bell_clk_6|Add0~122\) # (\bell_clk_6|Add0~112\ & \bell_clk_6|Add0~122COUT1_155\))))
-- \bell_clk_6|Add0~127\ = CARRY(((!\bell_clk_6|Add0~122\) # (!\bell_clk_6|cnt\(26))))
-- \bell_clk_6|Add0~127COUT1_156\ = CARRY(((!\bell_clk_6|Add0~122COUT1_155\) # (!\bell_clk_6|cnt\(26))))

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
	datab => \bell_clk_6|cnt\(26),
	cin => \bell_clk_6|Add0~112\,
	cin0 => \bell_clk_6|Add0~122\,
	cin1 => \bell_clk_6|Add0~122COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~125_combout\,
	cout0 => \bell_clk_6|Add0~127\,
	cout1 => \bell_clk_6|Add0~127COUT1_156\);

-- Location: LC_X8_Y6_N9
\bell_clk_6|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~125_combout\, , , VCC)

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
	datac => \bell_clk_6|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(26));

-- Location: LC_X8_Y6_N8
\bell_clk_6|Add0~130\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~130_combout\ = (((!\bell_clk_6|Add0~112\ & \bell_clk_6|Add0~127\) # (\bell_clk_6|Add0~112\ & \bell_clk_6|Add0~127COUT1_156\) $ (!\bell_clk_6|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \bell_clk_6|cnt\(27),
	cin => \bell_clk_6|Add0~112\,
	cin0 => \bell_clk_6|Add0~127\,
	cin1 => \bell_clk_6|Add0~127COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~130_combout\);

-- Location: LC_X9_Y6_N2
\bell_clk_6|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~130_combout\, , , VCC)

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
	datac => \bell_clk_6|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(27));

-- Location: LC_X9_Y6_N5
\bell_clk_6|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~7\ = (!\bell_clk_6|cnt\(25) & (!\bell_clk_6|cnt\(27) & (!B6_cnt[24] & !\bell_clk_6|cnt\(26))))
-- \bell_clk_6|cnt\(24) = DFFEAS(\bell_clk_6|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~115_combout\, , , VCC)

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
	dataa => \bell_clk_6|cnt\(25),
	datab => \bell_clk_6|cnt\(27),
	datac => \bell_clk_6|Add0~115_combout\,
	datad => \bell_clk_6|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~7\,
	regout => \bell_clk_6|cnt\(24));

-- Location: LC_X9_Y6_N8
\bell_clk_6|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~120_combout\, , , VCC)

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
	datac => \bell_clk_6|Add0~120_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(25));

-- Location: LC_X6_Y6_N5
\bell_clk_6|Add0~25\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~25_combout\ = (\bell_clk_6|cnt\(4) $ ((\bell_clk_6|Add0~37\)))
-- \bell_clk_6|Add0~27\ = CARRY(((!\bell_clk_6|Add0~37\) # (!\bell_clk_6|cnt\(4))))
-- \bell_clk_6|Add0~27COUT1_138\ = CARRY(((!\bell_clk_6|Add0~37\) # (!\bell_clk_6|cnt\(4))))

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
	datab => \bell_clk_6|cnt\(4),
	cin => \bell_clk_6|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~25_combout\,
	cout0 => \bell_clk_6|Add0~27\,
	cout1 => \bell_clk_6|Add0~27COUT1_138\);

-- Location: LC_X5_Y6_N5
\bell_clk_6|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(4) = DFFEAS((((!\bell_clk_6|Equal0~8_combout\ & \bell_clk_6|Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_6|Equal0~8_combout\,
	datad => \bell_clk_6|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(4));

-- Location: LC_X6_Y6_N6
\bell_clk_6|Add0~20\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~20_combout\ = (\bell_clk_6|cnt\(5) $ ((!(!\bell_clk_6|Add0~37\ & \bell_clk_6|Add0~27\) # (\bell_clk_6|Add0~37\ & \bell_clk_6|Add0~27COUT1_138\))))
-- \bell_clk_6|Add0~22\ = CARRY(((\bell_clk_6|cnt\(5) & !\bell_clk_6|Add0~27\)))
-- \bell_clk_6|Add0~22COUT1_139\ = CARRY(((\bell_clk_6|cnt\(5) & !\bell_clk_6|Add0~27COUT1_138\)))

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
	datab => \bell_clk_6|cnt\(5),
	cin => \bell_clk_6|Add0~37\,
	cin0 => \bell_clk_6|Add0~27\,
	cin1 => \bell_clk_6|Add0~27COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~20_combout\,
	cout0 => \bell_clk_6|Add0~22\,
	cout1 => \bell_clk_6|Add0~22COUT1_139\);

-- Location: LC_X5_Y6_N3
\bell_clk_6|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(5) = DFFEAS(((!\bell_clk_6|Equal0~8_combout\ & (\bell_clk_6|Add0~20_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \bell_clk_6|Equal0~8_combout\,
	datac => \bell_clk_6|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(5));

-- Location: LC_X6_Y6_N7
\bell_clk_6|Add0~15\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~15_combout\ = (\bell_clk_6|cnt\(6) $ (((!\bell_clk_6|Add0~37\ & \bell_clk_6|Add0~22\) # (\bell_clk_6|Add0~37\ & \bell_clk_6|Add0~22COUT1_139\))))
-- \bell_clk_6|Add0~17\ = CARRY(((!\bell_clk_6|Add0~22\) # (!\bell_clk_6|cnt\(6))))
-- \bell_clk_6|Add0~17COUT1_140\ = CARRY(((!\bell_clk_6|Add0~22COUT1_139\) # (!\bell_clk_6|cnt\(6))))

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
	datab => \bell_clk_6|cnt\(6),
	cin => \bell_clk_6|Add0~37\,
	cin0 => \bell_clk_6|Add0~22\,
	cin1 => \bell_clk_6|Add0~22COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~15_combout\,
	cout0 => \bell_clk_6|Add0~17\,
	cout1 => \bell_clk_6|Add0~17COUT1_140\);

-- Location: LC_X5_Y6_N2
\bell_clk_6|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(6) = DFFEAS((((!\bell_clk_6|Equal0~8_combout\ & \bell_clk_6|Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_6|Equal0~8_combout\,
	datad => \bell_clk_6|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(6));

-- Location: LC_X5_Y6_N4
\bell_clk_6|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~1\ = (\bell_clk_6|cnt\(6) & (\bell_clk_6|cnt\(4) & (!B6_cnt[7] & \bell_clk_6|cnt\(5))))
-- \bell_clk_6|cnt\(7) = DFFEAS(\bell_clk_6|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_6|Add0~30_combout\, , , VCC)

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
	dataa => \bell_clk_6|cnt\(6),
	datab => \bell_clk_6|cnt\(4),
	datac => \bell_clk_6|Add0~30_combout\,
	datad => \bell_clk_6|cnt\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~1\,
	regout => \bell_clk_6|cnt\(7));

-- Location: LC_X6_Y6_N8
\bell_clk_6|Add0~30\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~30_combout\ = \bell_clk_6|cnt\(7) $ ((((!(!\bell_clk_6|Add0~37\ & \bell_clk_6|Add0~17\) # (\bell_clk_6|Add0~37\ & \bell_clk_6|Add0~17COUT1_140\)))))
-- \bell_clk_6|Add0~32\ = CARRY((\bell_clk_6|cnt\(7) & ((!\bell_clk_6|Add0~17\))))
-- \bell_clk_6|Add0~32COUT1_141\ = CARRY((\bell_clk_6|cnt\(7) & ((!\bell_clk_6|Add0~17COUT1_140\))))

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
	dataa => \bell_clk_6|cnt\(7),
	cin => \bell_clk_6|Add0~37\,
	cin0 => \bell_clk_6|Add0~17\,
	cin1 => \bell_clk_6|Add0~17COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~30_combout\,
	cout0 => \bell_clk_6|Add0~32\,
	cout1 => \bell_clk_6|Add0~32COUT1_141\);

-- Location: LC_X13_Y6_N1
\bell_clk_1|Add0~0\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~0_combout\ = (!\bell_clk_1|cnt\(0))
-- \bell_clk_1|Add0~2\ = CARRY((\bell_clk_1|cnt\(0)))
-- \bell_clk_1|Add0~2COUT1_141\ = CARRY((\bell_clk_1|cnt\(0)))

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
	dataa => \bell_clk_1|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~0_combout\,
	cout0 => \bell_clk_1|Add0~2\,
	cout1 => \bell_clk_1|Add0~2COUT1_141\);

-- Location: LC_X6_Y6_N1
\bell_clk_1|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~0\ = (\bell_clk_6|cnt\(9) & (\bell_clk_6|cnt\(8) & (B1_cnt[0] & \bell_clk_6|cnt\(10))))
-- \bell_clk_1|cnt\(0) = DFFEAS(\bell_clk_6|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bell_clk_6|cnt\(9),
	datab => \bell_clk_6|cnt\(8),
	datac => \bell_clk_1|Add0~0_combout\,
	datad => \bell_clk_6|cnt\(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~0\,
	regout => \bell_clk_1|cnt\(0));

-- Location: LC_X5_Y6_N1
\bell_clk_6|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~4_combout\ = (\bell_clk_6|Equal0~1\ & (\bell_clk_6|Equal0~3\ & (\bell_clk_6|Equal0~2\ & \bell_clk_6|Equal0~0\)))

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
	dataa => \bell_clk_6|Equal0~1\,
	datab => \bell_clk_6|Equal0~3\,
	datac => \bell_clk_6|Equal0~2\,
	datad => \bell_clk_6|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~4_combout\);

-- Location: LC_X5_Y6_N7
\bell_clk_6|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Equal0~8_combout\ = (\bell_clk_6|Equal0~5\ & (\bell_clk_6|Equal0~7\ & (\bell_clk_6|Equal0~6\ & \bell_clk_6|Equal0~4_combout\)))

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
	dataa => \bell_clk_6|Equal0~5\,
	datab => \bell_clk_6|Equal0~7\,
	datac => \bell_clk_6|Equal0~6\,
	datad => \bell_clk_6|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Equal0~8_combout\);

-- Location: LC_X6_Y6_N9
\bell_clk_6|Add0~10\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|Add0~10_combout\ = (\bell_clk_6|cnt\(8) $ (((!\bell_clk_6|Add0~37\ & \bell_clk_6|Add0~32\) # (\bell_clk_6|Add0~37\ & \bell_clk_6|Add0~32COUT1_141\))))
-- \bell_clk_6|Add0~12\ = CARRY(((!\bell_clk_6|Add0~32COUT1_141\) # (!\bell_clk_6|cnt\(8))))

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
	datab => \bell_clk_6|cnt\(8),
	cin => \bell_clk_6|Add0~37\,
	cin0 => \bell_clk_6|Add0~32\,
	cin1 => \bell_clk_6|Add0~32COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_6|Add0~10_combout\,
	cout => \bell_clk_6|Add0~12\);

-- Location: LC_X5_Y6_N6
\bell_clk_6|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(8) = DFFEAS(((!\bell_clk_6|Equal0~8_combout\ & (\bell_clk_6|Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \bell_clk_6|Equal0~8_combout\,
	datac => \bell_clk_6|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(8));

-- Location: LC_X6_Y6_N0
\bell_clk_6|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|cnt\(9) = DFFEAS((((\bell_clk_6|Add0~5_combout\ & !\bell_clk_6|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_6|Add0~5_combout\,
	datad => \bell_clk_6|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|cnt\(9));

-- Location: LC_X13_Y6_N2
\bell_clk_1|Add0~35\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~35_combout\ = \bell_clk_1|cnt\(1) $ ((((\bell_clk_1|Add0~2\))))
-- \bell_clk_1|Add0~37\ = CARRY(((!\bell_clk_1|Add0~2\)) # (!\bell_clk_1|cnt\(1)))
-- \bell_clk_1|Add0~37COUT1_142\ = CARRY(((!\bell_clk_1|Add0~2COUT1_141\)) # (!\bell_clk_1|cnt\(1)))

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
	dataa => \bell_clk_1|cnt\(1),
	cin0 => \bell_clk_1|Add0~2\,
	cin1 => \bell_clk_1|Add0~2COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~35_combout\,
	cout0 => \bell_clk_1|Add0~37\,
	cout1 => \bell_clk_1|Add0~37COUT1_142\);

-- Location: LC_X12_Y6_N9
\bell_clk_1|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(1) = DFFEAS((((\bell_clk_1|Add0~35_combout\ & !\bell_clk_1|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_1|Add0~35_combout\,
	datad => \bell_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(1));

-- Location: LC_X13_Y6_N3
\bell_clk_1|Add0~30\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~30_combout\ = (\bell_clk_1|cnt\(2) $ ((!\bell_clk_1|Add0~37\)))
-- \bell_clk_1|Add0~32\ = CARRY(((\bell_clk_1|cnt\(2) & !\bell_clk_1|Add0~37\)))
-- \bell_clk_1|Add0~32COUT1_143\ = CARRY(((\bell_clk_1|cnt\(2) & !\bell_clk_1|Add0~37COUT1_142\)))

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
	datab => \bell_clk_1|cnt\(2),
	cin0 => \bell_clk_1|Add0~37\,
	cin1 => \bell_clk_1|Add0~37COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~30_combout\,
	cout0 => \bell_clk_1|Add0~32\,
	cout1 => \bell_clk_1|Add0~32COUT1_143\);

-- Location: LC_X12_Y6_N7
\bell_clk_1|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~30_combout\, , , VCC)

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
	datac => \bell_clk_1|Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(2));

-- Location: LC_X13_Y6_N4
\bell_clk_1|Add0~25\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~25_combout\ = (\bell_clk_1|cnt\(3) $ ((\bell_clk_1|Add0~32\)))
-- \bell_clk_1|Add0~27\ = CARRY(((!\bell_clk_1|Add0~32COUT1_143\) # (!\bell_clk_1|cnt\(3))))

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
	datab => \bell_clk_1|cnt\(3),
	cin0 => \bell_clk_1|Add0~32\,
	cin1 => \bell_clk_1|Add0~32COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~25_combout\,
	cout => \bell_clk_1|Add0~27\);

-- Location: LC_X12_Y6_N2
\bell_clk_1|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~1\ = (\bell_clk_1|cnt\(0) & (!\bell_clk_1|cnt\(2) & (!B1_cnt[3] & !\bell_clk_1|cnt\(1))))
-- \bell_clk_1|cnt\(3) = DFFEAS(\bell_clk_1|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~25_combout\, , , VCC)

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
	dataa => \bell_clk_1|cnt\(0),
	datab => \bell_clk_1|cnt\(2),
	datac => \bell_clk_1|Add0~25_combout\,
	datad => \bell_clk_1|cnt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~1\,
	regout => \bell_clk_1|cnt\(3));

-- Location: LC_X13_Y6_N5
\bell_clk_1|Add0~10\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~10_combout\ = \bell_clk_1|cnt\(4) $ ((((!\bell_clk_1|Add0~27\))))
-- \bell_clk_1|Add0~12\ = CARRY((\bell_clk_1|cnt\(4) & ((!\bell_clk_1|Add0~27\))))
-- \bell_clk_1|Add0~12COUT1_144\ = CARRY((\bell_clk_1|cnt\(4) & ((!\bell_clk_1|Add0~27\))))

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
	dataa => \bell_clk_1|cnt\(4),
	cin => \bell_clk_1|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~10_combout\,
	cout0 => \bell_clk_1|Add0~12\,
	cout1 => \bell_clk_1|Add0~12COUT1_144\);

-- Location: LC_X12_Y6_N1
\bell_clk_1|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(4) = DFFEAS(((\bell_clk_1|Add0~10_combout\ & ((!\bell_clk_1|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_1|Add0~10_combout\,
	datad => \bell_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(4));

-- Location: LC_X13_Y6_N6
\bell_clk_1|Add0~20\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~20_combout\ = \bell_clk_1|cnt\(5) $ (((((!\bell_clk_1|Add0~27\ & \bell_clk_1|Add0~12\) # (\bell_clk_1|Add0~27\ & \bell_clk_1|Add0~12COUT1_144\)))))
-- \bell_clk_1|Add0~22\ = CARRY(((!\bell_clk_1|Add0~12\)) # (!\bell_clk_1|cnt\(5)))
-- \bell_clk_1|Add0~22COUT1_145\ = CARRY(((!\bell_clk_1|Add0~12COUT1_144\)) # (!\bell_clk_1|cnt\(5)))

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
	dataa => \bell_clk_1|cnt\(5),
	cin => \bell_clk_1|Add0~27\,
	cin0 => \bell_clk_1|Add0~12\,
	cin1 => \bell_clk_1|Add0~12COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~20_combout\,
	cout0 => \bell_clk_1|Add0~22\,
	cout1 => \bell_clk_1|Add0~22COUT1_145\);

-- Location: LC_X12_Y6_N0
\bell_clk_1|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~20_combout\, , , VCC)

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
	datac => \bell_clk_1|Add0~20_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(5));

-- Location: LC_X13_Y6_N7
\bell_clk_1|Add0~5\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~5_combout\ = \bell_clk_1|cnt\(6) $ ((((!(!\bell_clk_1|Add0~27\ & \bell_clk_1|Add0~22\) # (\bell_clk_1|Add0~27\ & \bell_clk_1|Add0~22COUT1_145\)))))
-- \bell_clk_1|Add0~7\ = CARRY((\bell_clk_1|cnt\(6) & ((!\bell_clk_1|Add0~22\))))
-- \bell_clk_1|Add0~7COUT1_146\ = CARRY((\bell_clk_1|cnt\(6) & ((!\bell_clk_1|Add0~22COUT1_145\))))

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
	dataa => \bell_clk_1|cnt\(6),
	cin => \bell_clk_1|Add0~27\,
	cin0 => \bell_clk_1|Add0~22\,
	cin1 => \bell_clk_1|Add0~22COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~5_combout\,
	cout0 => \bell_clk_1|Add0~7\,
	cout1 => \bell_clk_1|Add0~7COUT1_146\);

-- Location: LC_X12_Y6_N5
\bell_clk_1|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(6) = DFFEAS((\bell_clk_1|Add0~5_combout\ & (((!\bell_clk_1|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \bell_clk_1|Add0~5_combout\,
	datad => \bell_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(6));

-- Location: LC_X13_Y6_N8
\bell_clk_1|Add0~15\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~15_combout\ = (\bell_clk_1|cnt\(7) $ (((!\bell_clk_1|Add0~27\ & \bell_clk_1|Add0~7\) # (\bell_clk_1|Add0~27\ & \bell_clk_1|Add0~7COUT1_146\))))
-- \bell_clk_1|Add0~17\ = CARRY(((!\bell_clk_1|Add0~7\) # (!\bell_clk_1|cnt\(7))))
-- \bell_clk_1|Add0~17COUT1_147\ = CARRY(((!\bell_clk_1|Add0~7COUT1_146\) # (!\bell_clk_1|cnt\(7))))

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
	datab => \bell_clk_1|cnt\(7),
	cin => \bell_clk_1|Add0~27\,
	cin0 => \bell_clk_1|Add0~7\,
	cin1 => \bell_clk_1|Add0~7COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~15_combout\,
	cout0 => \bell_clk_1|Add0~17\,
	cout1 => \bell_clk_1|Add0~17COUT1_147\);

-- Location: LC_X12_Y6_N4
\bell_clk_1|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~0\ = (\bell_clk_1|cnt\(6) & (!\bell_clk_1|cnt\(5) & (!B1_cnt[7] & \bell_clk_1|cnt\(4))))
-- \bell_clk_1|cnt\(7) = DFFEAS(\bell_clk_1|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~15_combout\, , , VCC)

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
	dataa => \bell_clk_1|cnt\(6),
	datab => \bell_clk_1|cnt\(5),
	datac => \bell_clk_1|Add0~15_combout\,
	datad => \bell_clk_1|cnt\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~0\,
	regout => \bell_clk_1|cnt\(7));

-- Location: LC_X13_Y6_N9
\bell_clk_1|Add0~40\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~40_combout\ = (\bell_clk_1|cnt\(8) $ ((!(!\bell_clk_1|Add0~27\ & \bell_clk_1|Add0~17\) # (\bell_clk_1|Add0~27\ & \bell_clk_1|Add0~17COUT1_147\))))
-- \bell_clk_1|Add0~42\ = CARRY(((\bell_clk_1|cnt\(8) & !\bell_clk_1|Add0~17COUT1_147\)))

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
	datab => \bell_clk_1|cnt\(8),
	cin => \bell_clk_1|Add0~27\,
	cin0 => \bell_clk_1|Add0~17\,
	cin1 => \bell_clk_1|Add0~17COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~40_combout\,
	cout => \bell_clk_1|Add0~42\);

-- Location: LC_X11_Y6_N1
\bell_clk_1|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(8) = DFFEAS(((!\bell_clk_1|Equal0~8_combout\ & ((\bell_clk_1|Add0~40_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_1|Equal0~8_combout\,
	datad => \bell_clk_1|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(8));

-- Location: LC_X14_Y6_N0
\bell_clk_1|Add0~55\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~55_combout\ = \bell_clk_1|cnt\(9) $ ((((\bell_clk_1|Add0~42\))))
-- \bell_clk_1|Add0~57\ = CARRY(((!\bell_clk_1|Add0~42\)) # (!\bell_clk_1|cnt\(9)))
-- \bell_clk_1|Add0~57COUT1_148\ = CARRY(((!\bell_clk_1|Add0~42\)) # (!\bell_clk_1|cnt\(9)))

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
	dataa => \bell_clk_1|cnt\(9),
	cin => \bell_clk_1|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~55_combout\,
	cout0 => \bell_clk_1|Add0~57\,
	cout1 => \bell_clk_1|Add0~57COUT1_148\);

-- Location: LC_X11_Y6_N6
\bell_clk_1|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~2\ = (\bell_clk_1|cnt\(10) & (\bell_clk_1|cnt\(11) & (!B1_cnt[9] & \bell_clk_1|cnt\(8))))
-- \bell_clk_1|cnt\(9) = DFFEAS(\bell_clk_1|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~55_combout\, , , VCC)

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
	dataa => \bell_clk_1|cnt\(10),
	datab => \bell_clk_1|cnt\(11),
	datac => \bell_clk_1|Add0~55_combout\,
	datad => \bell_clk_1|cnt\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~2\,
	regout => \bell_clk_1|cnt\(9));

-- Location: LC_X14_Y6_N1
\bell_clk_1|Add0~45\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~45_combout\ = (\bell_clk_1|cnt\(10) $ ((!(!\bell_clk_1|Add0~42\ & \bell_clk_1|Add0~57\) # (\bell_clk_1|Add0~42\ & \bell_clk_1|Add0~57COUT1_148\))))
-- \bell_clk_1|Add0~47\ = CARRY(((\bell_clk_1|cnt\(10) & !\bell_clk_1|Add0~57\)))
-- \bell_clk_1|Add0~47COUT1_149\ = CARRY(((\bell_clk_1|cnt\(10) & !\bell_clk_1|Add0~57COUT1_148\)))

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
	datab => \bell_clk_1|cnt\(10),
	cin => \bell_clk_1|Add0~42\,
	cin0 => \bell_clk_1|Add0~57\,
	cin1 => \bell_clk_1|Add0~57COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~45_combout\,
	cout0 => \bell_clk_1|Add0~47\,
	cout1 => \bell_clk_1|Add0~47COUT1_149\);

-- Location: LC_X11_Y6_N3
\bell_clk_1|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(10) = DFFEAS(((!\bell_clk_1|Equal0~8_combout\ & ((\bell_clk_1|Add0~45_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_1|Equal0~8_combout\,
	datad => \bell_clk_1|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(10));

-- Location: LC_X14_Y6_N2
\bell_clk_1|Add0~50\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~50_combout\ = (\bell_clk_1|cnt\(11) $ (((!\bell_clk_1|Add0~42\ & \bell_clk_1|Add0~47\) # (\bell_clk_1|Add0~42\ & \bell_clk_1|Add0~47COUT1_149\))))
-- \bell_clk_1|Add0~52\ = CARRY(((!\bell_clk_1|Add0~47\) # (!\bell_clk_1|cnt\(11))))
-- \bell_clk_1|Add0~52COUT1_150\ = CARRY(((!\bell_clk_1|Add0~47COUT1_149\) # (!\bell_clk_1|cnt\(11))))

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
	datab => \bell_clk_1|cnt\(11),
	cin => \bell_clk_1|Add0~42\,
	cin0 => \bell_clk_1|Add0~47\,
	cin1 => \bell_clk_1|Add0~47COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~50_combout\,
	cout0 => \bell_clk_1|Add0~52\,
	cout1 => \bell_clk_1|Add0~52COUT1_150\);

-- Location: LC_X11_Y6_N9
\bell_clk_1|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(11) = DFFEAS(((!\bell_clk_1|Equal0~8_combout\ & ((\bell_clk_1|Add0~50_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_1|Equal0~8_combout\,
	datad => \bell_clk_1|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(11));

-- Location: LC_X14_Y6_N3
\bell_clk_1|Add0~60\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~60_combout\ = \bell_clk_1|cnt\(12) $ ((((!(!\bell_clk_1|Add0~42\ & \bell_clk_1|Add0~52\) # (\bell_clk_1|Add0~42\ & \bell_clk_1|Add0~52COUT1_150\)))))
-- \bell_clk_1|Add0~62\ = CARRY((\bell_clk_1|cnt\(12) & ((!\bell_clk_1|Add0~52\))))
-- \bell_clk_1|Add0~62COUT1_151\ = CARRY((\bell_clk_1|cnt\(12) & ((!\bell_clk_1|Add0~52COUT1_150\))))

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
	dataa => \bell_clk_1|cnt\(12),
	cin => \bell_clk_1|Add0~42\,
	cin0 => \bell_clk_1|Add0~52\,
	cin1 => \bell_clk_1|Add0~52COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~60_combout\,
	cout0 => \bell_clk_1|Add0~62\,
	cout1 => \bell_clk_1|Add0~62COUT1_151\);

-- Location: LC_X13_Y6_N0
\bell_clk_1|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(12) = DFFEAS((((\bell_clk_1|Add0~60_combout\ & !\bell_clk_1|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_1|Add0~60_combout\,
	datad => \bell_clk_1|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(12));

-- Location: LC_X14_Y6_N4
\bell_clk_1|Add0~70\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~70_combout\ = (\bell_clk_1|cnt\(13) $ (((!\bell_clk_1|Add0~42\ & \bell_clk_1|Add0~62\) # (\bell_clk_1|Add0~42\ & \bell_clk_1|Add0~62COUT1_151\))))
-- \bell_clk_1|Add0~72\ = CARRY(((!\bell_clk_1|Add0~62COUT1_151\) # (!\bell_clk_1|cnt\(13))))

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
	datab => \bell_clk_1|cnt\(13),
	cin => \bell_clk_1|Add0~42\,
	cin0 => \bell_clk_1|Add0~62\,
	cin1 => \bell_clk_1|Add0~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~70_combout\,
	cout => \bell_clk_1|Add0~72\);

-- Location: LC_X14_Y6_N6
\bell_clk_1|Add0~75\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~75_combout\ = (\bell_clk_1|cnt\(15) $ (((!\bell_clk_1|Add0~72\ & \bell_clk_1|Add0~67\) # (\bell_clk_1|Add0~72\ & \bell_clk_1|Add0~67COUT1_152\))))
-- \bell_clk_1|Add0~77\ = CARRY(((!\bell_clk_1|Add0~67\) # (!\bell_clk_1|cnt\(15))))
-- \bell_clk_1|Add0~77COUT1_153\ = CARRY(((!\bell_clk_1|Add0~67COUT1_152\) # (!\bell_clk_1|cnt\(15))))

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
	datab => \bell_clk_1|cnt\(15),
	cin => \bell_clk_1|Add0~72\,
	cin0 => \bell_clk_1|Add0~67\,
	cin1 => \bell_clk_1|Add0~67COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~75_combout\,
	cout0 => \bell_clk_1|Add0~77\,
	cout1 => \bell_clk_1|Add0~77COUT1_153\);

-- Location: LC_X13_Y8_N7
\bell_clk_1|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(15) = DFFEAS((((\bell_clk_1|Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_1|Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(15));

-- Location: LC_X12_Y6_N6
\bell_clk_1|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~3\ = (\bell_clk_1|cnt\(14) & (\bell_clk_1|cnt\(12) & (!B1_cnt[13] & !\bell_clk_1|cnt\(15))))
-- \bell_clk_1|cnt\(13) = DFFEAS(\bell_clk_1|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~70_combout\, , , VCC)

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
	dataa => \bell_clk_1|cnt\(14),
	datab => \bell_clk_1|cnt\(12),
	datac => \bell_clk_1|Add0~70_combout\,
	datad => \bell_clk_1|cnt\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~3\,
	regout => \bell_clk_1|cnt\(13));

-- Location: LC_X14_Y6_N7
\bell_clk_1|Add0~80\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~80_combout\ = \bell_clk_1|cnt\(16) $ ((((!(!\bell_clk_1|Add0~72\ & \bell_clk_1|Add0~77\) # (\bell_clk_1|Add0~72\ & \bell_clk_1|Add0~77COUT1_153\)))))
-- \bell_clk_1|Add0~82\ = CARRY((\bell_clk_1|cnt\(16) & ((!\bell_clk_1|Add0~77\))))
-- \bell_clk_1|Add0~82COUT1_154\ = CARRY((\bell_clk_1|cnt\(16) & ((!\bell_clk_1|Add0~77COUT1_153\))))

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
	dataa => \bell_clk_1|cnt\(16),
	cin => \bell_clk_1|Add0~72\,
	cin0 => \bell_clk_1|Add0~77\,
	cin1 => \bell_clk_1|Add0~77COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~80_combout\,
	cout0 => \bell_clk_1|Add0~82\,
	cout1 => \bell_clk_1|Add0~82COUT1_154\);

-- Location: LC_X15_Y6_N0
\bell_clk_1|Add0~95\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~95_combout\ = (\bell_clk_1|cnt\(19) $ ((\bell_clk_1|Add0~92\)))
-- \bell_clk_1|Add0~97\ = CARRY(((!\bell_clk_1|Add0~92\) # (!\bell_clk_1|cnt\(19))))
-- \bell_clk_1|Add0~97COUT1_156\ = CARRY(((!\bell_clk_1|Add0~92\) # (!\bell_clk_1|cnt\(19))))

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
	datab => \bell_clk_1|cnt\(19),
	cin => \bell_clk_1|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~95_combout\,
	cout0 => \bell_clk_1|Add0~97\,
	cout1 => \bell_clk_1|Add0~97COUT1_156\);

-- Location: LC_X16_Y6_N8
\bell_clk_1|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(19) = DFFEAS((((\bell_clk_1|Add0~95_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_1|Add0~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(19));

-- Location: LC_X16_Y6_N6
\bell_clk_1|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~5\ = (!\bell_clk_1|cnt\(17) & (!\bell_clk_1|cnt\(18) & (!B1_cnt[16] & !\bell_clk_1|cnt\(19))))
-- \bell_clk_1|cnt\(16) = DFFEAS(\bell_clk_1|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~80_combout\, , , VCC)

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
	dataa => \bell_clk_1|cnt\(17),
	datab => \bell_clk_1|cnt\(18),
	datac => \bell_clk_1|Add0~80_combout\,
	datad => \bell_clk_1|cnt\(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~5\,
	regout => \bell_clk_1|cnt\(16));

-- Location: LC_X14_Y6_N8
\bell_clk_1|Add0~85\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~85_combout\ = (\bell_clk_1|cnt\(17) $ (((!\bell_clk_1|Add0~72\ & \bell_clk_1|Add0~82\) # (\bell_clk_1|Add0~72\ & \bell_clk_1|Add0~82COUT1_154\))))
-- \bell_clk_1|Add0~87\ = CARRY(((!\bell_clk_1|Add0~82\) # (!\bell_clk_1|cnt\(17))))
-- \bell_clk_1|Add0~87COUT1_155\ = CARRY(((!\bell_clk_1|Add0~82COUT1_154\) # (!\bell_clk_1|cnt\(17))))

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
	datab => \bell_clk_1|cnt\(17),
	cin => \bell_clk_1|Add0~72\,
	cin0 => \bell_clk_1|Add0~82\,
	cin1 => \bell_clk_1|Add0~82COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~85_combout\,
	cout0 => \bell_clk_1|Add0~87\,
	cout1 => \bell_clk_1|Add0~87COUT1_155\);

-- Location: LC_X15_Y5_N2
\bell_clk_1|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~85_combout\, , , VCC)

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
	datac => \bell_clk_1|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(17));

-- Location: LC_X14_Y6_N9
\bell_clk_1|Add0~90\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~90_combout\ = (\bell_clk_1|cnt\(18) $ ((!(!\bell_clk_1|Add0~72\ & \bell_clk_1|Add0~87\) # (\bell_clk_1|Add0~72\ & \bell_clk_1|Add0~87COUT1_155\))))
-- \bell_clk_1|Add0~92\ = CARRY(((\bell_clk_1|cnt\(18) & !\bell_clk_1|Add0~87COUT1_155\)))

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
	datab => \bell_clk_1|cnt\(18),
	cin => \bell_clk_1|Add0~72\,
	cin0 => \bell_clk_1|Add0~87\,
	cin1 => \bell_clk_1|Add0~87COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~90_combout\,
	cout => \bell_clk_1|Add0~92\);

-- Location: LC_X16_Y6_N2
\bell_clk_1|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~90_combout\, , , VCC)

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
	datac => \bell_clk_1|Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(18));

-- Location: LC_X15_Y6_N1
\bell_clk_1|Add0~100\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~100_combout\ = \bell_clk_1|cnt\(20) $ ((((!(!\bell_clk_1|Add0~92\ & \bell_clk_1|Add0~97\) # (\bell_clk_1|Add0~92\ & \bell_clk_1|Add0~97COUT1_156\)))))
-- \bell_clk_1|Add0~102\ = CARRY((\bell_clk_1|cnt\(20) & ((!\bell_clk_1|Add0~97\))))
-- \bell_clk_1|Add0~102COUT1_157\ = CARRY((\bell_clk_1|cnt\(20) & ((!\bell_clk_1|Add0~97COUT1_156\))))

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
	dataa => \bell_clk_1|cnt\(20),
	cin => \bell_clk_1|Add0~92\,
	cin0 => \bell_clk_1|Add0~97\,
	cin1 => \bell_clk_1|Add0~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~100_combout\,
	cout0 => \bell_clk_1|Add0~102\,
	cout1 => \bell_clk_1|Add0~102COUT1_157\);

-- Location: LC_X15_Y6_N2
\bell_clk_1|Add0~105\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~105_combout\ = (\bell_clk_1|cnt\(21) $ (((!\bell_clk_1|Add0~92\ & \bell_clk_1|Add0~102\) # (\bell_clk_1|Add0~92\ & \bell_clk_1|Add0~102COUT1_157\))))
-- \bell_clk_1|Add0~107\ = CARRY(((!\bell_clk_1|Add0~102\) # (!\bell_clk_1|cnt\(21))))
-- \bell_clk_1|Add0~107COUT1_158\ = CARRY(((!\bell_clk_1|Add0~102COUT1_157\) # (!\bell_clk_1|cnt\(21))))

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
	datab => \bell_clk_1|cnt\(21),
	cin => \bell_clk_1|Add0~92\,
	cin0 => \bell_clk_1|Add0~102\,
	cin1 => \bell_clk_1|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~105_combout\,
	cout0 => \bell_clk_1|Add0~107\,
	cout1 => \bell_clk_1|Add0~107COUT1_158\);

-- Location: LC_X15_Y6_N3
\bell_clk_1|Add0~110\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~110_combout\ = (\bell_clk_1|cnt\(22) $ ((!(!\bell_clk_1|Add0~92\ & \bell_clk_1|Add0~107\) # (\bell_clk_1|Add0~92\ & \bell_clk_1|Add0~107COUT1_158\))))
-- \bell_clk_1|Add0~112\ = CARRY(((\bell_clk_1|cnt\(22) & !\bell_clk_1|Add0~107\)))
-- \bell_clk_1|Add0~112COUT1_159\ = CARRY(((\bell_clk_1|cnt\(22) & !\bell_clk_1|Add0~107COUT1_158\)))

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
	datab => \bell_clk_1|cnt\(22),
	cin => \bell_clk_1|Add0~92\,
	cin0 => \bell_clk_1|Add0~107\,
	cin1 => \bell_clk_1|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~110_combout\,
	cout0 => \bell_clk_1|Add0~112\,
	cout1 => \bell_clk_1|Add0~112COUT1_159\);

-- Location: LC_X16_Y6_N9
\bell_clk_1|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~110_combout\, , , VCC)

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
	datac => \bell_clk_1|Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(22));

-- Location: LC_X15_Y6_N4
\bell_clk_1|Add0~115\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~115_combout\ = \bell_clk_1|cnt\(23) $ (((((!\bell_clk_1|Add0~92\ & \bell_clk_1|Add0~112\) # (\bell_clk_1|Add0~92\ & \bell_clk_1|Add0~112COUT1_159\)))))
-- \bell_clk_1|Add0~117\ = CARRY(((!\bell_clk_1|Add0~112COUT1_159\)) # (!\bell_clk_1|cnt\(23)))

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
	dataa => \bell_clk_1|cnt\(23),
	cin => \bell_clk_1|Add0~92\,
	cin0 => \bell_clk_1|Add0~112\,
	cin1 => \bell_clk_1|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~115_combout\,
	cout => \bell_clk_1|Add0~117\);

-- Location: LC_X16_Y6_N0
\bell_clk_1|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(23) = DFFEAS((((\bell_clk_1|Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_1|Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(23));

-- Location: LC_X16_Y6_N7
\bell_clk_1|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~6\ = (!\bell_clk_1|cnt\(21) & (!\bell_clk_1|cnt\(23) & (!B1_cnt[20] & !\bell_clk_1|cnt\(22))))
-- \bell_clk_1|cnt\(20) = DFFEAS(\bell_clk_1|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~100_combout\, , , VCC)

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
	dataa => \bell_clk_1|cnt\(21),
	datab => \bell_clk_1|cnt\(23),
	datac => \bell_clk_1|Add0~100_combout\,
	datad => \bell_clk_1|cnt\(22),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~6\,
	regout => \bell_clk_1|cnt\(20));

-- Location: LC_X16_Y6_N5
\bell_clk_1|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(21) = DFFEAS((((\bell_clk_1|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_1|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(21));

-- Location: LC_X15_Y6_N5
\bell_clk_1|Add0~120\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~120_combout\ = (\bell_clk_1|cnt\(24) $ ((!\bell_clk_1|Add0~117\)))
-- \bell_clk_1|Add0~122\ = CARRY(((\bell_clk_1|cnt\(24) & !\bell_clk_1|Add0~117\)))
-- \bell_clk_1|Add0~122COUT1_160\ = CARRY(((\bell_clk_1|cnt\(24) & !\bell_clk_1|Add0~117\)))

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
	datab => \bell_clk_1|cnt\(24),
	cin => \bell_clk_1|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~120_combout\,
	cout0 => \bell_clk_1|Add0~122\,
	cout1 => \bell_clk_1|Add0~122COUT1_160\);

-- Location: LC_X16_Y6_N3
\bell_clk_1|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~7\ = (!\bell_clk_1|cnt\(27) & (!\bell_clk_1|cnt\(26) & (!B1_cnt[24] & !\bell_clk_1|cnt\(25))))
-- \bell_clk_1|cnt\(24) = DFFEAS(\bell_clk_1|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~120_combout\, , , VCC)

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
	dataa => \bell_clk_1|cnt\(27),
	datab => \bell_clk_1|cnt\(26),
	datac => \bell_clk_1|Add0~120_combout\,
	datad => \bell_clk_1|cnt\(25),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~7\,
	regout => \bell_clk_1|cnt\(24));

-- Location: LC_X15_Y6_N6
\bell_clk_1|Add0~125\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~125_combout\ = \bell_clk_1|cnt\(25) $ (((((!\bell_clk_1|Add0~117\ & \bell_clk_1|Add0~122\) # (\bell_clk_1|Add0~117\ & \bell_clk_1|Add0~122COUT1_160\)))))
-- \bell_clk_1|Add0~127\ = CARRY(((!\bell_clk_1|Add0~122\)) # (!\bell_clk_1|cnt\(25)))
-- \bell_clk_1|Add0~127COUT1_161\ = CARRY(((!\bell_clk_1|Add0~122COUT1_160\)) # (!\bell_clk_1|cnt\(25)))

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
	dataa => \bell_clk_1|cnt\(25),
	cin => \bell_clk_1|Add0~117\,
	cin0 => \bell_clk_1|Add0~122\,
	cin1 => \bell_clk_1|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~125_combout\,
	cout0 => \bell_clk_1|Add0~127\,
	cout1 => \bell_clk_1|Add0~127COUT1_161\);

-- Location: LC_X16_Y6_N1
\bell_clk_1|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~125_combout\, , , VCC)

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
	datac => \bell_clk_1|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(25));

-- Location: LC_X15_Y6_N7
\bell_clk_1|Add0~130\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~130_combout\ = (\bell_clk_1|cnt\(26) $ ((!(!\bell_clk_1|Add0~117\ & \bell_clk_1|Add0~127\) # (\bell_clk_1|Add0~117\ & \bell_clk_1|Add0~127COUT1_161\))))
-- \bell_clk_1|Add0~132\ = CARRY(((\bell_clk_1|cnt\(26) & !\bell_clk_1|Add0~127\)))
-- \bell_clk_1|Add0~132COUT1_162\ = CARRY(((\bell_clk_1|cnt\(26) & !\bell_clk_1|Add0~127COUT1_161\)))

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
	datab => \bell_clk_1|cnt\(26),
	cin => \bell_clk_1|Add0~117\,
	cin0 => \bell_clk_1|Add0~127\,
	cin1 => \bell_clk_1|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~130_combout\,
	cout0 => \bell_clk_1|Add0~132\,
	cout1 => \bell_clk_1|Add0~132COUT1_162\);

-- Location: LC_X15_Y6_N9
\bell_clk_1|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_1|Add0~130_combout\, , , VCC)

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
	datac => \bell_clk_1|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(26));

-- Location: LC_X15_Y6_N8
\bell_clk_1|Add0~135\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Add0~135_combout\ = (((!\bell_clk_1|Add0~117\ & \bell_clk_1|Add0~132\) # (\bell_clk_1|Add0~117\ & \bell_clk_1|Add0~132COUT1_162\) $ (\bell_clk_1|cnt\(27))))

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
	datad => \bell_clk_1|cnt\(27),
	cin => \bell_clk_1|Add0~117\,
	cin0 => \bell_clk_1|Add0~132\,
	cin1 => \bell_clk_1|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Add0~135_combout\);

-- Location: LC_X16_Y6_N4
\bell_clk_1|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|cnt\(27) = DFFEAS((((\bell_clk_1|Add0~135_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_1|Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|cnt\(27));

-- Location: LC_X12_Y6_N3
\bell_clk_1|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~4_combout\ = (\bell_clk_1|Equal0~0\ & (\bell_clk_1|Equal0~2\ & (\bell_clk_1|Equal0~3\ & \bell_clk_1|Equal0~1\)))

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
	dataa => \bell_clk_1|Equal0~0\,
	datab => \bell_clk_1|Equal0~2\,
	datac => \bell_clk_1|Equal0~3\,
	datad => \bell_clk_1|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~4_combout\);

-- Location: LC_X12_Y6_N8
\bell_clk_1|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|Equal0~8_combout\ = (\bell_clk_1|Equal0~6\ & (\bell_clk_1|Equal0~7\ & (\bell_clk_1|Equal0~5\ & \bell_clk_1|Equal0~4_combout\)))

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
	dataa => \bell_clk_1|Equal0~6\,
	datab => \bell_clk_1|Equal0~7\,
	datac => \bell_clk_1|Equal0~5\,
	datad => \bell_clk_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_1|Equal0~8_combout\);

-- Location: LC_X11_Y6_N8
\bell_clk_1|clkout\ : maxii_lcell
-- Equation(s):
-- \bell_clk_1|clkout~regout\ = DFFEAS((\bell_clk_1|Equal0~8_combout\ $ (((\bell_clk_1|clkout~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_1|Equal0~8_combout\,
	datad => \bell_clk_1|clkout~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_1|clkout~regout\);

-- Location: LC_X10_Y6_N6
\Mux0~2\ : maxii_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\bell_code~combout\(1) & (\bell_code~combout\(0))) # (!\bell_code~combout\(1) & (\bell_clk_1|clkout~regout\ & ((\bell_code~combout\(0)) # (!\bell_pulse~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bell_code~combout\(1),
	datab => \bell_code~combout\(0),
	datac => \bell_pulse~combout\,
	datad => \bell_clk_1|clkout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X13_Y7_N5
\bell_clk_2|Add0~65\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~65_combout\ = (\bell_clk_2|cnt\(14) $ ((!\bell_clk_2|Add0~72\)))
-- \bell_clk_2|Add0~67\ = CARRY(((\bell_clk_2|cnt\(14) & !\bell_clk_2|Add0~72\)))
-- \bell_clk_2|Add0~67COUT1_152\ = CARRY(((\bell_clk_2|cnt\(14) & !\bell_clk_2|Add0~72\)))

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
	datab => \bell_clk_2|cnt\(14),
	cin => \bell_clk_2|Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~65_combout\,
	cout0 => \bell_clk_2|Add0~67\,
	cout1 => \bell_clk_2|Add0~67COUT1_152\);

-- Location: LC_X10_Y7_N3
\bell_clk_2|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(14) = DFFEAS((((\bell_clk_2|Add0~65_combout\ & !\bell_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_2|Add0~65_combout\,
	datad => \bell_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(14));

-- Location: LC_X13_Y7_N6
\bell_clk_2|Add0~75\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~75_combout\ = (\bell_clk_2|cnt\(15) $ (((!\bell_clk_2|Add0~72\ & \bell_clk_2|Add0~67\) # (\bell_clk_2|Add0~72\ & \bell_clk_2|Add0~67COUT1_152\))))
-- \bell_clk_2|Add0~77\ = CARRY(((!\bell_clk_2|Add0~67\) # (!\bell_clk_2|cnt\(15))))
-- \bell_clk_2|Add0~77COUT1_153\ = CARRY(((!\bell_clk_2|Add0~67COUT1_152\) # (!\bell_clk_2|cnt\(15))))

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
	datab => \bell_clk_2|cnt\(15),
	cin => \bell_clk_2|Add0~72\,
	cin0 => \bell_clk_2|Add0~67\,
	cin1 => \bell_clk_2|Add0~67COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~75_combout\,
	cout0 => \bell_clk_2|Add0~77\,
	cout1 => \bell_clk_2|Add0~77COUT1_153\);

-- Location: LC_X10_Y7_N5
\bell_clk_2|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~75_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(15));

-- Location: LC_X12_Y7_N1
\bell_clk_2|Add0~25\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~25_combout\ = ((!\bell_clk_2|cnt\(0)))
-- \bell_clk_2|Add0~27\ = CARRY(((\bell_clk_2|cnt\(0))))
-- \bell_clk_2|Add0~27COUT1_141\ = CARRY(((\bell_clk_2|cnt\(0))))

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
	datab => \bell_clk_2|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~25_combout\,
	cout0 => \bell_clk_2|Add0~27\,
	cout1 => \bell_clk_2|Add0~27COUT1_141\);

-- Location: LC_X10_Y7_N7
\bell_clk_2|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(0) = DFFEAS((((\bell_clk_2|Add0~25_combout\ & !\bell_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_2|Add0~25_combout\,
	datad => \bell_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(0));

-- Location: LC_X12_Y7_N2
\bell_clk_2|Add0~20\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~20_combout\ = (\bell_clk_2|cnt\(1) $ ((\bell_clk_2|Add0~27\)))
-- \bell_clk_2|Add0~22\ = CARRY(((!\bell_clk_2|Add0~27\) # (!\bell_clk_2|cnt\(1))))
-- \bell_clk_2|Add0~22COUT1_142\ = CARRY(((!\bell_clk_2|Add0~27COUT1_141\) # (!\bell_clk_2|cnt\(1))))

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
	datab => \bell_clk_2|cnt\(1),
	cin0 => \bell_clk_2|Add0~27\,
	cin1 => \bell_clk_2|Add0~27COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~20_combout\,
	cout0 => \bell_clk_2|Add0~22\,
	cout1 => \bell_clk_2|Add0~22COUT1_142\);

-- Location: LC_X11_Y7_N6
\bell_clk_2|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(1) = DFFEAS((!\bell_clk_2|Equal0~8_combout\ & (((\bell_clk_2|Add0~20_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \bell_clk_2|Equal0~8_combout\,
	datac => \bell_clk_2|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(1));

-- Location: LC_X12_Y7_N3
\bell_clk_2|Add0~15\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~15_combout\ = \bell_clk_2|cnt\(2) $ ((((!\bell_clk_2|Add0~22\))))
-- \bell_clk_2|Add0~17\ = CARRY((\bell_clk_2|cnt\(2) & ((!\bell_clk_2|Add0~22\))))
-- \bell_clk_2|Add0~17COUT1_143\ = CARRY((\bell_clk_2|cnt\(2) & ((!\bell_clk_2|Add0~22COUT1_142\))))

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
	dataa => \bell_clk_2|cnt\(2),
	cin0 => \bell_clk_2|Add0~22\,
	cin1 => \bell_clk_2|Add0~22COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~15_combout\,
	cout0 => \bell_clk_2|Add0~17\,
	cout1 => \bell_clk_2|Add0~17COUT1_143\);

-- Location: LC_X11_Y7_N0
\bell_clk_2|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~15_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(2));

-- Location: LC_X12_Y7_N4
\bell_clk_2|Add0~10\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~10_combout\ = \bell_clk_2|cnt\(3) $ ((((\bell_clk_2|Add0~17\))))
-- \bell_clk_2|Add0~12\ = CARRY(((!\bell_clk_2|Add0~17COUT1_143\)) # (!\bell_clk_2|cnt\(3)))

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
	dataa => \bell_clk_2|cnt\(3),
	cin0 => \bell_clk_2|Add0~17\,
	cin1 => \bell_clk_2|Add0~17COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~10_combout\,
	cout => \bell_clk_2|Add0~12\);

-- Location: LC_X11_Y7_N1
\bell_clk_2|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(3) = DFFEAS((((\bell_clk_2|Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_2|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(3));

-- Location: LC_X12_Y7_N5
\bell_clk_2|Add0~5\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~5_combout\ = (\bell_clk_2|cnt\(4) $ ((!\bell_clk_2|Add0~12\)))
-- \bell_clk_2|Add0~7\ = CARRY(((\bell_clk_2|cnt\(4) & !\bell_clk_2|Add0~12\)))
-- \bell_clk_2|Add0~7COUT1_144\ = CARRY(((\bell_clk_2|cnt\(4) & !\bell_clk_2|Add0~12\)))

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
	datab => \bell_clk_2|cnt\(4),
	cin => \bell_clk_2|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~5_combout\,
	cout0 => \bell_clk_2|Add0~7\,
	cout1 => \bell_clk_2|Add0~7COUT1_144\);

-- Location: LC_X10_Y7_N8
\bell_clk_2|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~0\ = (!\bell_clk_2|cnt\(2) & (\bell_clk_2|cnt\(5) & (!B2_cnt[4] & !\bell_clk_2|cnt\(3))))
-- \bell_clk_2|cnt\(4) = DFFEAS(\bell_clk_2|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~5_combout\, , , VCC)

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
	dataa => \bell_clk_2|cnt\(2),
	datab => \bell_clk_2|cnt\(5),
	datac => \bell_clk_2|Add0~5_combout\,
	datad => \bell_clk_2|cnt\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~0\,
	regout => \bell_clk_2|cnt\(4));

-- Location: LC_X12_Y7_N6
\bell_clk_2|Add0~0\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~0_combout\ = \bell_clk_2|cnt\(5) $ (((((!\bell_clk_2|Add0~12\ & \bell_clk_2|Add0~7\) # (\bell_clk_2|Add0~12\ & \bell_clk_2|Add0~7COUT1_144\)))))
-- \bell_clk_2|Add0~2\ = CARRY(((!\bell_clk_2|Add0~7\)) # (!\bell_clk_2|cnt\(5)))
-- \bell_clk_2|Add0~2COUT1_145\ = CARRY(((!\bell_clk_2|Add0~7COUT1_144\)) # (!\bell_clk_2|cnt\(5)))

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
	dataa => \bell_clk_2|cnt\(5),
	cin => \bell_clk_2|Add0~12\,
	cin0 => \bell_clk_2|Add0~7\,
	cin1 => \bell_clk_2|Add0~7COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~0_combout\,
	cout0 => \bell_clk_2|Add0~2\,
	cout1 => \bell_clk_2|Add0~2COUT1_145\);

-- Location: LC_X11_Y7_N5
\bell_clk_2|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(5) = DFFEAS((((\bell_clk_2|Add0~0_combout\ & !\bell_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_2|Add0~0_combout\,
	datad => \bell_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(5));

-- Location: LC_X12_Y7_N7
\bell_clk_2|Add0~30\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~30_combout\ = (\bell_clk_2|cnt\(6) $ ((!(!\bell_clk_2|Add0~12\ & \bell_clk_2|Add0~2\) # (\bell_clk_2|Add0~12\ & \bell_clk_2|Add0~2COUT1_145\))))
-- \bell_clk_2|Add0~32\ = CARRY(((\bell_clk_2|cnt\(6) & !\bell_clk_2|Add0~2\)))
-- \bell_clk_2|Add0~32COUT1_146\ = CARRY(((\bell_clk_2|cnt\(6) & !\bell_clk_2|Add0~2COUT1_145\)))

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
	datab => \bell_clk_2|cnt\(6),
	cin => \bell_clk_2|Add0~12\,
	cin0 => \bell_clk_2|Add0~2\,
	cin1 => \bell_clk_2|Add0~2COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~30_combout\,
	cout0 => \bell_clk_2|Add0~32\,
	cout1 => \bell_clk_2|Add0~32COUT1_146\);

-- Location: LC_X11_Y7_N2
\bell_clk_2|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~1\ = (\bell_clk_2|cnt\(1) & (!\bell_clk_2|cnt\(7) & (!B2_cnt[6] & !\bell_clk_2|cnt\(0))))
-- \bell_clk_2|cnt\(6) = DFFEAS(\bell_clk_2|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~30_combout\, , , VCC)

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
	dataa => \bell_clk_2|cnt\(1),
	datab => \bell_clk_2|cnt\(7),
	datac => \bell_clk_2|Add0~30_combout\,
	datad => \bell_clk_2|cnt\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~1\,
	regout => \bell_clk_2|cnt\(6));

-- Location: LC_X12_Y7_N8
\bell_clk_2|Add0~35\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~35_combout\ = \bell_clk_2|cnt\(7) $ (((((!\bell_clk_2|Add0~12\ & \bell_clk_2|Add0~32\) # (\bell_clk_2|Add0~12\ & \bell_clk_2|Add0~32COUT1_146\)))))
-- \bell_clk_2|Add0~37\ = CARRY(((!\bell_clk_2|Add0~32\)) # (!\bell_clk_2|cnt\(7)))
-- \bell_clk_2|Add0~37COUT1_147\ = CARRY(((!\bell_clk_2|Add0~32COUT1_146\)) # (!\bell_clk_2|cnt\(7)))

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
	dataa => \bell_clk_2|cnt\(7),
	cin => \bell_clk_2|Add0~12\,
	cin0 => \bell_clk_2|Add0~32\,
	cin1 => \bell_clk_2|Add0~32COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~35_combout\,
	cout0 => \bell_clk_2|Add0~37\,
	cout1 => \bell_clk_2|Add0~37COUT1_147\);

-- Location: LC_X11_Y7_N8
\bell_clk_2|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(7) = DFFEAS((((\bell_clk_2|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_2|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(7));

-- Location: LC_X12_Y7_N9
\bell_clk_2|Add0~40\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~40_combout\ = (\bell_clk_2|cnt\(8) $ ((!(!\bell_clk_2|Add0~12\ & \bell_clk_2|Add0~37\) # (\bell_clk_2|Add0~12\ & \bell_clk_2|Add0~37COUT1_147\))))
-- \bell_clk_2|Add0~42\ = CARRY(((\bell_clk_2|cnt\(8) & !\bell_clk_2|Add0~37COUT1_147\)))

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
	datab => \bell_clk_2|cnt\(8),
	cin => \bell_clk_2|Add0~12\,
	cin0 => \bell_clk_2|Add0~37\,
	cin1 => \bell_clk_2|Add0~37COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~40_combout\,
	cout => \bell_clk_2|Add0~42\);

-- Location: LC_X11_Y7_N7
\bell_clk_2|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(8) = DFFEAS((!\bell_clk_2|Equal0~8_combout\ & (((\bell_clk_2|Add0~40_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \bell_clk_2|Equal0~8_combout\,
	datac => \bell_clk_2|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(8));

-- Location: LC_X13_Y7_N0
\bell_clk_2|Add0~45\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~45_combout\ = \bell_clk_2|cnt\(9) $ ((((\bell_clk_2|Add0~42\))))
-- \bell_clk_2|Add0~47\ = CARRY(((!\bell_clk_2|Add0~42\)) # (!\bell_clk_2|cnt\(9)))
-- \bell_clk_2|Add0~47COUT1_148\ = CARRY(((!\bell_clk_2|Add0~42\)) # (!\bell_clk_2|cnt\(9)))

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
	dataa => \bell_clk_2|cnt\(9),
	cin => \bell_clk_2|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~45_combout\,
	cout0 => \bell_clk_2|Add0~47\,
	cout1 => \bell_clk_2|Add0~47COUT1_148\);

-- Location: LC_X12_Y7_N0
\bell_clk_2|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(9) = DFFEAS((((\bell_clk_2|Add0~45_combout\ & !\bell_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_2|Add0~45_combout\,
	datad => \bell_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(9));

-- Location: LC_X13_Y7_N1
\bell_clk_2|Add0~50\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~50_combout\ = (\bell_clk_2|cnt\(10) $ ((!(!\bell_clk_2|Add0~42\ & \bell_clk_2|Add0~47\) # (\bell_clk_2|Add0~42\ & \bell_clk_2|Add0~47COUT1_148\))))
-- \bell_clk_2|Add0~52\ = CARRY(((\bell_clk_2|cnt\(10) & !\bell_clk_2|Add0~47\)))
-- \bell_clk_2|Add0~52COUT1_149\ = CARRY(((\bell_clk_2|cnt\(10) & !\bell_clk_2|Add0~47COUT1_148\)))

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
	datab => \bell_clk_2|cnt\(10),
	cin => \bell_clk_2|Add0~42\,
	cin0 => \bell_clk_2|Add0~47\,
	cin1 => \bell_clk_2|Add0~47COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~50_combout\,
	cout0 => \bell_clk_2|Add0~52\,
	cout1 => \bell_clk_2|Add0~52COUT1_149\);

-- Location: LC_X11_Y7_N9
\bell_clk_2|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~2\ = (\bell_clk_2|cnt\(9) & (\bell_clk_2|cnt\(8) & (!B2_cnt[10] & !\bell_clk_2|cnt\(11))))
-- \bell_clk_2|cnt\(10) = DFFEAS(\bell_clk_2|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~50_combout\, , , VCC)

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
	dataa => \bell_clk_2|cnt\(9),
	datab => \bell_clk_2|cnt\(8),
	datac => \bell_clk_2|Add0~50_combout\,
	datad => \bell_clk_2|cnt\(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~2\,
	regout => \bell_clk_2|cnt\(10));

-- Location: LC_X13_Y7_N2
\bell_clk_2|Add0~55\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~55_combout\ = (\bell_clk_2|cnt\(11) $ (((!\bell_clk_2|Add0~42\ & \bell_clk_2|Add0~52\) # (\bell_clk_2|Add0~42\ & \bell_clk_2|Add0~52COUT1_149\))))
-- \bell_clk_2|Add0~57\ = CARRY(((!\bell_clk_2|Add0~52\) # (!\bell_clk_2|cnt\(11))))
-- \bell_clk_2|Add0~57COUT1_150\ = CARRY(((!\bell_clk_2|Add0~52COUT1_149\) # (!\bell_clk_2|cnt\(11))))

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
	datab => \bell_clk_2|cnt\(11),
	cin => \bell_clk_2|Add0~42\,
	cin0 => \bell_clk_2|Add0~52\,
	cin1 => \bell_clk_2|Add0~52COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~55_combout\,
	cout0 => \bell_clk_2|Add0~57\,
	cout1 => \bell_clk_2|Add0~57COUT1_150\);

-- Location: LC_X10_Y7_N4
\bell_clk_2|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~55_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(11));

-- Location: LC_X13_Y7_N3
\bell_clk_2|Add0~60\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~60_combout\ = (\bell_clk_2|cnt\(12) $ ((!(!\bell_clk_2|Add0~42\ & \bell_clk_2|Add0~57\) # (\bell_clk_2|Add0~42\ & \bell_clk_2|Add0~57COUT1_150\))))
-- \bell_clk_2|Add0~62\ = CARRY(((\bell_clk_2|cnt\(12) & !\bell_clk_2|Add0~57\)))
-- \bell_clk_2|Add0~62COUT1_151\ = CARRY(((\bell_clk_2|cnt\(12) & !\bell_clk_2|Add0~57COUT1_150\)))

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
	datab => \bell_clk_2|cnt\(12),
	cin => \bell_clk_2|Add0~42\,
	cin0 => \bell_clk_2|Add0~57\,
	cin1 => \bell_clk_2|Add0~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~60_combout\,
	cout0 => \bell_clk_2|Add0~62\,
	cout1 => \bell_clk_2|Add0~62COUT1_151\);

-- Location: LC_X10_Y7_N1
\bell_clk_2|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(12) = DFFEAS((((\bell_clk_2|Add0~60_combout\ & !\bell_clk_2|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_2|Add0~60_combout\,
	datad => \bell_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(12));

-- Location: LC_X13_Y7_N4
\bell_clk_2|Add0~70\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~70_combout\ = (\bell_clk_2|cnt\(13) $ (((!\bell_clk_2|Add0~42\ & \bell_clk_2|Add0~62\) # (\bell_clk_2|Add0~42\ & \bell_clk_2|Add0~62COUT1_151\))))
-- \bell_clk_2|Add0~72\ = CARRY(((!\bell_clk_2|Add0~62COUT1_151\) # (!\bell_clk_2|cnt\(13))))

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
	datab => \bell_clk_2|cnt\(13),
	cin => \bell_clk_2|Add0~42\,
	cin0 => \bell_clk_2|Add0~62\,
	cin1 => \bell_clk_2|Add0~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~70_combout\,
	cout => \bell_clk_2|Add0~72\);

-- Location: LC_X10_Y7_N0
\bell_clk_2|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~3\ = (!\bell_clk_2|cnt\(15) & (\bell_clk_2|cnt\(12) & (!B2_cnt[13] & \bell_clk_2|cnt\(14))))
-- \bell_clk_2|cnt\(13) = DFFEAS(\bell_clk_2|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~70_combout\, , , VCC)

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
	dataa => \bell_clk_2|cnt\(15),
	datab => \bell_clk_2|cnt\(12),
	datac => \bell_clk_2|Add0~70_combout\,
	datad => \bell_clk_2|cnt\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~3\,
	regout => \bell_clk_2|cnt\(13));

-- Location: LC_X13_Y7_N7
\bell_clk_2|Add0~80\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~80_combout\ = \bell_clk_2|cnt\(16) $ ((((!(!\bell_clk_2|Add0~72\ & \bell_clk_2|Add0~77\) # (\bell_clk_2|Add0~72\ & \bell_clk_2|Add0~77COUT1_153\)))))
-- \bell_clk_2|Add0~82\ = CARRY((\bell_clk_2|cnt\(16) & ((!\bell_clk_2|Add0~77\))))
-- \bell_clk_2|Add0~82COUT1_154\ = CARRY((\bell_clk_2|cnt\(16) & ((!\bell_clk_2|Add0~77COUT1_153\))))

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
	dataa => \bell_clk_2|cnt\(16),
	cin => \bell_clk_2|Add0~72\,
	cin0 => \bell_clk_2|Add0~77\,
	cin1 => \bell_clk_2|Add0~77COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~80_combout\,
	cout0 => \bell_clk_2|Add0~82\,
	cout1 => \bell_clk_2|Add0~82COUT1_154\);

-- Location: LC_X14_Y7_N0
\bell_clk_2|Add0~95\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~95_combout\ = (\bell_clk_2|cnt\(19) $ ((\bell_clk_2|Add0~92\)))
-- \bell_clk_2|Add0~97\ = CARRY(((!\bell_clk_2|Add0~92\) # (!\bell_clk_2|cnt\(19))))
-- \bell_clk_2|Add0~97COUT1_156\ = CARRY(((!\bell_clk_2|Add0~92\) # (!\bell_clk_2|cnt\(19))))

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
	datab => \bell_clk_2|cnt\(19),
	cin => \bell_clk_2|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~95_combout\,
	cout0 => \bell_clk_2|Add0~97\,
	cout1 => \bell_clk_2|Add0~97COUT1_156\);

-- Location: LC_X14_Y7_N9
\bell_clk_2|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~95_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(19));

-- Location: LC_X10_Y7_N2
\bell_clk_2|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~5\ = (!\bell_clk_2|cnt\(17) & (!\bell_clk_2|cnt\(18) & (!B2_cnt[16] & !\bell_clk_2|cnt\(19))))
-- \bell_clk_2|cnt\(16) = DFFEAS(\bell_clk_2|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~80_combout\, , , VCC)

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
	dataa => \bell_clk_2|cnt\(17),
	datab => \bell_clk_2|cnt\(18),
	datac => \bell_clk_2|Add0~80_combout\,
	datad => \bell_clk_2|cnt\(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~5\,
	regout => \bell_clk_2|cnt\(16));

-- Location: LC_X13_Y7_N8
\bell_clk_2|Add0~85\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~85_combout\ = \bell_clk_2|cnt\(17) $ (((((!\bell_clk_2|Add0~72\ & \bell_clk_2|Add0~82\) # (\bell_clk_2|Add0~72\ & \bell_clk_2|Add0~82COUT1_154\)))))
-- \bell_clk_2|Add0~87\ = CARRY(((!\bell_clk_2|Add0~82\)) # (!\bell_clk_2|cnt\(17)))
-- \bell_clk_2|Add0~87COUT1_155\ = CARRY(((!\bell_clk_2|Add0~82COUT1_154\)) # (!\bell_clk_2|cnt\(17)))

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
	dataa => \bell_clk_2|cnt\(17),
	cin => \bell_clk_2|Add0~72\,
	cin0 => \bell_clk_2|Add0~82\,
	cin1 => \bell_clk_2|Add0~82COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~85_combout\,
	cout0 => \bell_clk_2|Add0~87\,
	cout1 => \bell_clk_2|Add0~87COUT1_155\);

-- Location: LC_X9_Y7_N5
\bell_clk_2|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~85_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(17));

-- Location: LC_X13_Y7_N9
\bell_clk_2|Add0~90\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~90_combout\ = (\bell_clk_2|cnt\(18) $ ((!(!\bell_clk_2|Add0~72\ & \bell_clk_2|Add0~87\) # (\bell_clk_2|Add0~72\ & \bell_clk_2|Add0~87COUT1_155\))))
-- \bell_clk_2|Add0~92\ = CARRY(((\bell_clk_2|cnt\(18) & !\bell_clk_2|Add0~87COUT1_155\)))

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
	datab => \bell_clk_2|cnt\(18),
	cin => \bell_clk_2|Add0~72\,
	cin0 => \bell_clk_2|Add0~87\,
	cin1 => \bell_clk_2|Add0~87COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~90_combout\,
	cout => \bell_clk_2|Add0~92\);

-- Location: LC_X10_Y7_N9
\bell_clk_2|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~90_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(18));

-- Location: LC_X14_Y7_N1
\bell_clk_2|Add0~100\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~100_combout\ = (\bell_clk_2|cnt\(20) $ ((!(!\bell_clk_2|Add0~92\ & \bell_clk_2|Add0~97\) # (\bell_clk_2|Add0~92\ & \bell_clk_2|Add0~97COUT1_156\))))
-- \bell_clk_2|Add0~102\ = CARRY(((\bell_clk_2|cnt\(20) & !\bell_clk_2|Add0~97\)))
-- \bell_clk_2|Add0~102COUT1_157\ = CARRY(((\bell_clk_2|cnt\(20) & !\bell_clk_2|Add0~97COUT1_156\)))

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
	datab => \bell_clk_2|cnt\(20),
	cin => \bell_clk_2|Add0~92\,
	cin0 => \bell_clk_2|Add0~97\,
	cin1 => \bell_clk_2|Add0~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~100_combout\,
	cout0 => \bell_clk_2|Add0~102\,
	cout1 => \bell_clk_2|Add0~102COUT1_157\);

-- Location: LC_X15_Y7_N2
\bell_clk_2|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~6\ = (!\bell_clk_2|cnt\(22) & (!\bell_clk_2|cnt\(23) & (!B2_cnt[20] & !\bell_clk_2|cnt\(21))))
-- \bell_clk_2|cnt\(20) = DFFEAS(\bell_clk_2|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~100_combout\, , , VCC)

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
	dataa => \bell_clk_2|cnt\(22),
	datab => \bell_clk_2|cnt\(23),
	datac => \bell_clk_2|Add0~100_combout\,
	datad => \bell_clk_2|cnt\(21),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~6\,
	regout => \bell_clk_2|cnt\(20));

-- Location: LC_X14_Y7_N2
\bell_clk_2|Add0~105\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~105_combout\ = (\bell_clk_2|cnt\(21) $ (((!\bell_clk_2|Add0~92\ & \bell_clk_2|Add0~102\) # (\bell_clk_2|Add0~92\ & \bell_clk_2|Add0~102COUT1_157\))))
-- \bell_clk_2|Add0~107\ = CARRY(((!\bell_clk_2|Add0~102\) # (!\bell_clk_2|cnt\(21))))
-- \bell_clk_2|Add0~107COUT1_158\ = CARRY(((!\bell_clk_2|Add0~102COUT1_157\) # (!\bell_clk_2|cnt\(21))))

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
	datab => \bell_clk_2|cnt\(21),
	cin => \bell_clk_2|Add0~92\,
	cin0 => \bell_clk_2|Add0~102\,
	cin1 => \bell_clk_2|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~105_combout\,
	cout0 => \bell_clk_2|Add0~107\,
	cout1 => \bell_clk_2|Add0~107COUT1_158\);

-- Location: LC_X15_Y7_N8
\bell_clk_2|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(21) = DFFEAS((((\bell_clk_2|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_2|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(21));

-- Location: LC_X14_Y7_N3
\bell_clk_2|Add0~110\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~110_combout\ = (\bell_clk_2|cnt\(22) $ ((!(!\bell_clk_2|Add0~92\ & \bell_clk_2|Add0~107\) # (\bell_clk_2|Add0~92\ & \bell_clk_2|Add0~107COUT1_158\))))
-- \bell_clk_2|Add0~112\ = CARRY(((\bell_clk_2|cnt\(22) & !\bell_clk_2|Add0~107\)))
-- \bell_clk_2|Add0~112COUT1_159\ = CARRY(((\bell_clk_2|cnt\(22) & !\bell_clk_2|Add0~107COUT1_158\)))

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
	datab => \bell_clk_2|cnt\(22),
	cin => \bell_clk_2|Add0~92\,
	cin0 => \bell_clk_2|Add0~107\,
	cin1 => \bell_clk_2|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~110_combout\,
	cout0 => \bell_clk_2|Add0~112\,
	cout1 => \bell_clk_2|Add0~112COUT1_159\);

-- Location: LC_X15_Y7_N4
\bell_clk_2|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~110_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(22));

-- Location: LC_X14_Y7_N4
\bell_clk_2|Add0~115\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~115_combout\ = \bell_clk_2|cnt\(23) $ (((((!\bell_clk_2|Add0~92\ & \bell_clk_2|Add0~112\) # (\bell_clk_2|Add0~92\ & \bell_clk_2|Add0~112COUT1_159\)))))
-- \bell_clk_2|Add0~117\ = CARRY(((!\bell_clk_2|Add0~112COUT1_159\)) # (!\bell_clk_2|cnt\(23)))

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
	dataa => \bell_clk_2|cnt\(23),
	cin => \bell_clk_2|Add0~92\,
	cin0 => \bell_clk_2|Add0~112\,
	cin1 => \bell_clk_2|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~115_combout\,
	cout => \bell_clk_2|Add0~117\);

-- Location: LC_X15_Y7_N7
\bell_clk_2|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(23) = DFFEAS((((\bell_clk_2|Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_2|Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(23));

-- Location: LC_X14_Y7_N5
\bell_clk_2|Add0~120\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~120_combout\ = \bell_clk_2|cnt\(24) $ ((((!\bell_clk_2|Add0~117\))))
-- \bell_clk_2|Add0~122\ = CARRY((\bell_clk_2|cnt\(24) & ((!\bell_clk_2|Add0~117\))))
-- \bell_clk_2|Add0~122COUT1_160\ = CARRY((\bell_clk_2|cnt\(24) & ((!\bell_clk_2|Add0~117\))))

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
	dataa => \bell_clk_2|cnt\(24),
	cin => \bell_clk_2|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~120_combout\,
	cout0 => \bell_clk_2|Add0~122\,
	cout1 => \bell_clk_2|Add0~122COUT1_160\);

-- Location: LC_X14_Y7_N6
\bell_clk_2|Add0~125\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~125_combout\ = (\bell_clk_2|cnt\(25) $ (((!\bell_clk_2|Add0~117\ & \bell_clk_2|Add0~122\) # (\bell_clk_2|Add0~117\ & \bell_clk_2|Add0~122COUT1_160\))))
-- \bell_clk_2|Add0~127\ = CARRY(((!\bell_clk_2|Add0~122\) # (!\bell_clk_2|cnt\(25))))
-- \bell_clk_2|Add0~127COUT1_161\ = CARRY(((!\bell_clk_2|Add0~122COUT1_160\) # (!\bell_clk_2|cnt\(25))))

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
	datab => \bell_clk_2|cnt\(25),
	cin => \bell_clk_2|Add0~117\,
	cin0 => \bell_clk_2|Add0~122\,
	cin1 => \bell_clk_2|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~125_combout\,
	cout0 => \bell_clk_2|Add0~127\,
	cout1 => \bell_clk_2|Add0~127COUT1_161\);

-- Location: LC_X14_Y7_N7
\bell_clk_2|Add0~130\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~130_combout\ = \bell_clk_2|cnt\(26) $ ((((!(!\bell_clk_2|Add0~117\ & \bell_clk_2|Add0~127\) # (\bell_clk_2|Add0~117\ & \bell_clk_2|Add0~127COUT1_161\)))))
-- \bell_clk_2|Add0~132\ = CARRY((\bell_clk_2|cnt\(26) & ((!\bell_clk_2|Add0~127\))))
-- \bell_clk_2|Add0~132COUT1_162\ = CARRY((\bell_clk_2|cnt\(26) & ((!\bell_clk_2|Add0~127COUT1_161\))))

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
	dataa => \bell_clk_2|cnt\(26),
	cin => \bell_clk_2|Add0~117\,
	cin0 => \bell_clk_2|Add0~127\,
	cin1 => \bell_clk_2|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~130_combout\,
	cout0 => \bell_clk_2|Add0~132\,
	cout1 => \bell_clk_2|Add0~132COUT1_162\);

-- Location: LC_X15_Y7_N3
\bell_clk_2|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(26) = DFFEAS((((\bell_clk_2|Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_2|Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(26));

-- Location: LC_X14_Y7_N8
\bell_clk_2|Add0~135\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Add0~135_combout\ = (((!\bell_clk_2|Add0~117\ & \bell_clk_2|Add0~132\) # (\bell_clk_2|Add0~117\ & \bell_clk_2|Add0~132COUT1_162\) $ (\bell_clk_2|cnt\(27))))

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
	datad => \bell_clk_2|cnt\(27),
	cin => \bell_clk_2|Add0~117\,
	cin0 => \bell_clk_2|Add0~132\,
	cin1 => \bell_clk_2|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Add0~135_combout\);

-- Location: LC_X15_Y7_N9
\bell_clk_2|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~135_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(27));

-- Location: LC_X15_Y7_N6
\bell_clk_2|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~7\ = (!\bell_clk_2|cnt\(25) & (!\bell_clk_2|cnt\(27) & (!B2_cnt[24] & !\bell_clk_2|cnt\(26))))
-- \bell_clk_2|cnt\(24) = DFFEAS(\bell_clk_2|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~120_combout\, , , VCC)

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
	dataa => \bell_clk_2|cnt\(25),
	datab => \bell_clk_2|cnt\(27),
	datac => \bell_clk_2|Add0~120_combout\,
	datad => \bell_clk_2|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~7\,
	regout => \bell_clk_2|cnt\(24));

-- Location: LC_X15_Y7_N5
\bell_clk_2|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_2|Add0~125_combout\, , , VCC)

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
	datac => \bell_clk_2|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|cnt\(25));

-- Location: LC_X11_Y7_N3
\bell_clk_2|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~4_combout\ = (\bell_clk_2|Equal0~3\ & (\bell_clk_2|Equal0~2\ & (\bell_clk_2|Equal0~0\ & \bell_clk_2|Equal0~1\)))

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
	dataa => \bell_clk_2|Equal0~3\,
	datab => \bell_clk_2|Equal0~2\,
	datac => \bell_clk_2|Equal0~0\,
	datad => \bell_clk_2|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~4_combout\);

-- Location: LC_X11_Y7_N4
\bell_clk_2|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|Equal0~8_combout\ = (\bell_clk_2|Equal0~7\ & (\bell_clk_2|Equal0~5\ & (\bell_clk_2|Equal0~6\ & \bell_clk_2|Equal0~4_combout\)))

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
	dataa => \bell_clk_2|Equal0~7\,
	datab => \bell_clk_2|Equal0~5\,
	datac => \bell_clk_2|Equal0~6\,
	datad => \bell_clk_2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_2|Equal0~8_combout\);

-- Location: LC_X10_Y7_N6
\bell_clk_2|clkout\ : maxii_lcell
-- Equation(s):
-- \bell_clk_2|clkout~regout\ = DFFEAS(\bell_clk_2|clkout~regout\ $ ((((\bell_clk_2|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bell_clk_2|clkout~regout\,
	datad => \bell_clk_2|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_2|clkout~regout\);

-- Location: LC_X12_Y4_N0
\bell_clk_3|Add0~35\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~35_combout\ = \bell_clk_3|cnt\(9) $ ((((!\bell_clk_3|Add0~47\))))
-- \bell_clk_3|Add0~37\ = CARRY((\bell_clk_3|cnt\(9) & ((!\bell_clk_3|Add0~47\))))
-- \bell_clk_3|Add0~37COUT1_142\ = CARRY((\bell_clk_3|cnt\(9) & ((!\bell_clk_3|Add0~47\))))

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
	dataa => \bell_clk_3|cnt\(9),
	cin => \bell_clk_3|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~35_combout\,
	cout0 => \bell_clk_3|Add0~37\,
	cout1 => \bell_clk_3|Add0~37COUT1_142\);

-- Location: LC_X11_Y4_N1
\bell_clk_3|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(9) = DFFEAS((((\bell_clk_3|Add0~35_combout\ & !\bell_clk_3|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_3|Add0~35_combout\,
	datad => \bell_clk_3|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(9));

-- Location: LC_X12_Y4_N1
\bell_clk_3|Add0~50\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~50_combout\ = (\bell_clk_3|cnt\(10) $ (((!\bell_clk_3|Add0~47\ & \bell_clk_3|Add0~37\) # (\bell_clk_3|Add0~47\ & \bell_clk_3|Add0~37COUT1_142\))))
-- \bell_clk_3|Add0~52\ = CARRY(((!\bell_clk_3|Add0~37\) # (!\bell_clk_3|cnt\(10))))
-- \bell_clk_3|Add0~52COUT1_143\ = CARRY(((!\bell_clk_3|Add0~37COUT1_142\) # (!\bell_clk_3|cnt\(10))))

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
	datab => \bell_clk_3|cnt\(10),
	cin => \bell_clk_3|Add0~47\,
	cin0 => \bell_clk_3|Add0~37\,
	cin1 => \bell_clk_3|Add0~37COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~50_combout\,
	cout0 => \bell_clk_3|Add0~52\,
	cout1 => \bell_clk_3|Add0~52COUT1_143\);

-- Location: LC_X9_Y4_N8
\bell_clk_3|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~50_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(10));

-- Location: LC_X12_Y4_N2
\bell_clk_3|Add0~40\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~40_combout\ = (\bell_clk_3|cnt\(11) $ ((!(!\bell_clk_3|Add0~47\ & \bell_clk_3|Add0~52\) # (\bell_clk_3|Add0~47\ & \bell_clk_3|Add0~52COUT1_143\))))
-- \bell_clk_3|Add0~42\ = CARRY(((\bell_clk_3|cnt\(11) & !\bell_clk_3|Add0~52\)))
-- \bell_clk_3|Add0~42COUT1_144\ = CARRY(((\bell_clk_3|cnt\(11) & !\bell_clk_3|Add0~52COUT1_143\)))

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
	datab => \bell_clk_3|cnt\(11),
	cin => \bell_clk_3|Add0~47\,
	cin0 => \bell_clk_3|Add0~52\,
	cin1 => \bell_clk_3|Add0~52COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~40_combout\,
	cout0 => \bell_clk_3|Add0~42\,
	cout1 => \bell_clk_3|Add0~42COUT1_144\);

-- Location: LC_X9_Y4_N9
\bell_clk_3|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(11) = DFFEAS((!\bell_clk_3|Equal0~8_combout\ & (((\bell_clk_3|Add0~40_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \bell_clk_3|Equal0~8_combout\,
	datad => \bell_clk_3|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(11));

-- Location: LC_X11_Y4_N5
\bell_clk_3|Add0~0\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~0_combout\ = (\bell_clk_3|cnt\(4) $ ((\bell_clk_3|Add0~7\)))
-- \bell_clk_3|Add0~2\ = CARRY(((!\bell_clk_3|Add0~7\) # (!\bell_clk_3|cnt\(4))))
-- \bell_clk_3|Add0~2COUT1_138\ = CARRY(((!\bell_clk_3|Add0~7\) # (!\bell_clk_3|cnt\(4))))

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
	datab => \bell_clk_3|cnt\(4),
	cin => \bell_clk_3|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~0_combout\,
	cout0 => \bell_clk_3|Add0~2\,
	cout1 => \bell_clk_3|Add0~2COUT1_138\);

-- Location: LC_X10_Y4_N4
\bell_clk_3|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(4) = DFFEAS((((!\bell_clk_3|Equal0~8_combout\ & \bell_clk_3|Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_3|Equal0~8_combout\,
	datad => \bell_clk_3|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(4));

-- Location: LC_X11_Y4_N2
\bell_clk_3|Add0~15\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~15_combout\ = \bell_clk_3|cnt\(1) $ ((\bell_clk_1|cnt\(0)))
-- \bell_clk_3|Add0~17\ = CARRY((\bell_clk_3|cnt\(1) & (\bell_clk_1|cnt\(0))))
-- \bell_clk_3|Add0~17COUT1_136\ = CARRY((\bell_clk_3|cnt\(1) & (\bell_clk_1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bell_clk_3|cnt\(1),
	datab => \bell_clk_1|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~15_combout\,
	cout0 => \bell_clk_3|Add0~17\,
	cout1 => \bell_clk_3|Add0~17COUT1_136\);

-- Location: LC_X10_Y4_N1
\bell_clk_3|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(1) = DFFEAS(((!\bell_clk_3|Equal0~8_combout\ & (\bell_clk_3|Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \bell_clk_3|Equal0~8_combout\,
	datac => \bell_clk_3|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(1));

-- Location: LC_X11_Y4_N3
\bell_clk_3|Add0~10\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~10_combout\ = (\bell_clk_3|cnt\(2) $ ((\bell_clk_3|Add0~17\)))
-- \bell_clk_3|Add0~12\ = CARRY(((!\bell_clk_3|Add0~17\) # (!\bell_clk_3|cnt\(2))))
-- \bell_clk_3|Add0~12COUT1_137\ = CARRY(((!\bell_clk_3|Add0~17COUT1_136\) # (!\bell_clk_3|cnt\(2))))

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
	datab => \bell_clk_3|cnt\(2),
	cin0 => \bell_clk_3|Add0~17\,
	cin1 => \bell_clk_3|Add0~17COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~10_combout\,
	cout0 => \bell_clk_3|Add0~12\,
	cout1 => \bell_clk_3|Add0~12COUT1_137\);

-- Location: LC_X10_Y4_N8
\bell_clk_3|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~10_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(2));

-- Location: LC_X11_Y4_N4
\bell_clk_3|Add0~5\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~5_combout\ = \bell_clk_3|cnt\(3) $ ((((!\bell_clk_3|Add0~12\))))
-- \bell_clk_3|Add0~7\ = CARRY((\bell_clk_3|cnt\(3) & ((!\bell_clk_3|Add0~12COUT1_137\))))

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
	dataa => \bell_clk_3|cnt\(3),
	cin0 => \bell_clk_3|Add0~12\,
	cin1 => \bell_clk_3|Add0~12COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~5_combout\,
	cout => \bell_clk_3|Add0~7\);

-- Location: LC_X10_Y4_N9
\bell_clk_3|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~0\ = (\bell_clk_3|cnt\(4) & (!\bell_clk_3|cnt\(2) & (!B3_cnt[3] & \bell_clk_1|cnt\(0))))
-- \bell_clk_3|cnt\(3) = DFFEAS(\bell_clk_3|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~5_combout\, , , VCC)

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
	dataa => \bell_clk_3|cnt\(4),
	datab => \bell_clk_3|cnt\(2),
	datac => \bell_clk_3|Add0~5_combout\,
	datad => \bell_clk_1|cnt\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~0\,
	regout => \bell_clk_3|cnt\(3));

-- Location: LC_X11_Y4_N6
\bell_clk_3|Add0~20\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~20_combout\ = (\bell_clk_3|cnt\(5) $ ((!(!\bell_clk_3|Add0~7\ & \bell_clk_3|Add0~2\) # (\bell_clk_3|Add0~7\ & \bell_clk_3|Add0~2COUT1_138\))))
-- \bell_clk_3|Add0~22\ = CARRY(((\bell_clk_3|cnt\(5) & !\bell_clk_3|Add0~2\)))
-- \bell_clk_3|Add0~22COUT1_139\ = CARRY(((\bell_clk_3|cnt\(5) & !\bell_clk_3|Add0~2COUT1_138\)))

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
	datab => \bell_clk_3|cnt\(5),
	cin => \bell_clk_3|Add0~7\,
	cin0 => \bell_clk_3|Add0~2\,
	cin1 => \bell_clk_3|Add0~2COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~20_combout\,
	cout0 => \bell_clk_3|Add0~22\,
	cout1 => \bell_clk_3|Add0~22COUT1_139\);

-- Location: LC_X10_Y4_N2
\bell_clk_3|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~1\ = (!\bell_clk_3|cnt\(6) & (!\bell_clk_3|cnt\(7) & (!B3_cnt[5] & !\bell_clk_3|cnt\(1))))
-- \bell_clk_3|cnt\(5) = DFFEAS(\bell_clk_3|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~20_combout\, , , VCC)

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
	dataa => \bell_clk_3|cnt\(6),
	datab => \bell_clk_3|cnt\(7),
	datac => \bell_clk_3|Add0~20_combout\,
	datad => \bell_clk_3|cnt\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~1\,
	regout => \bell_clk_3|cnt\(5));

-- Location: LC_X11_Y4_N7
\bell_clk_3|Add0~25\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~25_combout\ = (\bell_clk_3|cnt\(6) $ (((!\bell_clk_3|Add0~7\ & \bell_clk_3|Add0~22\) # (\bell_clk_3|Add0~7\ & \bell_clk_3|Add0~22COUT1_139\))))
-- \bell_clk_3|Add0~27\ = CARRY(((!\bell_clk_3|Add0~22\) # (!\bell_clk_3|cnt\(6))))
-- \bell_clk_3|Add0~27COUT1_140\ = CARRY(((!\bell_clk_3|Add0~22COUT1_139\) # (!\bell_clk_3|cnt\(6))))

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
	datab => \bell_clk_3|cnt\(6),
	cin => \bell_clk_3|Add0~7\,
	cin0 => \bell_clk_3|Add0~22\,
	cin1 => \bell_clk_3|Add0~22COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~25_combout\,
	cout0 => \bell_clk_3|Add0~27\,
	cout1 => \bell_clk_3|Add0~27COUT1_140\);

-- Location: LC_X10_Y4_N6
\bell_clk_3|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(6) = DFFEAS((((\bell_clk_3|Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_3|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(6));

-- Location: LC_X11_Y4_N8
\bell_clk_3|Add0~30\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~30_combout\ = \bell_clk_3|cnt\(7) $ ((((!(!\bell_clk_3|Add0~7\ & \bell_clk_3|Add0~27\) # (\bell_clk_3|Add0~7\ & \bell_clk_3|Add0~27COUT1_140\)))))
-- \bell_clk_3|Add0~32\ = CARRY((\bell_clk_3|cnt\(7) & ((!\bell_clk_3|Add0~27\))))
-- \bell_clk_3|Add0~32COUT1_141\ = CARRY((\bell_clk_3|cnt\(7) & ((!\bell_clk_3|Add0~27COUT1_140\))))

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
	dataa => \bell_clk_3|cnt\(7),
	cin => \bell_clk_3|Add0~7\,
	cin0 => \bell_clk_3|Add0~27\,
	cin1 => \bell_clk_3|Add0~27COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~30_combout\,
	cout0 => \bell_clk_3|Add0~32\,
	cout1 => \bell_clk_3|Add0~32COUT1_141\);

-- Location: LC_X10_Y4_N0
\bell_clk_3|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(7) = DFFEAS((((\bell_clk_3|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_3|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(7));

-- Location: LC_X11_Y4_N9
\bell_clk_3|Add0~45\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~45_combout\ = \bell_clk_3|cnt\(8) $ (((((!\bell_clk_3|Add0~7\ & \bell_clk_3|Add0~32\) # (\bell_clk_3|Add0~7\ & \bell_clk_3|Add0~32COUT1_141\)))))
-- \bell_clk_3|Add0~47\ = CARRY(((!\bell_clk_3|Add0~32COUT1_141\)) # (!\bell_clk_3|cnt\(8)))

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
	dataa => \bell_clk_3|cnt\(8),
	cin => \bell_clk_3|Add0~7\,
	cin0 => \bell_clk_3|Add0~32\,
	cin1 => \bell_clk_3|Add0~32COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~45_combout\,
	cout => \bell_clk_3|Add0~47\);

-- Location: LC_X10_Y4_N5
\bell_clk_3|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~2\ = (!\bell_clk_3|cnt\(10) & (\bell_clk_3|cnt\(11) & (!B3_cnt[8] & \bell_clk_3|cnt\(9))))
-- \bell_clk_3|cnt\(8) = DFFEAS(\bell_clk_3|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~45_combout\, , , VCC)

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
	dataa => \bell_clk_3|cnt\(10),
	datab => \bell_clk_3|cnt\(11),
	datac => \bell_clk_3|Add0~45_combout\,
	datad => \bell_clk_3|cnt\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~2\,
	regout => \bell_clk_3|cnt\(8));

-- Location: LC_X12_Y4_N5
\bell_clk_3|Add0~55\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~55_combout\ = (\bell_clk_3|cnt\(14) $ ((\bell_clk_3|Add0~67\)))
-- \bell_clk_3|Add0~57\ = CARRY(((!\bell_clk_3|Add0~67\) # (!\bell_clk_3|cnt\(14))))
-- \bell_clk_3|Add0~57COUT1_146\ = CARRY(((!\bell_clk_3|Add0~67\) # (!\bell_clk_3|cnt\(14))))

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
	datab => \bell_clk_3|cnt\(14),
	cin => \bell_clk_3|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~55_combout\,
	cout0 => \bell_clk_3|Add0~57\,
	cout1 => \bell_clk_3|Add0~57COUT1_146\);

-- Location: LC_X9_Y4_N3
\bell_clk_3|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(14) = DFFEAS((((\bell_clk_3|Add0~55_combout\ & !\bell_clk_3|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_3|Add0~55_combout\,
	datad => \bell_clk_3|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(14));

-- Location: LC_X12_Y4_N3
\bell_clk_3|Add0~60\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~60_combout\ = \bell_clk_3|cnt\(12) $ (((((!\bell_clk_3|Add0~47\ & \bell_clk_3|Add0~42\) # (\bell_clk_3|Add0~47\ & \bell_clk_3|Add0~42COUT1_144\)))))
-- \bell_clk_3|Add0~62\ = CARRY(((!\bell_clk_3|Add0~42\)) # (!\bell_clk_3|cnt\(12)))
-- \bell_clk_3|Add0~62COUT1_145\ = CARRY(((!\bell_clk_3|Add0~42COUT1_144\)) # (!\bell_clk_3|cnt\(12)))

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
	dataa => \bell_clk_3|cnt\(12),
	cin => \bell_clk_3|Add0~47\,
	cin0 => \bell_clk_3|Add0~42\,
	cin1 => \bell_clk_3|Add0~42COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~60_combout\,
	cout0 => \bell_clk_3|Add0~62\,
	cout1 => \bell_clk_3|Add0~62COUT1_145\);

-- Location: LC_X12_Y4_N6
\bell_clk_3|Add0~70\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~70_combout\ = (\bell_clk_3|cnt\(15) $ ((!(!\bell_clk_3|Add0~67\ & \bell_clk_3|Add0~57\) # (\bell_clk_3|Add0~67\ & \bell_clk_3|Add0~57COUT1_146\))))
-- \bell_clk_3|Add0~72\ = CARRY(((\bell_clk_3|cnt\(15) & !\bell_clk_3|Add0~57\)))
-- \bell_clk_3|Add0~72COUT1_147\ = CARRY(((\bell_clk_3|cnt\(15) & !\bell_clk_3|Add0~57COUT1_146\)))

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
	datab => \bell_clk_3|cnt\(15),
	cin => \bell_clk_3|Add0~67\,
	cin0 => \bell_clk_3|Add0~57\,
	cin1 => \bell_clk_3|Add0~57COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~70_combout\,
	cout0 => \bell_clk_3|Add0~72\,
	cout1 => \bell_clk_3|Add0~72COUT1_147\);

-- Location: LC_X12_Y3_N2
\bell_clk_3|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~70_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(15));

-- Location: LC_X11_Y4_N0
\bell_clk_3|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~3\ = (!\bell_clk_3|cnt\(13) & (\bell_clk_3|cnt\(14) & (!B3_cnt[12] & !\bell_clk_3|cnt\(15))))
-- \bell_clk_3|cnt\(12) = DFFEAS(\bell_clk_3|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~60_combout\, , , VCC)

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
	dataa => \bell_clk_3|cnt\(13),
	datab => \bell_clk_3|cnt\(14),
	datac => \bell_clk_3|Add0~60_combout\,
	datad => \bell_clk_3|cnt\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~3\,
	regout => \bell_clk_3|cnt\(12));

-- Location: LC_X12_Y4_N4
\bell_clk_3|Add0~65\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~65_combout\ = (\bell_clk_3|cnt\(13) $ ((!(!\bell_clk_3|Add0~47\ & \bell_clk_3|Add0~62\) # (\bell_clk_3|Add0~47\ & \bell_clk_3|Add0~62COUT1_145\))))
-- \bell_clk_3|Add0~67\ = CARRY(((\bell_clk_3|cnt\(13) & !\bell_clk_3|Add0~62COUT1_145\)))

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
	datab => \bell_clk_3|cnt\(13),
	cin => \bell_clk_3|Add0~47\,
	cin0 => \bell_clk_3|Add0~62\,
	cin1 => \bell_clk_3|Add0~62COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~65_combout\,
	cout => \bell_clk_3|Add0~67\);

-- Location: LC_X12_Y5_N6
\bell_clk_3|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~65_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(13));

-- Location: LC_X12_Y4_N7
\bell_clk_3|Add0~75\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~75_combout\ = (\bell_clk_3|cnt\(16) $ (((!\bell_clk_3|Add0~67\ & \bell_clk_3|Add0~72\) # (\bell_clk_3|Add0~67\ & \bell_clk_3|Add0~72COUT1_147\))))
-- \bell_clk_3|Add0~77\ = CARRY(((!\bell_clk_3|Add0~72\) # (!\bell_clk_3|cnt\(16))))
-- \bell_clk_3|Add0~77COUT1_148\ = CARRY(((!\bell_clk_3|Add0~72COUT1_147\) # (!\bell_clk_3|cnt\(16))))

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
	datab => \bell_clk_3|cnt\(16),
	cin => \bell_clk_3|Add0~67\,
	cin0 => \bell_clk_3|Add0~72\,
	cin1 => \bell_clk_3|Add0~72COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~75_combout\,
	cout0 => \bell_clk_3|Add0~77\,
	cout1 => \bell_clk_3|Add0~77COUT1_148\);

-- Location: LC_X12_Y4_N8
\bell_clk_3|Add0~80\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~80_combout\ = \bell_clk_3|cnt\(17) $ ((((!(!\bell_clk_3|Add0~67\ & \bell_clk_3|Add0~77\) # (\bell_clk_3|Add0~67\ & \bell_clk_3|Add0~77COUT1_148\)))))
-- \bell_clk_3|Add0~82\ = CARRY((\bell_clk_3|cnt\(17) & ((!\bell_clk_3|Add0~77\))))
-- \bell_clk_3|Add0~82COUT1_149\ = CARRY((\bell_clk_3|cnt\(17) & ((!\bell_clk_3|Add0~77COUT1_148\))))

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
	dataa => \bell_clk_3|cnt\(17),
	cin => \bell_clk_3|Add0~67\,
	cin0 => \bell_clk_3|Add0~77\,
	cin1 => \bell_clk_3|Add0~77COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~80_combout\,
	cout0 => \bell_clk_3|Add0~82\,
	cout1 => \bell_clk_3|Add0~82COUT1_149\);

-- Location: LC_X12_Y4_N9
\bell_clk_3|Add0~85\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~85_combout\ = (\bell_clk_3|cnt\(18) $ (((!\bell_clk_3|Add0~67\ & \bell_clk_3|Add0~82\) # (\bell_clk_3|Add0~67\ & \bell_clk_3|Add0~82COUT1_149\))))
-- \bell_clk_3|Add0~87\ = CARRY(((!\bell_clk_3|Add0~82COUT1_149\) # (!\bell_clk_3|cnt\(18))))

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
	datab => \bell_clk_3|cnt\(18),
	cin => \bell_clk_3|Add0~67\,
	cin0 => \bell_clk_3|Add0~82\,
	cin1 => \bell_clk_3|Add0~82COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~85_combout\,
	cout => \bell_clk_3|Add0~87\);

-- Location: LC_X14_Y4_N1
\bell_clk_3|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~85_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(18));

-- Location: LC_X13_Y4_N0
\bell_clk_3|Add0~90\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~90_combout\ = \bell_clk_3|cnt\(19) $ ((((!\bell_clk_3|Add0~87\))))
-- \bell_clk_3|Add0~92\ = CARRY((\bell_clk_3|cnt\(19) & ((!\bell_clk_3|Add0~87\))))
-- \bell_clk_3|Add0~92COUT1_150\ = CARRY((\bell_clk_3|cnt\(19) & ((!\bell_clk_3|Add0~87\))))

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
	dataa => \bell_clk_3|cnt\(19),
	cin => \bell_clk_3|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~90_combout\,
	cout0 => \bell_clk_3|Add0~92\,
	cout1 => \bell_clk_3|Add0~92COUT1_150\);

-- Location: LC_X14_Y4_N0
\bell_clk_3|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(19) = DFFEAS((((\bell_clk_3|Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_3|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(19));

-- Location: LC_X14_Y4_N6
\bell_clk_3|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~5\ = (!\bell_clk_3|cnt\(17) & (!\bell_clk_3|cnt\(18) & (!B3_cnt[16] & !\bell_clk_3|cnt\(19))))
-- \bell_clk_3|cnt\(16) = DFFEAS(\bell_clk_3|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~75_combout\, , , VCC)

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
	dataa => \bell_clk_3|cnt\(17),
	datab => \bell_clk_3|cnt\(18),
	datac => \bell_clk_3|Add0~75_combout\,
	datad => \bell_clk_3|cnt\(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~5\,
	regout => \bell_clk_3|cnt\(16));

-- Location: LC_X13_Y5_N2
\bell_clk_3|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(17) = DFFEAS((((\bell_clk_3|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_3|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(17));

-- Location: LC_X13_Y4_N1
\bell_clk_3|Add0~95\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~95_combout\ = (\bell_clk_3|cnt\(20) $ (((!\bell_clk_3|Add0~87\ & \bell_clk_3|Add0~92\) # (\bell_clk_3|Add0~87\ & \bell_clk_3|Add0~92COUT1_150\))))
-- \bell_clk_3|Add0~97\ = CARRY(((!\bell_clk_3|Add0~92\) # (!\bell_clk_3|cnt\(20))))
-- \bell_clk_3|Add0~97COUT1_151\ = CARRY(((!\bell_clk_3|Add0~92COUT1_150\) # (!\bell_clk_3|cnt\(20))))

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
	datab => \bell_clk_3|cnt\(20),
	cin => \bell_clk_3|Add0~87\,
	cin0 => \bell_clk_3|Add0~92\,
	cin1 => \bell_clk_3|Add0~92COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~95_combout\,
	cout0 => \bell_clk_3|Add0~97\,
	cout1 => \bell_clk_3|Add0~97COUT1_151\);

-- Location: LC_X13_Y4_N2
\bell_clk_3|Add0~100\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~100_combout\ = \bell_clk_3|cnt\(21) $ ((((!(!\bell_clk_3|Add0~87\ & \bell_clk_3|Add0~97\) # (\bell_clk_3|Add0~87\ & \bell_clk_3|Add0~97COUT1_151\)))))
-- \bell_clk_3|Add0~102\ = CARRY((\bell_clk_3|cnt\(21) & ((!\bell_clk_3|Add0~97\))))
-- \bell_clk_3|Add0~102COUT1_152\ = CARRY((\bell_clk_3|cnt\(21) & ((!\bell_clk_3|Add0~97COUT1_151\))))

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
	dataa => \bell_clk_3|cnt\(21),
	cin => \bell_clk_3|Add0~87\,
	cin0 => \bell_clk_3|Add0~97\,
	cin1 => \bell_clk_3|Add0~97COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~100_combout\,
	cout0 => \bell_clk_3|Add0~102\,
	cout1 => \bell_clk_3|Add0~102COUT1_152\);

-- Location: LC_X13_Y4_N3
\bell_clk_3|Add0~105\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~105_combout\ = (\bell_clk_3|cnt\(22) $ (((!\bell_clk_3|Add0~87\ & \bell_clk_3|Add0~102\) # (\bell_clk_3|Add0~87\ & \bell_clk_3|Add0~102COUT1_152\))))
-- \bell_clk_3|Add0~107\ = CARRY(((!\bell_clk_3|Add0~102\) # (!\bell_clk_3|cnt\(22))))
-- \bell_clk_3|Add0~107COUT1_153\ = CARRY(((!\bell_clk_3|Add0~102COUT1_152\) # (!\bell_clk_3|cnt\(22))))

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
	datab => \bell_clk_3|cnt\(22),
	cin => \bell_clk_3|Add0~87\,
	cin0 => \bell_clk_3|Add0~102\,
	cin1 => \bell_clk_3|Add0~102COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~105_combout\,
	cout0 => \bell_clk_3|Add0~107\,
	cout1 => \bell_clk_3|Add0~107COUT1_153\);

-- Location: LC_X13_Y4_N4
\bell_clk_3|Add0~110\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~110_combout\ = (\bell_clk_3|cnt\(23) $ ((!(!\bell_clk_3|Add0~87\ & \bell_clk_3|Add0~107\) # (\bell_clk_3|Add0~87\ & \bell_clk_3|Add0~107COUT1_153\))))
-- \bell_clk_3|Add0~112\ = CARRY(((\bell_clk_3|cnt\(23) & !\bell_clk_3|Add0~107COUT1_153\)))

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
	datab => \bell_clk_3|cnt\(23),
	cin => \bell_clk_3|Add0~87\,
	cin0 => \bell_clk_3|Add0~107\,
	cin1 => \bell_clk_3|Add0~107COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~110_combout\,
	cout => \bell_clk_3|Add0~112\);

-- Location: LC_X14_Y4_N8
\bell_clk_3|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~110_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(23));

-- Location: LC_X14_Y4_N3
\bell_clk_3|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~6\ = (!\bell_clk_3|cnt\(22) & (!\bell_clk_3|cnt\(21) & (!B3_cnt[20] & !\bell_clk_3|cnt\(23))))
-- \bell_clk_3|cnt\(20) = DFFEAS(\bell_clk_3|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~95_combout\, , , VCC)

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
	dataa => \bell_clk_3|cnt\(22),
	datab => \bell_clk_3|cnt\(21),
	datac => \bell_clk_3|Add0~95_combout\,
	datad => \bell_clk_3|cnt\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~6\,
	regout => \bell_clk_3|cnt\(20));

-- Location: LC_X14_Y4_N7
\bell_clk_3|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(21) = DFFEAS((((\bell_clk_3|Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_3|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(21));

-- Location: LC_X14_Y4_N5
\bell_clk_3|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(22) = DFFEAS((((\bell_clk_3|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_3|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(22));

-- Location: LC_X13_Y4_N5
\bell_clk_3|Add0~115\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~115_combout\ = (\bell_clk_3|cnt\(24) $ ((\bell_clk_3|Add0~112\)))
-- \bell_clk_3|Add0~117\ = CARRY(((!\bell_clk_3|Add0~112\) # (!\bell_clk_3|cnt\(24))))
-- \bell_clk_3|Add0~117COUT1_154\ = CARRY(((!\bell_clk_3|Add0~112\) # (!\bell_clk_3|cnt\(24))))

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
	datab => \bell_clk_3|cnt\(24),
	cin => \bell_clk_3|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~115_combout\,
	cout0 => \bell_clk_3|Add0~117\,
	cout1 => \bell_clk_3|Add0~117COUT1_154\);

-- Location: LC_X13_Y4_N6
\bell_clk_3|Add0~120\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~120_combout\ = (\bell_clk_3|cnt\(25) $ ((!(!\bell_clk_3|Add0~112\ & \bell_clk_3|Add0~117\) # (\bell_clk_3|Add0~112\ & \bell_clk_3|Add0~117COUT1_154\))))
-- \bell_clk_3|Add0~122\ = CARRY(((\bell_clk_3|cnt\(25) & !\bell_clk_3|Add0~117\)))
-- \bell_clk_3|Add0~122COUT1_155\ = CARRY(((\bell_clk_3|cnt\(25) & !\bell_clk_3|Add0~117COUT1_154\)))

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
	datab => \bell_clk_3|cnt\(25),
	cin => \bell_clk_3|Add0~112\,
	cin0 => \bell_clk_3|Add0~117\,
	cin1 => \bell_clk_3|Add0~117COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~120_combout\,
	cout0 => \bell_clk_3|Add0~122\,
	cout1 => \bell_clk_3|Add0~122COUT1_155\);

-- Location: LC_X13_Y4_N7
\bell_clk_3|Add0~125\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~125_combout\ = (\bell_clk_3|cnt\(26) $ (((!\bell_clk_3|Add0~112\ & \bell_clk_3|Add0~122\) # (\bell_clk_3|Add0~112\ & \bell_clk_3|Add0~122COUT1_155\))))
-- \bell_clk_3|Add0~127\ = CARRY(((!\bell_clk_3|Add0~122\) # (!\bell_clk_3|cnt\(26))))
-- \bell_clk_3|Add0~127COUT1_156\ = CARRY(((!\bell_clk_3|Add0~122COUT1_155\) # (!\bell_clk_3|cnt\(26))))

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
	datab => \bell_clk_3|cnt\(26),
	cin => \bell_clk_3|Add0~112\,
	cin0 => \bell_clk_3|Add0~122\,
	cin1 => \bell_clk_3|Add0~122COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~125_combout\,
	cout0 => \bell_clk_3|Add0~127\,
	cout1 => \bell_clk_3|Add0~127COUT1_156\);

-- Location: LC_X13_Y4_N8
\bell_clk_3|Add0~130\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Add0~130_combout\ = (((!\bell_clk_3|Add0~112\ & \bell_clk_3|Add0~127\) # (\bell_clk_3|Add0~112\ & \bell_clk_3|Add0~127COUT1_156\) $ (!\bell_clk_3|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \bell_clk_3|cnt\(27),
	cin => \bell_clk_3|Add0~112\,
	cin0 => \bell_clk_3|Add0~127\,
	cin1 => \bell_clk_3|Add0~127COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Add0~130_combout\);

-- Location: LC_X14_Y4_N2
\bell_clk_3|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~130_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(27));

-- Location: LC_X14_Y4_N4
\bell_clk_3|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~7\ = (!\bell_clk_3|cnt\(26) & (!\bell_clk_3|cnt\(27) & (!B3_cnt[24] & !\bell_clk_3|cnt\(25))))
-- \bell_clk_3|cnt\(24) = DFFEAS(\bell_clk_3|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~115_combout\, , , VCC)

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
	dataa => \bell_clk_3|cnt\(26),
	datab => \bell_clk_3|cnt\(27),
	datac => \bell_clk_3|Add0~115_combout\,
	datad => \bell_clk_3|cnt\(25),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~7\,
	regout => \bell_clk_3|cnt\(24));

-- Location: LC_X14_Y4_N9
\bell_clk_3|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~120_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~120_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(25));

-- Location: LC_X13_Y4_N9
\bell_clk_3|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_3|Add0~125_combout\, , , VCC)

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
	datac => \bell_clk_3|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|cnt\(26));

-- Location: LC_X10_Y4_N3
\bell_clk_3|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~4_combout\ = (\bell_clk_3|Equal0~2\ & (\bell_clk_3|Equal0~1\ & (\bell_clk_3|Equal0~3\ & \bell_clk_3|Equal0~0\)))

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
	dataa => \bell_clk_3|Equal0~2\,
	datab => \bell_clk_3|Equal0~1\,
	datac => \bell_clk_3|Equal0~3\,
	datad => \bell_clk_3|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~4_combout\);

-- Location: LC_X10_Y4_N7
\bell_clk_3|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|Equal0~8_combout\ = (\bell_clk_3|Equal0~5\ & (\bell_clk_3|Equal0~6\ & (\bell_clk_3|Equal0~7\ & \bell_clk_3|Equal0~4_combout\)))

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
	dataa => \bell_clk_3|Equal0~5\,
	datab => \bell_clk_3|Equal0~6\,
	datac => \bell_clk_3|Equal0~7\,
	datad => \bell_clk_3|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_3|Equal0~8_combout\);

-- Location: LC_X9_Y4_N5
\bell_clk_3|clkout\ : maxii_lcell
-- Equation(s):
-- \bell_clk_3|clkout~regout\ = DFFEAS(((\bell_clk_3|clkout~regout\ $ (\bell_clk_3|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_3|clkout~regout\,
	datad => \bell_clk_3|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_3|clkout~regout\);

-- Location: LC_X10_Y6_N5
\Mux0~3\ : maxii_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((\bell_clk_3|clkout~regout\) # (!\bell_code~combout\(1))))) # (!\Mux0~2_combout\ & (\bell_clk_2|clkout~regout\ & (\bell_code~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \bell_clk_2|clkout~regout\,
	datac => \bell_code~combout\(1),
	datad => \bell_clk_3|clkout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bell_code[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bell_code(2),
	combout => \bell_code~combout\(2));

-- Location: LC_X6_Y4_N0
\bell_clk_5|Add0~40\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~40_combout\ = (\bell_clk_5|cnt\(9) $ ((\bell_clk_5|Add0~57\)))
-- \bell_clk_5|Add0~42\ = CARRY(((!\bell_clk_5|Add0~57\) # (!\bell_clk_5|cnt\(9))))
-- \bell_clk_5|Add0~42COUT1_148\ = CARRY(((!\bell_clk_5|Add0~57\) # (!\bell_clk_5|cnt\(9))))

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
	datab => \bell_clk_5|cnt\(9),
	cin => \bell_clk_5|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~40_combout\,
	cout0 => \bell_clk_5|Add0~42\,
	cout1 => \bell_clk_5|Add0~42COUT1_148\);

-- Location: LC_X8_Y4_N8
\bell_clk_5|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(9) = DFFEAS((((\bell_clk_5|Add0~40_combout\ & !\bell_clk_5|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_5|Add0~40_combout\,
	datad => \bell_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(9));

-- Location: LC_X6_Y4_N1
\bell_clk_5|Add0~45\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~45_combout\ = (\bell_clk_5|cnt\(10) $ ((!(!\bell_clk_5|Add0~57\ & \bell_clk_5|Add0~42\) # (\bell_clk_5|Add0~57\ & \bell_clk_5|Add0~42COUT1_148\))))
-- \bell_clk_5|Add0~47\ = CARRY(((\bell_clk_5|cnt\(10) & !\bell_clk_5|Add0~42\)))
-- \bell_clk_5|Add0~47COUT1_149\ = CARRY(((\bell_clk_5|cnt\(10) & !\bell_clk_5|Add0~42COUT1_148\)))

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
	datab => \bell_clk_5|cnt\(10),
	cin => \bell_clk_5|Add0~57\,
	cin0 => \bell_clk_5|Add0~42\,
	cin1 => \bell_clk_5|Add0~42COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~45_combout\,
	cout0 => \bell_clk_5|Add0~47\,
	cout1 => \bell_clk_5|Add0~47COUT1_149\);

-- Location: LC_X7_Y4_N9
\bell_clk_5|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(10) = DFFEAS((((\bell_clk_5|Add0~45_combout\ & !\bell_clk_5|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_5|Add0~45_combout\,
	datad => \bell_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(10));

-- Location: LC_X6_Y4_N2
\bell_clk_5|Add0~50\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~50_combout\ = (\bell_clk_5|cnt\(11) $ (((!\bell_clk_5|Add0~57\ & \bell_clk_5|Add0~47\) # (\bell_clk_5|Add0~57\ & \bell_clk_5|Add0~47COUT1_149\))))
-- \bell_clk_5|Add0~52\ = CARRY(((!\bell_clk_5|Add0~47\) # (!\bell_clk_5|cnt\(11))))
-- \bell_clk_5|Add0~52COUT1_150\ = CARRY(((!\bell_clk_5|Add0~47COUT1_149\) # (!\bell_clk_5|cnt\(11))))

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
	datab => \bell_clk_5|cnt\(11),
	cin => \bell_clk_5|Add0~57\,
	cin0 => \bell_clk_5|Add0~47\,
	cin1 => \bell_clk_5|Add0~47COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~50_combout\,
	cout0 => \bell_clk_5|Add0~52\,
	cout1 => \bell_clk_5|Add0~52COUT1_150\);

-- Location: LC_X8_Y4_N4
\bell_clk_5|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(11) = DFFEAS((((!\bell_clk_5|Equal0~8_combout\ & \bell_clk_5|Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_5|Equal0~8_combout\,
	datad => \bell_clk_5|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(11));

-- Location: LC_X5_Y4_N1
\bell_clk_5|Add0~30\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~30_combout\ = ((!\bell_clk_5|cnt\(0)))
-- \bell_clk_5|Add0~32\ = CARRY(((\bell_clk_5|cnt\(0))))
-- \bell_clk_5|Add0~32COUT1_141\ = CARRY(((\bell_clk_5|cnt\(0))))

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
	datab => \bell_clk_5|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~30_combout\,
	cout0 => \bell_clk_5|Add0~32\,
	cout1 => \bell_clk_5|Add0~32COUT1_141\);

-- Location: LC_X4_Y4_N2
\bell_clk_5|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(0) = DFFEAS((\bell_clk_5|Add0~30_combout\ & (((!\bell_clk_5|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \bell_clk_5|Add0~30_combout\,
	datad => \bell_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(0));

-- Location: LC_X5_Y4_N2
\bell_clk_5|Add0~25\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~25_combout\ = (\bell_clk_5|cnt\(1) $ ((\bell_clk_5|Add0~32\)))
-- \bell_clk_5|Add0~27\ = CARRY(((!\bell_clk_5|Add0~32\) # (!\bell_clk_5|cnt\(1))))
-- \bell_clk_5|Add0~27COUT1_142\ = CARRY(((!\bell_clk_5|Add0~32COUT1_141\) # (!\bell_clk_5|cnt\(1))))

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
	datab => \bell_clk_5|cnt\(1),
	cin0 => \bell_clk_5|Add0~32\,
	cin1 => \bell_clk_5|Add0~32COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~25_combout\,
	cout0 => \bell_clk_5|Add0~27\,
	cout1 => \bell_clk_5|Add0~27COUT1_142\);

-- Location: LC_X5_Y4_N0
\bell_clk_5|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(1) = DFFEAS((((\bell_clk_5|Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_5|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(1));

-- Location: LC_X5_Y4_N5
\bell_clk_5|Add0~15\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~15_combout\ = \bell_clk_5|cnt\(4) $ ((((!\bell_clk_5|Add0~7\))))
-- \bell_clk_5|Add0~17\ = CARRY((\bell_clk_5|cnt\(4) & ((!\bell_clk_5|Add0~7\))))
-- \bell_clk_5|Add0~17COUT1_144\ = CARRY((\bell_clk_5|cnt\(4) & ((!\bell_clk_5|Add0~7\))))

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
	dataa => \bell_clk_5|cnt\(4),
	cin => \bell_clk_5|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~15_combout\,
	cout0 => \bell_clk_5|Add0~17\,
	cout1 => \bell_clk_5|Add0~17COUT1_144\);

-- Location: LC_X4_Y4_N9
\bell_clk_5|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(4) = DFFEAS((((\bell_clk_5|Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_5|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(4));

-- Location: LC_X5_Y4_N6
\bell_clk_5|Add0~10\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~10_combout\ = \bell_clk_5|cnt\(5) $ (((((!\bell_clk_5|Add0~7\ & \bell_clk_5|Add0~17\) # (\bell_clk_5|Add0~7\ & \bell_clk_5|Add0~17COUT1_144\)))))
-- \bell_clk_5|Add0~12\ = CARRY(((!\bell_clk_5|Add0~17\)) # (!\bell_clk_5|cnt\(5)))
-- \bell_clk_5|Add0~12COUT1_145\ = CARRY(((!\bell_clk_5|Add0~17COUT1_144\)) # (!\bell_clk_5|cnt\(5)))

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
	dataa => \bell_clk_5|cnt\(5),
	cin => \bell_clk_5|Add0~7\,
	cin0 => \bell_clk_5|Add0~17\,
	cin1 => \bell_clk_5|Add0~17COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~10_combout\,
	cout0 => \bell_clk_5|Add0~12\,
	cout1 => \bell_clk_5|Add0~12COUT1_145\);

-- Location: LC_X4_Y4_N4
\bell_clk_5|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~0\ = (\bell_clk_5|cnt\(3) & (\bell_clk_5|cnt\(6) & (!B5_cnt[5] & !\bell_clk_5|cnt\(4))))
-- \bell_clk_5|cnt\(5) = DFFEAS(\bell_clk_5|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~10_combout\, , , VCC)

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
	dataa => \bell_clk_5|cnt\(3),
	datab => \bell_clk_5|cnt\(6),
	datac => \bell_clk_5|Add0~10_combout\,
	datad => \bell_clk_5|cnt\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~0\,
	regout => \bell_clk_5|cnt\(5));

-- Location: LC_X5_Y4_N7
\bell_clk_5|Add0~0\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~0_combout\ = \bell_clk_5|cnt\(6) $ ((((!(!\bell_clk_5|Add0~7\ & \bell_clk_5|Add0~12\) # (\bell_clk_5|Add0~7\ & \bell_clk_5|Add0~12COUT1_145\)))))
-- \bell_clk_5|Add0~2\ = CARRY((\bell_clk_5|cnt\(6) & ((!\bell_clk_5|Add0~12\))))
-- \bell_clk_5|Add0~2COUT1_146\ = CARRY((\bell_clk_5|cnt\(6) & ((!\bell_clk_5|Add0~12COUT1_145\))))

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
	dataa => \bell_clk_5|cnt\(6),
	cin => \bell_clk_5|Add0~7\,
	cin0 => \bell_clk_5|Add0~12\,
	cin1 => \bell_clk_5|Add0~12COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~0_combout\,
	cout0 => \bell_clk_5|Add0~2\,
	cout1 => \bell_clk_5|Add0~2COUT1_146\);

-- Location: LC_X4_Y4_N0
\bell_clk_5|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(6) = DFFEAS((\bell_clk_5|Add0~0_combout\ & (((!\bell_clk_5|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => \bell_clk_5|Add0~0_combout\,
	datad => \bell_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(6));

-- Location: LC_X5_Y4_N8
\bell_clk_5|Add0~35\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~35_combout\ = (\bell_clk_5|cnt\(7) $ (((!\bell_clk_5|Add0~7\ & \bell_clk_5|Add0~2\) # (\bell_clk_5|Add0~7\ & \bell_clk_5|Add0~2COUT1_146\))))
-- \bell_clk_5|Add0~37\ = CARRY(((!\bell_clk_5|Add0~2\) # (!\bell_clk_5|cnt\(7))))
-- \bell_clk_5|Add0~37COUT1_147\ = CARRY(((!\bell_clk_5|Add0~2COUT1_146\) # (!\bell_clk_5|cnt\(7))))

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
	datab => \bell_clk_5|cnt\(7),
	cin => \bell_clk_5|Add0~7\,
	cin0 => \bell_clk_5|Add0~2\,
	cin1 => \bell_clk_5|Add0~2COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~35_combout\,
	cout0 => \bell_clk_5|Add0~37\,
	cout1 => \bell_clk_5|Add0~37COUT1_147\);

-- Location: LC_X4_Y4_N7
\bell_clk_5|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(7) = DFFEAS((((\bell_clk_5|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_5|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(7));

-- Location: LC_X5_Y4_N3
\bell_clk_5|Add0~20\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~20_combout\ = (\bell_clk_5|cnt\(2) $ ((!\bell_clk_5|Add0~27\)))
-- \bell_clk_5|Add0~22\ = CARRY(((\bell_clk_5|cnt\(2) & !\bell_clk_5|Add0~27\)))
-- \bell_clk_5|Add0~22COUT1_143\ = CARRY(((\bell_clk_5|cnt\(2) & !\bell_clk_5|Add0~27COUT1_142\)))

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
	datab => \bell_clk_5|cnt\(2),
	cin0 => \bell_clk_5|Add0~27\,
	cin1 => \bell_clk_5|Add0~27COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~20_combout\,
	cout0 => \bell_clk_5|Add0~22\,
	cout1 => \bell_clk_5|Add0~22COUT1_143\);

-- Location: LC_X4_Y4_N8
\bell_clk_5|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~1\ = (!\bell_clk_5|cnt\(1) & (!\bell_clk_5|cnt\(7) & (!B5_cnt[2] & !\bell_clk_5|cnt\(0))))
-- \bell_clk_5|cnt\(2) = DFFEAS(\bell_clk_5|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~20_combout\, , , VCC)

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
	dataa => \bell_clk_5|cnt\(1),
	datab => \bell_clk_5|cnt\(7),
	datac => \bell_clk_5|Add0~20_combout\,
	datad => \bell_clk_5|cnt\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~1\,
	regout => \bell_clk_5|cnt\(2));

-- Location: LC_X5_Y4_N4
\bell_clk_5|Add0~5\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~5_combout\ = (\bell_clk_5|cnt\(3) $ ((\bell_clk_5|Add0~22\)))
-- \bell_clk_5|Add0~7\ = CARRY(((!\bell_clk_5|Add0~22COUT1_143\) # (!\bell_clk_5|cnt\(3))))

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
	datab => \bell_clk_5|cnt\(3),
	cin0 => \bell_clk_5|Add0~22\,
	cin1 => \bell_clk_5|Add0~22COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~5_combout\,
	cout => \bell_clk_5|Add0~7\);

-- Location: LC_X4_Y4_N6
\bell_clk_5|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(3) = DFFEAS((((\bell_clk_5|Add0~5_combout\ & !\bell_clk_5|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_5|Add0~5_combout\,
	datad => \bell_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(3));

-- Location: LC_X5_Y4_N9
\bell_clk_5|Add0~55\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~55_combout\ = (\bell_clk_5|cnt\(8) $ ((!(!\bell_clk_5|Add0~7\ & \bell_clk_5|Add0~37\) # (\bell_clk_5|Add0~7\ & \bell_clk_5|Add0~37COUT1_147\))))
-- \bell_clk_5|Add0~57\ = CARRY(((\bell_clk_5|cnt\(8) & !\bell_clk_5|Add0~37COUT1_147\)))

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
	datab => \bell_clk_5|cnt\(8),
	cin => \bell_clk_5|Add0~7\,
	cin0 => \bell_clk_5|Add0~37\,
	cin1 => \bell_clk_5|Add0~37COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~55_combout\,
	cout => \bell_clk_5|Add0~57\);

-- Location: LC_X8_Y4_N3
\bell_clk_5|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~2\ = (\bell_clk_5|cnt\(11) & (\bell_clk_5|cnt\(10) & (!B5_cnt[8] & \bell_clk_5|cnt\(9))))
-- \bell_clk_5|cnt\(8) = DFFEAS(\bell_clk_5|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~55_combout\, , , VCC)

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
	dataa => \bell_clk_5|cnt\(11),
	datab => \bell_clk_5|cnt\(10),
	datac => \bell_clk_5|Add0~55_combout\,
	datad => \bell_clk_5|cnt\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~2\,
	regout => \bell_clk_5|cnt\(8));

-- Location: LC_X6_Y4_N3
\bell_clk_5|Add0~60\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~60_combout\ = (\bell_clk_5|cnt\(12) $ ((!(!\bell_clk_5|Add0~57\ & \bell_clk_5|Add0~52\) # (\bell_clk_5|Add0~57\ & \bell_clk_5|Add0~52COUT1_150\))))
-- \bell_clk_5|Add0~62\ = CARRY(((\bell_clk_5|cnt\(12) & !\bell_clk_5|Add0~52\)))
-- \bell_clk_5|Add0~62COUT1_151\ = CARRY(((\bell_clk_5|cnt\(12) & !\bell_clk_5|Add0~52COUT1_150\)))

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
	datab => \bell_clk_5|cnt\(12),
	cin => \bell_clk_5|Add0~57\,
	cin0 => \bell_clk_5|Add0~52\,
	cin1 => \bell_clk_5|Add0~52COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~60_combout\,
	cout0 => \bell_clk_5|Add0~62\,
	cout1 => \bell_clk_5|Add0~62COUT1_151\);

-- Location: LC_X8_Y4_N9
\bell_clk_5|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(12) = DFFEAS((((!\bell_clk_5|Equal0~8_combout\ & \bell_clk_5|Add0~60_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_5|Equal0~8_combout\,
	datad => \bell_clk_5|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(12));

-- Location: LC_X6_Y4_N4
\bell_clk_5|Add0~65\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~65_combout\ = (\bell_clk_5|cnt\(13) $ (((!\bell_clk_5|Add0~57\ & \bell_clk_5|Add0~62\) # (\bell_clk_5|Add0~57\ & \bell_clk_5|Add0~62COUT1_151\))))
-- \bell_clk_5|Add0~67\ = CARRY(((!\bell_clk_5|Add0~62COUT1_151\) # (!\bell_clk_5|cnt\(13))))

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
	datab => \bell_clk_5|cnt\(13),
	cin => \bell_clk_5|Add0~57\,
	cin0 => \bell_clk_5|Add0~62\,
	cin1 => \bell_clk_5|Add0~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~65_combout\,
	cout => \bell_clk_5|Add0~67\);

-- Location: LC_X8_Y4_N1
\bell_clk_5|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(13) = DFFEAS((((!\bell_clk_5|Equal0~8_combout\ & \bell_clk_5|Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_5|Equal0~8_combout\,
	datad => \bell_clk_5|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(13));

-- Location: LC_X6_Y4_N5
\bell_clk_5|Add0~70\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~70_combout\ = (\bell_clk_5|cnt\(14) $ ((!\bell_clk_5|Add0~67\)))
-- \bell_clk_5|Add0~72\ = CARRY(((\bell_clk_5|cnt\(14) & !\bell_clk_5|Add0~67\)))
-- \bell_clk_5|Add0~72COUT1_152\ = CARRY(((\bell_clk_5|cnt\(14) & !\bell_clk_5|Add0~67\)))

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
	datab => \bell_clk_5|cnt\(14),
	cin => \bell_clk_5|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~70_combout\,
	cout0 => \bell_clk_5|Add0~72\,
	cout1 => \bell_clk_5|Add0~72COUT1_152\);

-- Location: LC_X8_Y4_N2
\bell_clk_5|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~3\ = (!\bell_clk_5|cnt\(15) & (\bell_clk_5|cnt\(12) & (!B5_cnt[14] & \bell_clk_5|cnt\(13))))
-- \bell_clk_5|cnt\(14) = DFFEAS(\bell_clk_5|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~70_combout\, , , VCC)

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
	dataa => \bell_clk_5|cnt\(15),
	datab => \bell_clk_5|cnt\(12),
	datac => \bell_clk_5|Add0~70_combout\,
	datad => \bell_clk_5|cnt\(13),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~3\,
	regout => \bell_clk_5|cnt\(14));

-- Location: LC_X6_Y4_N6
\bell_clk_5|Add0~75\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~75_combout\ = (\bell_clk_5|cnt\(15) $ (((!\bell_clk_5|Add0~67\ & \bell_clk_5|Add0~72\) # (\bell_clk_5|Add0~67\ & \bell_clk_5|Add0~72COUT1_152\))))
-- \bell_clk_5|Add0~77\ = CARRY(((!\bell_clk_5|Add0~72\) # (!\bell_clk_5|cnt\(15))))
-- \bell_clk_5|Add0~77COUT1_153\ = CARRY(((!\bell_clk_5|Add0~72COUT1_152\) # (!\bell_clk_5|cnt\(15))))

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
	datab => \bell_clk_5|cnt\(15),
	cin => \bell_clk_5|Add0~67\,
	cin0 => \bell_clk_5|Add0~72\,
	cin1 => \bell_clk_5|Add0~72COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~75_combout\,
	cout0 => \bell_clk_5|Add0~77\,
	cout1 => \bell_clk_5|Add0~77COUT1_153\);

-- Location: LC_X9_Y4_N6
\bell_clk_5|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~75_combout\, , , VCC)

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
	datac => \bell_clk_5|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(15));

-- Location: LC_X6_Y4_N7
\bell_clk_5|Add0~80\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~80_combout\ = \bell_clk_5|cnt\(16) $ ((((!(!\bell_clk_5|Add0~67\ & \bell_clk_5|Add0~77\) # (\bell_clk_5|Add0~67\ & \bell_clk_5|Add0~77COUT1_153\)))))
-- \bell_clk_5|Add0~82\ = CARRY((\bell_clk_5|cnt\(16) & ((!\bell_clk_5|Add0~77\))))
-- \bell_clk_5|Add0~82COUT1_154\ = CARRY((\bell_clk_5|cnt\(16) & ((!\bell_clk_5|Add0~77COUT1_153\))))

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
	dataa => \bell_clk_5|cnt\(16),
	cin => \bell_clk_5|Add0~67\,
	cin0 => \bell_clk_5|Add0~77\,
	cin1 => \bell_clk_5|Add0~77COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~80_combout\,
	cout0 => \bell_clk_5|Add0~82\,
	cout1 => \bell_clk_5|Add0~82COUT1_154\);

-- Location: LC_X7_Y5_N2
\bell_clk_5|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~5\ = (!\bell_clk_5|cnt\(19) & (!\bell_clk_5|cnt\(17) & (!B5_cnt[16] & !\bell_clk_5|cnt\(18))))
-- \bell_clk_5|cnt\(16) = DFFEAS(\bell_clk_5|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~80_combout\, , , VCC)

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
	dataa => \bell_clk_5|cnt\(19),
	datab => \bell_clk_5|cnt\(17),
	datac => \bell_clk_5|Add0~80_combout\,
	datad => \bell_clk_5|cnt\(18),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~5\,
	regout => \bell_clk_5|cnt\(16));

-- Location: LC_X6_Y4_N8
\bell_clk_5|Add0~85\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~85_combout\ = (\bell_clk_5|cnt\(17) $ (((!\bell_clk_5|Add0~67\ & \bell_clk_5|Add0~82\) # (\bell_clk_5|Add0~67\ & \bell_clk_5|Add0~82COUT1_154\))))
-- \bell_clk_5|Add0~87\ = CARRY(((!\bell_clk_5|Add0~82\) # (!\bell_clk_5|cnt\(17))))
-- \bell_clk_5|Add0~87COUT1_155\ = CARRY(((!\bell_clk_5|Add0~82COUT1_154\) # (!\bell_clk_5|cnt\(17))))

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
	datab => \bell_clk_5|cnt\(17),
	cin => \bell_clk_5|Add0~67\,
	cin0 => \bell_clk_5|Add0~82\,
	cin1 => \bell_clk_5|Add0~82COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~85_combout\,
	cout0 => \bell_clk_5|Add0~87\,
	cout1 => \bell_clk_5|Add0~87COUT1_155\);

-- Location: LC_X7_Y5_N9
\bell_clk_5|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(17) = DFFEAS((((\bell_clk_5|Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_5|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(17));

-- Location: LC_X6_Y4_N9
\bell_clk_5|Add0~90\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~90_combout\ = (\bell_clk_5|cnt\(18) $ ((!(!\bell_clk_5|Add0~67\ & \bell_clk_5|Add0~87\) # (\bell_clk_5|Add0~67\ & \bell_clk_5|Add0~87COUT1_155\))))
-- \bell_clk_5|Add0~92\ = CARRY(((\bell_clk_5|cnt\(18) & !\bell_clk_5|Add0~87COUT1_155\)))

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
	datab => \bell_clk_5|cnt\(18),
	cin => \bell_clk_5|Add0~67\,
	cin0 => \bell_clk_5|Add0~87\,
	cin1 => \bell_clk_5|Add0~87COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~90_combout\,
	cout => \bell_clk_5|Add0~92\);

-- Location: LC_X7_Y5_N3
\bell_clk_5|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(18) = DFFEAS((((\bell_clk_5|Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_5|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(18));

-- Location: LC_X7_Y4_N0
\bell_clk_5|Add0~95\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~95_combout\ = (\bell_clk_5|cnt\(19) $ ((\bell_clk_5|Add0~92\)))
-- \bell_clk_5|Add0~97\ = CARRY(((!\bell_clk_5|Add0~92\) # (!\bell_clk_5|cnt\(19))))
-- \bell_clk_5|Add0~97COUT1_156\ = CARRY(((!\bell_clk_5|Add0~92\) # (!\bell_clk_5|cnt\(19))))

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
	datab => \bell_clk_5|cnt\(19),
	cin => \bell_clk_5|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~95_combout\,
	cout0 => \bell_clk_5|Add0~97\,
	cout1 => \bell_clk_5|Add0~97COUT1_156\);

-- Location: LC_X7_Y5_N8
\bell_clk_5|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~95_combout\, , , VCC)

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
	datac => \bell_clk_5|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(19));

-- Location: LC_X7_Y4_N1
\bell_clk_5|Add0~100\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~100_combout\ = (\bell_clk_5|cnt\(20) $ ((!(!\bell_clk_5|Add0~92\ & \bell_clk_5|Add0~97\) # (\bell_clk_5|Add0~92\ & \bell_clk_5|Add0~97COUT1_156\))))
-- \bell_clk_5|Add0~102\ = CARRY(((\bell_clk_5|cnt\(20) & !\bell_clk_5|Add0~97\)))
-- \bell_clk_5|Add0~102COUT1_157\ = CARRY(((\bell_clk_5|cnt\(20) & !\bell_clk_5|Add0~97COUT1_156\)))

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
	datab => \bell_clk_5|cnt\(20),
	cin => \bell_clk_5|Add0~92\,
	cin0 => \bell_clk_5|Add0~97\,
	cin1 => \bell_clk_5|Add0~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~100_combout\,
	cout0 => \bell_clk_5|Add0~102\,
	cout1 => \bell_clk_5|Add0~102COUT1_157\);

-- Location: LC_X4_Y4_N3
\bell_clk_5|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~6\ = (!\bell_clk_5|cnt\(23) & (!\bell_clk_5|cnt\(21) & (!B5_cnt[20] & !\bell_clk_5|cnt\(22))))
-- \bell_clk_5|cnt\(20) = DFFEAS(\bell_clk_5|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~100_combout\, , , VCC)

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
	dataa => \bell_clk_5|cnt\(23),
	datab => \bell_clk_5|cnt\(21),
	datac => \bell_clk_5|Add0~100_combout\,
	datad => \bell_clk_5|cnt\(22),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~6\,
	regout => \bell_clk_5|cnt\(20));

-- Location: LC_X7_Y4_N2
\bell_clk_5|Add0~105\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~105_combout\ = (\bell_clk_5|cnt\(21) $ (((!\bell_clk_5|Add0~92\ & \bell_clk_5|Add0~102\) # (\bell_clk_5|Add0~92\ & \bell_clk_5|Add0~102COUT1_157\))))
-- \bell_clk_5|Add0~107\ = CARRY(((!\bell_clk_5|Add0~102\) # (!\bell_clk_5|cnt\(21))))
-- \bell_clk_5|Add0~107COUT1_158\ = CARRY(((!\bell_clk_5|Add0~102COUT1_157\) # (!\bell_clk_5|cnt\(21))))

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
	datab => \bell_clk_5|cnt\(21),
	cin => \bell_clk_5|Add0~92\,
	cin0 => \bell_clk_5|Add0~102\,
	cin1 => \bell_clk_5|Add0~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~105_combout\,
	cout0 => \bell_clk_5|Add0~107\,
	cout1 => \bell_clk_5|Add0~107COUT1_158\);

-- Location: LC_X4_Y4_N1
\bell_clk_5|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(21) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~105_combout\, , , VCC)

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
	datac => \bell_clk_5|Add0~105_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(21));

-- Location: LC_X7_Y4_N3
\bell_clk_5|Add0~110\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~110_combout\ = \bell_clk_5|cnt\(22) $ ((((!(!\bell_clk_5|Add0~92\ & \bell_clk_5|Add0~107\) # (\bell_clk_5|Add0~92\ & \bell_clk_5|Add0~107COUT1_158\)))))
-- \bell_clk_5|Add0~112\ = CARRY((\bell_clk_5|cnt\(22) & ((!\bell_clk_5|Add0~107\))))
-- \bell_clk_5|Add0~112COUT1_159\ = CARRY((\bell_clk_5|cnt\(22) & ((!\bell_clk_5|Add0~107COUT1_158\))))

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
	dataa => \bell_clk_5|cnt\(22),
	cin => \bell_clk_5|Add0~92\,
	cin0 => \bell_clk_5|Add0~107\,
	cin1 => \bell_clk_5|Add0~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~110_combout\,
	cout0 => \bell_clk_5|Add0~112\,
	cout1 => \bell_clk_5|Add0~112COUT1_159\);

-- Location: LC_X4_Y4_N5
\bell_clk_5|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~110_combout\, , , VCC)

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
	datac => \bell_clk_5|Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(22));

-- Location: LC_X7_Y4_N4
\bell_clk_5|Add0~115\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~115_combout\ = (\bell_clk_5|cnt\(23) $ (((!\bell_clk_5|Add0~92\ & \bell_clk_5|Add0~112\) # (\bell_clk_5|Add0~92\ & \bell_clk_5|Add0~112COUT1_159\))))
-- \bell_clk_5|Add0~117\ = CARRY(((!\bell_clk_5|Add0~112COUT1_159\) # (!\bell_clk_5|cnt\(23))))

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
	datab => \bell_clk_5|cnt\(23),
	cin => \bell_clk_5|Add0~92\,
	cin0 => \bell_clk_5|Add0~112\,
	cin1 => \bell_clk_5|Add0~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~115_combout\,
	cout => \bell_clk_5|Add0~117\);

-- Location: LC_X3_Y4_N9
\bell_clk_5|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~115_combout\, , , VCC)

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
	datac => \bell_clk_5|Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(23));

-- Location: LC_X7_Y4_N5
\bell_clk_5|Add0~120\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~120_combout\ = \bell_clk_5|cnt\(24) $ ((((!\bell_clk_5|Add0~117\))))
-- \bell_clk_5|Add0~122\ = CARRY((\bell_clk_5|cnt\(24) & ((!\bell_clk_5|Add0~117\))))
-- \bell_clk_5|Add0~122COUT1_160\ = CARRY((\bell_clk_5|cnt\(24) & ((!\bell_clk_5|Add0~117\))))

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
	dataa => \bell_clk_5|cnt\(24),
	cin => \bell_clk_5|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~120_combout\,
	cout0 => \bell_clk_5|Add0~122\,
	cout1 => \bell_clk_5|Add0~122COUT1_160\);

-- Location: LC_X7_Y4_N6
\bell_clk_5|Add0~125\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~125_combout\ = (\bell_clk_5|cnt\(25) $ (((!\bell_clk_5|Add0~117\ & \bell_clk_5|Add0~122\) # (\bell_clk_5|Add0~117\ & \bell_clk_5|Add0~122COUT1_160\))))
-- \bell_clk_5|Add0~127\ = CARRY(((!\bell_clk_5|Add0~122\) # (!\bell_clk_5|cnt\(25))))
-- \bell_clk_5|Add0~127COUT1_161\ = CARRY(((!\bell_clk_5|Add0~122COUT1_160\) # (!\bell_clk_5|cnt\(25))))

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
	datab => \bell_clk_5|cnt\(25),
	cin => \bell_clk_5|Add0~117\,
	cin0 => \bell_clk_5|Add0~122\,
	cin1 => \bell_clk_5|Add0~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~125_combout\,
	cout0 => \bell_clk_5|Add0~127\,
	cout1 => \bell_clk_5|Add0~127COUT1_161\);

-- Location: LC_X7_Y4_N7
\bell_clk_5|Add0~130\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~130_combout\ = (\bell_clk_5|cnt\(26) $ ((!(!\bell_clk_5|Add0~117\ & \bell_clk_5|Add0~127\) # (\bell_clk_5|Add0~117\ & \bell_clk_5|Add0~127COUT1_161\))))
-- \bell_clk_5|Add0~132\ = CARRY(((\bell_clk_5|cnt\(26) & !\bell_clk_5|Add0~127\)))
-- \bell_clk_5|Add0~132COUT1_162\ = CARRY(((\bell_clk_5|cnt\(26) & !\bell_clk_5|Add0~127COUT1_161\)))

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
	datab => \bell_clk_5|cnt\(26),
	cin => \bell_clk_5|Add0~117\,
	cin0 => \bell_clk_5|Add0~127\,
	cin1 => \bell_clk_5|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~130_combout\,
	cout0 => \bell_clk_5|Add0~132\,
	cout1 => \bell_clk_5|Add0~132COUT1_162\);

-- Location: LC_X7_Y4_N8
\bell_clk_5|Add0~135\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Add0~135_combout\ = \bell_clk_5|cnt\(27) $ (((((!\bell_clk_5|Add0~117\ & \bell_clk_5|Add0~132\) # (\bell_clk_5|Add0~117\ & \bell_clk_5|Add0~132COUT1_162\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bell_clk_5|cnt\(27),
	cin => \bell_clk_5|Add0~117\,
	cin0 => \bell_clk_5|Add0~132\,
	cin1 => \bell_clk_5|Add0~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Add0~135_combout\);

-- Location: LC_X7_Y5_N6
\bell_clk_5|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(27) = DFFEAS((((\bell_clk_5|Add0~135_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_5|Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(27));

-- Location: LC_X8_Y4_N0
\bell_clk_5|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~7\ = (!\bell_clk_5|cnt\(26) & (!\bell_clk_5|cnt\(25) & (!B5_cnt[24] & !\bell_clk_5|cnt\(27))))
-- \bell_clk_5|cnt\(24) = DFFEAS(\bell_clk_5|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~120_combout\, , , VCC)

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
	dataa => \bell_clk_5|cnt\(26),
	datab => \bell_clk_5|cnt\(25),
	datac => \bell_clk_5|Add0~120_combout\,
	datad => \bell_clk_5|cnt\(27),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~7\,
	regout => \bell_clk_5|cnt\(24));

-- Location: LC_X7_Y5_N7
\bell_clk_5|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_5|Add0~125_combout\, , , VCC)

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
	datac => \bell_clk_5|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(25));

-- Location: LC_X8_Y4_N5
\bell_clk_5|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|cnt\(26) = DFFEAS((((\bell_clk_5|Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_5|Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|cnt\(26));

-- Location: LC_X8_Y4_N6
\bell_clk_5|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~4_combout\ = (\bell_clk_5|Equal0~2\ & (\bell_clk_5|Equal0~3\ & (\bell_clk_5|Equal0~0\ & \bell_clk_5|Equal0~1\)))

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
	dataa => \bell_clk_5|Equal0~2\,
	datab => \bell_clk_5|Equal0~3\,
	datac => \bell_clk_5|Equal0~0\,
	datad => \bell_clk_5|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~4_combout\);

-- Location: LC_X8_Y4_N7
\bell_clk_5|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|Equal0~8_combout\ = (\bell_clk_5|Equal0~5\ & (\bell_clk_5|Equal0~6\ & (\bell_clk_5|Equal0~7\ & \bell_clk_5|Equal0~4_combout\)))

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
	dataa => \bell_clk_5|Equal0~5\,
	datab => \bell_clk_5|Equal0~6\,
	datac => \bell_clk_5|Equal0~7\,
	datad => \bell_clk_5|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_5|Equal0~8_combout\);

-- Location: LC_X9_Y4_N4
\bell_clk_5|clkout\ : maxii_lcell
-- Equation(s):
-- \bell_clk_5|clkout~regout\ = DFFEAS(((\bell_clk_5|clkout~regout\ $ (\bell_clk_5|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_5|clkout~regout\,
	datad => \bell_clk_5|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_5|clkout~regout\);

-- Location: LC_X3_Y8_N0
\bell_clk_7|Add0~40\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~40_combout\ = (\bell_clk_7|cnt\(9) $ ((!\bell_clk_7|Add0~2\)))
-- \bell_clk_7|Add0~42\ = CARRY(((\bell_clk_7|cnt\(9) & !\bell_clk_7|Add0~2\)))
-- \bell_clk_7|Add0~42COUT1_142\ = CARRY(((\bell_clk_7|cnt\(9) & !\bell_clk_7|Add0~2\)))

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
	datab => \bell_clk_7|cnt\(9),
	cin => \bell_clk_7|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~40_combout\,
	cout0 => \bell_clk_7|Add0~42\,
	cout1 => \bell_clk_7|Add0~42COUT1_142\);

-- Location: LC_X2_Y7_N5
\bell_clk_7|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~40_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~40_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(9));

-- Location: LC_X3_Y8_N1
\bell_clk_7|Add0~45\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~45_combout\ = (\bell_clk_7|cnt\(10) $ (((!\bell_clk_7|Add0~2\ & \bell_clk_7|Add0~42\) # (\bell_clk_7|Add0~2\ & \bell_clk_7|Add0~42COUT1_142\))))
-- \bell_clk_7|Add0~47\ = CARRY(((!\bell_clk_7|Add0~42\) # (!\bell_clk_7|cnt\(10))))
-- \bell_clk_7|Add0~47COUT1_143\ = CARRY(((!\bell_clk_7|Add0~42COUT1_142\) # (!\bell_clk_7|cnt\(10))))

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
	datab => \bell_clk_7|cnt\(10),
	cin => \bell_clk_7|Add0~2\,
	cin0 => \bell_clk_7|Add0~42\,
	cin1 => \bell_clk_7|Add0~42COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~45_combout\,
	cout0 => \bell_clk_7|Add0~47\,
	cout1 => \bell_clk_7|Add0~47COUT1_143\);

-- Location: LC_X2_Y7_N6
\bell_clk_7|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~45_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(10));

-- Location: LC_X3_Y8_N2
\bell_clk_7|Add0~50\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~50_combout\ = (\bell_clk_7|cnt\(11) $ ((!(!\bell_clk_7|Add0~2\ & \bell_clk_7|Add0~47\) # (\bell_clk_7|Add0~2\ & \bell_clk_7|Add0~47COUT1_143\))))
-- \bell_clk_7|Add0~52\ = CARRY(((\bell_clk_7|cnt\(11) & !\bell_clk_7|Add0~47\)))
-- \bell_clk_7|Add0~52COUT1_144\ = CARRY(((\bell_clk_7|cnt\(11) & !\bell_clk_7|Add0~47COUT1_143\)))

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
	datab => \bell_clk_7|cnt\(11),
	cin => \bell_clk_7|Add0~2\,
	cin0 => \bell_clk_7|Add0~47\,
	cin1 => \bell_clk_7|Add0~47COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~50_combout\,
	cout0 => \bell_clk_7|Add0~52\,
	cout1 => \bell_clk_7|Add0~52COUT1_144\);

-- Location: LC_X2_Y7_N7
\bell_clk_7|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(11) = DFFEAS((((\bell_clk_7|Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_7|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(11));

-- Location: LC_X2_Y8_N2
\bell_clk_7|Add0~35\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~35_combout\ = \bell_clk_1|cnt\(0) $ ((\bell_clk_7|cnt\(1)))
-- \bell_clk_7|Add0~37\ = CARRY((\bell_clk_1|cnt\(0) & (\bell_clk_7|cnt\(1))))
-- \bell_clk_7|Add0~37COUT1_136\ = CARRY((\bell_clk_1|cnt\(0) & (\bell_clk_7|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bell_clk_1|cnt\(0),
	datab => \bell_clk_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~35_combout\,
	cout0 => \bell_clk_7|Add0~37\,
	cout1 => \bell_clk_7|Add0~37COUT1_136\);

-- Location: LC_X2_Y7_N8
\bell_clk_7|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~2\ = (!\bell_clk_7|cnt\(10) & (!\bell_clk_7|cnt\(11) & (B7_cnt[1] & !\bell_clk_7|cnt\(9))))
-- \bell_clk_7|cnt\(1) = DFFEAS(\bell_clk_7|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bell_clk_7|cnt\(10),
	datab => \bell_clk_7|cnt\(11),
	datac => \bell_clk_7|Add0~35_combout\,
	datad => \bell_clk_7|cnt\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~2\,
	regout => \bell_clk_7|cnt\(1));

-- Location: LC_X2_Y8_N3
\bell_clk_7|Add0~25\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~25_combout\ = \bell_clk_7|cnt\(2) $ ((((\bell_clk_7|Add0~37\))))
-- \bell_clk_7|Add0~27\ = CARRY(((!\bell_clk_7|Add0~37\)) # (!\bell_clk_7|cnt\(2)))
-- \bell_clk_7|Add0~27COUT1_137\ = CARRY(((!\bell_clk_7|Add0~37COUT1_136\)) # (!\bell_clk_7|cnt\(2)))

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
	dataa => \bell_clk_7|cnt\(2),
	cin0 => \bell_clk_7|Add0~37\,
	cin1 => \bell_clk_7|Add0~37COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~25_combout\,
	cout0 => \bell_clk_7|Add0~27\,
	cout1 => \bell_clk_7|Add0~27COUT1_137\);

-- Location: LC_X2_Y7_N4
\bell_clk_7|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~25_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(2));

-- Location: LC_X2_Y8_N5
\bell_clk_7|Add0~30\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~30_combout\ = (\bell_clk_7|cnt\(4) $ ((\bell_clk_7|Add0~22\)))
-- \bell_clk_7|Add0~32\ = CARRY(((!\bell_clk_7|Add0~22\) # (!\bell_clk_7|cnt\(4))))
-- \bell_clk_7|Add0~32COUT1_138\ = CARRY(((!\bell_clk_7|Add0~22\) # (!\bell_clk_7|cnt\(4))))

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
	datab => \bell_clk_7|cnt\(4),
	cin => \bell_clk_7|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~30_combout\,
	cout0 => \bell_clk_7|Add0~32\,
	cout1 => \bell_clk_7|Add0~32COUT1_138\);

-- Location: LC_X1_Y8_N7
\bell_clk_7|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(4) = DFFEAS((((!\bell_clk_7|Equal0~8_combout\ & \bell_clk_7|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_7|Equal0~8_combout\,
	datad => \bell_clk_7|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(4));

-- Location: LC_X2_Y8_N4
\bell_clk_7|Add0~20\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~20_combout\ = (\bell_clk_7|cnt\(3) $ ((!\bell_clk_7|Add0~27\)))
-- \bell_clk_7|Add0~22\ = CARRY(((\bell_clk_7|cnt\(3) & !\bell_clk_7|Add0~27COUT1_137\)))

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
	datab => \bell_clk_7|cnt\(3),
	cin0 => \bell_clk_7|Add0~27\,
	cin1 => \bell_clk_7|Add0~27COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~20_combout\,
	cout => \bell_clk_7|Add0~22\);

-- Location: LC_X2_Y8_N6
\bell_clk_7|Add0~15\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~15_combout\ = \bell_clk_7|cnt\(5) $ ((((!(!\bell_clk_7|Add0~22\ & \bell_clk_7|Add0~32\) # (\bell_clk_7|Add0~22\ & \bell_clk_7|Add0~32COUT1_138\)))))
-- \bell_clk_7|Add0~17\ = CARRY((\bell_clk_7|cnt\(5) & ((!\bell_clk_7|Add0~32\))))
-- \bell_clk_7|Add0~17COUT1_139\ = CARRY((\bell_clk_7|cnt\(5) & ((!\bell_clk_7|Add0~32COUT1_138\))))

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
	dataa => \bell_clk_7|cnt\(5),
	cin => \bell_clk_7|Add0~22\,
	cin0 => \bell_clk_7|Add0~32\,
	cin1 => \bell_clk_7|Add0~32COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~15_combout\,
	cout0 => \bell_clk_7|Add0~17\,
	cout1 => \bell_clk_7|Add0~17COUT1_139\);

-- Location: LC_X1_Y8_N9
\bell_clk_7|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(5) = DFFEAS((((\bell_clk_7|Add0~15_combout\ & !\bell_clk_7|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_7|Add0~15_combout\,
	datad => \bell_clk_7|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(5));

-- Location: LC_X1_Y8_N2
\bell_clk_7|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~1\ = (\bell_clk_7|cnt\(2) & (!\bell_clk_7|cnt\(4) & (B7_cnt[3] & \bell_clk_7|cnt\(5))))
-- \bell_clk_7|cnt\(3) = DFFEAS(\bell_clk_7|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bell_clk_7|cnt\(2),
	datab => \bell_clk_7|cnt\(4),
	datac => \bell_clk_7|Add0~20_combout\,
	datad => \bell_clk_7|cnt\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~1\,
	regout => \bell_clk_7|cnt\(3));

-- Location: LC_X2_Y8_N7
\bell_clk_7|Add0~5\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~5_combout\ = \bell_clk_7|cnt\(6) $ (((((!\bell_clk_7|Add0~22\ & \bell_clk_7|Add0~17\) # (\bell_clk_7|Add0~22\ & \bell_clk_7|Add0~17COUT1_139\)))))
-- \bell_clk_7|Add0~7\ = CARRY(((!\bell_clk_7|Add0~17\)) # (!\bell_clk_7|cnt\(6)))
-- \bell_clk_7|Add0~7COUT1_140\ = CARRY(((!\bell_clk_7|Add0~17COUT1_139\)) # (!\bell_clk_7|cnt\(6)))

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
	dataa => \bell_clk_7|cnt\(6),
	cin => \bell_clk_7|Add0~22\,
	cin0 => \bell_clk_7|Add0~17\,
	cin1 => \bell_clk_7|Add0~17COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~5_combout\,
	cout0 => \bell_clk_7|Add0~7\,
	cout1 => \bell_clk_7|Add0~7COUT1_140\);

-- Location: LC_X1_Y8_N5
\bell_clk_7|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(6) = DFFEAS((((!\bell_clk_7|Equal0~8_combout\ & \bell_clk_7|Add0~5_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_7|Equal0~8_combout\,
	datad => \bell_clk_7|Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(6));

-- Location: LC_X2_Y8_N8
\bell_clk_7|Add0~10\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~10_combout\ = (\bell_clk_7|cnt\(7) $ ((!(!\bell_clk_7|Add0~22\ & \bell_clk_7|Add0~7\) # (\bell_clk_7|Add0~22\ & \bell_clk_7|Add0~7COUT1_140\))))
-- \bell_clk_7|Add0~12\ = CARRY(((\bell_clk_7|cnt\(7) & !\bell_clk_7|Add0~7\)))
-- \bell_clk_7|Add0~12COUT1_141\ = CARRY(((\bell_clk_7|cnt\(7) & !\bell_clk_7|Add0~7COUT1_140\)))

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
	datab => \bell_clk_7|cnt\(7),
	cin => \bell_clk_7|Add0~22\,
	cin0 => \bell_clk_7|Add0~7\,
	cin1 => \bell_clk_7|Add0~7COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~10_combout\,
	cout0 => \bell_clk_7|Add0~12\,
	cout1 => \bell_clk_7|Add0~12COUT1_141\);

-- Location: LC_X1_Y8_N6
\bell_clk_7|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~0\ = (\bell_clk_7|cnt\(6) & (\bell_clk_7|cnt\(8) & (!B7_cnt[7] & \bell_clk_1|cnt\(0))))
-- \bell_clk_7|cnt\(7) = DFFEAS(\bell_clk_7|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~10_combout\, , , VCC)

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
	dataa => \bell_clk_7|cnt\(6),
	datab => \bell_clk_7|cnt\(8),
	datac => \bell_clk_7|Add0~10_combout\,
	datad => \bell_clk_1|cnt\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~0\,
	regout => \bell_clk_7|cnt\(7));

-- Location: LC_X2_Y8_N9
\bell_clk_7|Add0~0\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~0_combout\ = \bell_clk_7|cnt\(8) $ (((((!\bell_clk_7|Add0~22\ & \bell_clk_7|Add0~12\) # (\bell_clk_7|Add0~22\ & \bell_clk_7|Add0~12COUT1_141\)))))
-- \bell_clk_7|Add0~2\ = CARRY(((!\bell_clk_7|Add0~12COUT1_141\)) # (!\bell_clk_7|cnt\(8)))

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
	dataa => \bell_clk_7|cnt\(8),
	cin => \bell_clk_7|Add0~22\,
	cin0 => \bell_clk_7|Add0~12\,
	cin1 => \bell_clk_7|Add0~12COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~0_combout\,
	cout => \bell_clk_7|Add0~2\);

-- Location: LC_X1_Y8_N1
\bell_clk_7|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(8) = DFFEAS((((\bell_clk_7|Add0~0_combout\ & !\bell_clk_7|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_7|Add0~0_combout\,
	datad => \bell_clk_7|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(8));

-- Location: LC_X3_Y8_N3
\bell_clk_7|Add0~55\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~55_combout\ = \bell_clk_7|cnt\(12) $ (((((!\bell_clk_7|Add0~2\ & \bell_clk_7|Add0~52\) # (\bell_clk_7|Add0~2\ & \bell_clk_7|Add0~52COUT1_144\)))))
-- \bell_clk_7|Add0~57\ = CARRY(((!\bell_clk_7|Add0~52\)) # (!\bell_clk_7|cnt\(12)))
-- \bell_clk_7|Add0~57COUT1_145\ = CARRY(((!\bell_clk_7|Add0~52COUT1_144\)) # (!\bell_clk_7|cnt\(12)))

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
	dataa => \bell_clk_7|cnt\(12),
	cin => \bell_clk_7|Add0~2\,
	cin0 => \bell_clk_7|Add0~52\,
	cin1 => \bell_clk_7|Add0~52COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~55_combout\,
	cout0 => \bell_clk_7|Add0~57\,
	cout1 => \bell_clk_7|Add0~57COUT1_145\);

-- Location: LC_X2_Y8_N1
\bell_clk_7|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(12) = DFFEAS((((\bell_clk_7|Add0~55_combout\ & !\bell_clk_7|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_7|Add0~55_combout\,
	datad => \bell_clk_7|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(12));

-- Location: LC_X3_Y8_N4
\bell_clk_7|Add0~60\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~60_combout\ = \bell_clk_7|cnt\(13) $ ((((!(!\bell_clk_7|Add0~2\ & \bell_clk_7|Add0~57\) # (\bell_clk_7|Add0~2\ & \bell_clk_7|Add0~57COUT1_145\)))))
-- \bell_clk_7|Add0~62\ = CARRY((\bell_clk_7|cnt\(13) & ((!\bell_clk_7|Add0~57COUT1_145\))))

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
	dataa => \bell_clk_7|cnt\(13),
	cin => \bell_clk_7|Add0~2\,
	cin0 => \bell_clk_7|Add0~57\,
	cin1 => \bell_clk_7|Add0~57COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~60_combout\,
	cout => \bell_clk_7|Add0~62\);

-- Location: LC_X2_Y8_N0
\bell_clk_7|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(13) = DFFEAS(((!\bell_clk_7|Equal0~8_combout\ & ((\bell_clk_7|Add0~60_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_7|Equal0~8_combout\,
	datad => \bell_clk_7|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(13));

-- Location: LC_X4_Y8_N0
\bell_clk_7|Add0~90\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~90_combout\ = (\bell_clk_7|cnt\(19) $ ((!\bell_clk_7|Add0~87\)))
-- \bell_clk_7|Add0~92\ = CARRY(((\bell_clk_7|cnt\(19) & !\bell_clk_7|Add0~87\)))
-- \bell_clk_7|Add0~92COUT1_150\ = CARRY(((\bell_clk_7|cnt\(19) & !\bell_clk_7|Add0~87\)))

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
	datab => \bell_clk_7|cnt\(19),
	cin => \bell_clk_7|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~90_combout\,
	cout0 => \bell_clk_7|Add0~92\,
	cout1 => \bell_clk_7|Add0~92COUT1_150\);

-- Location: LC_X3_Y7_N8
\bell_clk_7|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~90_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(19));

-- Location: LC_X3_Y8_N5
\bell_clk_7|Add0~65\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~65_combout\ = \bell_clk_7|cnt\(14) $ ((((\bell_clk_7|Add0~62\))))
-- \bell_clk_7|Add0~67\ = CARRY(((!\bell_clk_7|Add0~62\)) # (!\bell_clk_7|cnt\(14)))
-- \bell_clk_7|Add0~67COUT1_146\ = CARRY(((!\bell_clk_7|Add0~62\)) # (!\bell_clk_7|cnt\(14)))

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
	dataa => \bell_clk_7|cnt\(14),
	cin => \bell_clk_7|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~65_combout\,
	cout0 => \bell_clk_7|Add0~67\,
	cout1 => \bell_clk_7|Add0~67COUT1_146\);

-- Location: LC_X1_Y8_N0
\bell_clk_7|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~3\ = (\bell_clk_7|cnt\(13) & (!\bell_clk_7|cnt\(15) & (!B7_cnt[14] & \bell_clk_7|cnt\(12))))
-- \bell_clk_7|cnt\(14) = DFFEAS(\bell_clk_7|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~65_combout\, , , VCC)

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
	dataa => \bell_clk_7|cnt\(13),
	datab => \bell_clk_7|cnt\(15),
	datac => \bell_clk_7|Add0~65_combout\,
	datad => \bell_clk_7|cnt\(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~3\,
	regout => \bell_clk_7|cnt\(14));

-- Location: LC_X3_Y8_N6
\bell_clk_7|Add0~70\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~70_combout\ = \bell_clk_7|cnt\(15) $ ((((!(!\bell_clk_7|Add0~62\ & \bell_clk_7|Add0~67\) # (\bell_clk_7|Add0~62\ & \bell_clk_7|Add0~67COUT1_146\)))))
-- \bell_clk_7|Add0~72\ = CARRY((\bell_clk_7|cnt\(15) & ((!\bell_clk_7|Add0~67\))))
-- \bell_clk_7|Add0~72COUT1_147\ = CARRY((\bell_clk_7|cnt\(15) & ((!\bell_clk_7|Add0~67COUT1_146\))))

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
	dataa => \bell_clk_7|cnt\(15),
	cin => \bell_clk_7|Add0~62\,
	cin0 => \bell_clk_7|Add0~67\,
	cin1 => \bell_clk_7|Add0~67COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~70_combout\,
	cout0 => \bell_clk_7|Add0~72\,
	cout1 => \bell_clk_7|Add0~72COUT1_147\);

-- Location: LC_X2_Y7_N9
\bell_clk_7|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~70_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(15));

-- Location: LC_X3_Y8_N7
\bell_clk_7|Add0~75\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~75_combout\ = (\bell_clk_7|cnt\(16) $ (((!\bell_clk_7|Add0~62\ & \bell_clk_7|Add0~72\) # (\bell_clk_7|Add0~62\ & \bell_clk_7|Add0~72COUT1_147\))))
-- \bell_clk_7|Add0~77\ = CARRY(((!\bell_clk_7|Add0~72\) # (!\bell_clk_7|cnt\(16))))
-- \bell_clk_7|Add0~77COUT1_148\ = CARRY(((!\bell_clk_7|Add0~72COUT1_147\) # (!\bell_clk_7|cnt\(16))))

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
	datab => \bell_clk_7|cnt\(16),
	cin => \bell_clk_7|Add0~62\,
	cin0 => \bell_clk_7|Add0~72\,
	cin1 => \bell_clk_7|Add0~72COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~75_combout\,
	cout0 => \bell_clk_7|Add0~77\,
	cout1 => \bell_clk_7|Add0~77COUT1_148\);

-- Location: LC_X3_Y7_N5
\bell_clk_7|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~5\ = (!\bell_clk_7|cnt\(19) & (!\bell_clk_7|cnt\(17) & (!B7_cnt[16] & !\bell_clk_7|cnt\(18))))
-- \bell_clk_7|cnt\(16) = DFFEAS(\bell_clk_7|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~75_combout\, , , VCC)

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
	dataa => \bell_clk_7|cnt\(19),
	datab => \bell_clk_7|cnt\(17),
	datac => \bell_clk_7|Add0~75_combout\,
	datad => \bell_clk_7|cnt\(18),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~5\,
	regout => \bell_clk_7|cnt\(16));

-- Location: LC_X3_Y8_N8
\bell_clk_7|Add0~80\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~80_combout\ = (\bell_clk_7|cnt\(17) $ ((!(!\bell_clk_7|Add0~62\ & \bell_clk_7|Add0~77\) # (\bell_clk_7|Add0~62\ & \bell_clk_7|Add0~77COUT1_148\))))
-- \bell_clk_7|Add0~82\ = CARRY(((\bell_clk_7|cnt\(17) & !\bell_clk_7|Add0~77\)))
-- \bell_clk_7|Add0~82COUT1_149\ = CARRY(((\bell_clk_7|cnt\(17) & !\bell_clk_7|Add0~77COUT1_148\)))

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
	datab => \bell_clk_7|cnt\(17),
	cin => \bell_clk_7|Add0~62\,
	cin0 => \bell_clk_7|Add0~77\,
	cin1 => \bell_clk_7|Add0~77COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~80_combout\,
	cout0 => \bell_clk_7|Add0~82\,
	cout1 => \bell_clk_7|Add0~82COUT1_149\);

-- Location: LC_X3_Y7_N0
\bell_clk_7|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~80_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~80_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(17));

-- Location: LC_X3_Y8_N9
\bell_clk_7|Add0~85\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~85_combout\ = (\bell_clk_7|cnt\(18) $ (((!\bell_clk_7|Add0~62\ & \bell_clk_7|Add0~82\) # (\bell_clk_7|Add0~62\ & \bell_clk_7|Add0~82COUT1_149\))))
-- \bell_clk_7|Add0~87\ = CARRY(((!\bell_clk_7|Add0~82COUT1_149\) # (!\bell_clk_7|cnt\(18))))

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
	datab => \bell_clk_7|cnt\(18),
	cin => \bell_clk_7|Add0~62\,
	cin0 => \bell_clk_7|Add0~82\,
	cin1 => \bell_clk_7|Add0~82COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~85_combout\,
	cout => \bell_clk_7|Add0~87\);

-- Location: LC_X3_Y7_N2
\bell_clk_7|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~85_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(18));

-- Location: LC_X4_Y8_N1
\bell_clk_7|Add0~95\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~95_combout\ = \bell_clk_7|cnt\(20) $ (((((!\bell_clk_7|Add0~87\ & \bell_clk_7|Add0~92\) # (\bell_clk_7|Add0~87\ & \bell_clk_7|Add0~92COUT1_150\)))))
-- \bell_clk_7|Add0~97\ = CARRY(((!\bell_clk_7|Add0~92\)) # (!\bell_clk_7|cnt\(20)))
-- \bell_clk_7|Add0~97COUT1_151\ = CARRY(((!\bell_clk_7|Add0~92COUT1_150\)) # (!\bell_clk_7|cnt\(20)))

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
	dataa => \bell_clk_7|cnt\(20),
	cin => \bell_clk_7|Add0~87\,
	cin0 => \bell_clk_7|Add0~92\,
	cin1 => \bell_clk_7|Add0~92COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~95_combout\,
	cout0 => \bell_clk_7|Add0~97\,
	cout1 => \bell_clk_7|Add0~97COUT1_151\);

-- Location: LC_X5_Y8_N3
\bell_clk_7|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~6\ = (!\bell_clk_7|cnt\(23) & (!\bell_clk_7|cnt\(21) & (!B7_cnt[20] & !\bell_clk_7|cnt\(22))))
-- \bell_clk_7|cnt\(20) = DFFEAS(\bell_clk_7|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~95_combout\, , , VCC)

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
	dataa => \bell_clk_7|cnt\(23),
	datab => \bell_clk_7|cnt\(21),
	datac => \bell_clk_7|Add0~95_combout\,
	datad => \bell_clk_7|cnt\(22),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~6\,
	regout => \bell_clk_7|cnt\(20));

-- Location: LC_X4_Y8_N2
\bell_clk_7|Add0~100\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~100_combout\ = (\bell_clk_7|cnt\(21) $ ((!(!\bell_clk_7|Add0~87\ & \bell_clk_7|Add0~97\) # (\bell_clk_7|Add0~87\ & \bell_clk_7|Add0~97COUT1_151\))))
-- \bell_clk_7|Add0~102\ = CARRY(((\bell_clk_7|cnt\(21) & !\bell_clk_7|Add0~97\)))
-- \bell_clk_7|Add0~102COUT1_152\ = CARRY(((\bell_clk_7|cnt\(21) & !\bell_clk_7|Add0~97COUT1_151\)))

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
	datab => \bell_clk_7|cnt\(21),
	cin => \bell_clk_7|Add0~87\,
	cin0 => \bell_clk_7|Add0~97\,
	cin1 => \bell_clk_7|Add0~97COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~100_combout\,
	cout0 => \bell_clk_7|Add0~102\,
	cout1 => \bell_clk_7|Add0~102COUT1_152\);

-- Location: LC_X5_Y8_N2
\bell_clk_7|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(21) = DFFEAS((((\bell_clk_7|Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_7|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(21));

-- Location: LC_X4_Y8_N3
\bell_clk_7|Add0~105\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~105_combout\ = \bell_clk_7|cnt\(22) $ (((((!\bell_clk_7|Add0~87\ & \bell_clk_7|Add0~102\) # (\bell_clk_7|Add0~87\ & \bell_clk_7|Add0~102COUT1_152\)))))
-- \bell_clk_7|Add0~107\ = CARRY(((!\bell_clk_7|Add0~102\)) # (!\bell_clk_7|cnt\(22)))
-- \bell_clk_7|Add0~107COUT1_153\ = CARRY(((!\bell_clk_7|Add0~102COUT1_152\)) # (!\bell_clk_7|cnt\(22)))

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
	dataa => \bell_clk_7|cnt\(22),
	cin => \bell_clk_7|Add0~87\,
	cin0 => \bell_clk_7|Add0~102\,
	cin1 => \bell_clk_7|Add0~102COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~105_combout\,
	cout0 => \bell_clk_7|Add0~107\,
	cout1 => \bell_clk_7|Add0~107COUT1_153\);

-- Location: LC_X5_Y8_N1
\bell_clk_7|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~105_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~105_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(22));

-- Location: LC_X4_Y8_N4
\bell_clk_7|Add0~110\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~110_combout\ = (\bell_clk_7|cnt\(23) $ ((!(!\bell_clk_7|Add0~87\ & \bell_clk_7|Add0~107\) # (\bell_clk_7|Add0~87\ & \bell_clk_7|Add0~107COUT1_153\))))
-- \bell_clk_7|Add0~112\ = CARRY(((\bell_clk_7|cnt\(23) & !\bell_clk_7|Add0~107COUT1_153\)))

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
	datab => \bell_clk_7|cnt\(23),
	cin => \bell_clk_7|Add0~87\,
	cin0 => \bell_clk_7|Add0~107\,
	cin1 => \bell_clk_7|Add0~107COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~110_combout\,
	cout => \bell_clk_7|Add0~112\);

-- Location: LC_X5_Y8_N8
\bell_clk_7|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(23) = DFFEAS((((\bell_clk_7|Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_7|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(23));

-- Location: LC_X4_Y8_N5
\bell_clk_7|Add0~115\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~115_combout\ = \bell_clk_7|cnt\(24) $ ((((\bell_clk_7|Add0~112\))))
-- \bell_clk_7|Add0~117\ = CARRY(((!\bell_clk_7|Add0~112\)) # (!\bell_clk_7|cnt\(24)))
-- \bell_clk_7|Add0~117COUT1_154\ = CARRY(((!\bell_clk_7|Add0~112\)) # (!\bell_clk_7|cnt\(24)))

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
	dataa => \bell_clk_7|cnt\(24),
	cin => \bell_clk_7|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~115_combout\,
	cout0 => \bell_clk_7|Add0~117\,
	cout1 => \bell_clk_7|Add0~117COUT1_154\);

-- Location: LC_X5_Y8_N6
\bell_clk_7|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~7\ = (!\bell_clk_7|cnt\(27) & (!\bell_clk_7|cnt\(25) & (!B7_cnt[24] & !\bell_clk_7|cnt\(26))))
-- \bell_clk_7|cnt\(24) = DFFEAS(\bell_clk_7|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~115_combout\, , , VCC)

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
	dataa => \bell_clk_7|cnt\(27),
	datab => \bell_clk_7|cnt\(25),
	datac => \bell_clk_7|Add0~115_combout\,
	datad => \bell_clk_7|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~7\,
	regout => \bell_clk_7|cnt\(24));

-- Location: LC_X4_Y8_N6
\bell_clk_7|Add0~120\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~120_combout\ = (\bell_clk_7|cnt\(25) $ ((!(!\bell_clk_7|Add0~112\ & \bell_clk_7|Add0~117\) # (\bell_clk_7|Add0~112\ & \bell_clk_7|Add0~117COUT1_154\))))
-- \bell_clk_7|Add0~122\ = CARRY(((\bell_clk_7|cnt\(25) & !\bell_clk_7|Add0~117\)))
-- \bell_clk_7|Add0~122COUT1_155\ = CARRY(((\bell_clk_7|cnt\(25) & !\bell_clk_7|Add0~117COUT1_154\)))

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
	datab => \bell_clk_7|cnt\(25),
	cin => \bell_clk_7|Add0~112\,
	cin0 => \bell_clk_7|Add0~117\,
	cin1 => \bell_clk_7|Add0~117COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~120_combout\,
	cout0 => \bell_clk_7|Add0~122\,
	cout1 => \bell_clk_7|Add0~122COUT1_155\);

-- Location: LC_X5_Y8_N9
\bell_clk_7|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~120_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~120_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(25));

-- Location: LC_X4_Y8_N7
\bell_clk_7|Add0~125\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~125_combout\ = (\bell_clk_7|cnt\(26) $ (((!\bell_clk_7|Add0~112\ & \bell_clk_7|Add0~122\) # (\bell_clk_7|Add0~112\ & \bell_clk_7|Add0~122COUT1_155\))))
-- \bell_clk_7|Add0~127\ = CARRY(((!\bell_clk_7|Add0~122\) # (!\bell_clk_7|cnt\(26))))
-- \bell_clk_7|Add0~127COUT1_156\ = CARRY(((!\bell_clk_7|Add0~122COUT1_155\) # (!\bell_clk_7|cnt\(26))))

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
	datab => \bell_clk_7|cnt\(26),
	cin => \bell_clk_7|Add0~112\,
	cin0 => \bell_clk_7|Add0~122\,
	cin1 => \bell_clk_7|Add0~122COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~125_combout\,
	cout0 => \bell_clk_7|Add0~127\,
	cout1 => \bell_clk_7|Add0~127COUT1_156\);

-- Location: LC_X4_Y8_N9
\bell_clk_7|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~125_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(26));

-- Location: LC_X4_Y8_N8
\bell_clk_7|Add0~130\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Add0~130_combout\ = (((!\bell_clk_7|Add0~112\ & \bell_clk_7|Add0~127\) # (\bell_clk_7|Add0~112\ & \bell_clk_7|Add0~127COUT1_156\) $ (!\bell_clk_7|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \bell_clk_7|cnt\(27),
	cin => \bell_clk_7|Add0~112\,
	cin0 => \bell_clk_7|Add0~127\,
	cin1 => \bell_clk_7|Add0~127COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Add0~130_combout\);

-- Location: LC_X5_Y8_N4
\bell_clk_7|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_7|Add0~130_combout\, , , VCC)

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
	datac => \bell_clk_7|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|cnt\(27));

-- Location: LC_X1_Y8_N3
\bell_clk_7|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~4_combout\ = (\bell_clk_7|Equal0~0\ & (\bell_clk_7|Equal0~3\ & (\bell_clk_7|Equal0~2\ & \bell_clk_7|Equal0~1\)))

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
	dataa => \bell_clk_7|Equal0~0\,
	datab => \bell_clk_7|Equal0~3\,
	datac => \bell_clk_7|Equal0~2\,
	datad => \bell_clk_7|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~4_combout\);

-- Location: LC_X1_Y8_N4
\bell_clk_7|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|Equal0~8_combout\ = (\bell_clk_7|Equal0~6\ & (\bell_clk_7|Equal0~7\ & (\bell_clk_7|Equal0~5\ & \bell_clk_7|Equal0~4_combout\)))

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
	dataa => \bell_clk_7|Equal0~6\,
	datab => \bell_clk_7|Equal0~7\,
	datac => \bell_clk_7|Equal0~5\,
	datad => \bell_clk_7|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_7|Equal0~8_combout\);

-- Location: LC_X1_Y8_N8
\bell_clk_7|clkout\ : maxii_lcell
-- Equation(s):
-- \bell_clk_7|clkout~regout\ = DFFEAS(\bell_clk_7|clkout~regout\ $ ((((\bell_clk_7|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bell_clk_7|clkout~regout\,
	datac => \bell_clk_7|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_7|clkout~regout\);

-- Location: LC_X6_Y9_N2
\bell_clk_4|Add0~30\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~30_combout\ = \bell_clk_1|cnt\(0) $ ((\bell_clk_4|cnt\(1)))
-- \bell_clk_4|Add0~32\ = CARRY((\bell_clk_1|cnt\(0) & (\bell_clk_4|cnt\(1))))
-- \bell_clk_4|Add0~32COUT1_136\ = CARRY((\bell_clk_1|cnt\(0) & (\bell_clk_4|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bell_clk_1|cnt\(0),
	datab => \bell_clk_4|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~30_combout\,
	cout0 => \bell_clk_4|Add0~32\,
	cout1 => \bell_clk_4|Add0~32COUT1_136\);

-- Location: LC_X6_Y8_N8
\bell_clk_4|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(1) = DFFEAS((((\bell_clk_4|Add0~30_combout\ & !\bell_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_4|Add0~30_combout\,
	datad => \bell_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(1));

-- Location: LC_X6_Y9_N3
\bell_clk_4|Add0~25\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~25_combout\ = (\bell_clk_4|cnt\(2) $ ((\bell_clk_4|Add0~32\)))
-- \bell_clk_4|Add0~27\ = CARRY(((!\bell_clk_4|Add0~32\) # (!\bell_clk_4|cnt\(2))))
-- \bell_clk_4|Add0~27COUT1_137\ = CARRY(((!\bell_clk_4|Add0~32COUT1_136\) # (!\bell_clk_4|cnt\(2))))

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
	datab => \bell_clk_4|cnt\(2),
	cin0 => \bell_clk_4|Add0~32\,
	cin1 => \bell_clk_4|Add0~32COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~25_combout\,
	cout0 => \bell_clk_4|Add0~27\,
	cout1 => \bell_clk_4|Add0~27COUT1_137\);

-- Location: LC_X6_Y8_N1
\bell_clk_4|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~25_combout\, , , VCC)

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
	datac => \bell_clk_4|Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(2));

-- Location: LC_X6_Y9_N4
\bell_clk_4|Add0~15\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~15_combout\ = (\bell_clk_4|cnt\(3) $ ((!\bell_clk_4|Add0~27\)))
-- \bell_clk_4|Add0~17\ = CARRY(((\bell_clk_4|cnt\(3) & !\bell_clk_4|Add0~27COUT1_137\)))

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
	datab => \bell_clk_4|cnt\(3),
	cin0 => \bell_clk_4|Add0~27\,
	cin1 => \bell_clk_4|Add0~27COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~15_combout\,
	cout => \bell_clk_4|Add0~17\);

-- Location: LC_X6_Y9_N0
\bell_clk_4|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(3) = DFFEAS((((\bell_clk_4|Add0~15_combout\ & !\bell_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_4|Add0~15_combout\,
	datad => \bell_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(3));

-- Location: LC_X6_Y9_N5
\bell_clk_4|Add0~20\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~20_combout\ = (\bell_clk_4|cnt\(4) $ ((\bell_clk_4|Add0~17\)))
-- \bell_clk_4|Add0~22\ = CARRY(((!\bell_clk_4|Add0~17\) # (!\bell_clk_4|cnt\(4))))
-- \bell_clk_4|Add0~22COUT1_138\ = CARRY(((!\bell_clk_4|Add0~17\) # (!\bell_clk_4|cnt\(4))))

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
	datab => \bell_clk_4|cnt\(4),
	cin => \bell_clk_4|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~20_combout\,
	cout0 => \bell_clk_4|Add0~22\,
	cout1 => \bell_clk_4|Add0~22COUT1_138\);

-- Location: LC_X7_Y8_N4
\bell_clk_4|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~1\ = (!\bell_clk_4|cnt\(1) & (!\bell_clk_4|cnt\(2) & (!B4_cnt[4] & \bell_clk_4|cnt\(3))))
-- \bell_clk_4|cnt\(4) = DFFEAS(\bell_clk_4|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~20_combout\, , , VCC)

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
	dataa => \bell_clk_4|cnt\(1),
	datab => \bell_clk_4|cnt\(2),
	datac => \bell_clk_4|Add0~20_combout\,
	datad => \bell_clk_4|cnt\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~1\,
	regout => \bell_clk_4|cnt\(4));

-- Location: LC_X6_Y9_N6
\bell_clk_4|Add0~10\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~10_combout\ = (\bell_clk_4|cnt\(5) $ ((!(!\bell_clk_4|Add0~17\ & \bell_clk_4|Add0~22\) # (\bell_clk_4|Add0~17\ & \bell_clk_4|Add0~22COUT1_138\))))
-- \bell_clk_4|Add0~12\ = CARRY(((\bell_clk_4|cnt\(5) & !\bell_clk_4|Add0~22\)))
-- \bell_clk_4|Add0~12COUT1_139\ = CARRY(((\bell_clk_4|cnt\(5) & !\bell_clk_4|Add0~22COUT1_138\)))

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
	datab => \bell_clk_4|cnt\(5),
	cin => \bell_clk_4|Add0~17\,
	cin0 => \bell_clk_4|Add0~22\,
	cin1 => \bell_clk_4|Add0~22COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~10_combout\,
	cout0 => \bell_clk_4|Add0~12\,
	cout1 => \bell_clk_4|Add0~12COUT1_139\);

-- Location: LC_X6_Y9_N1
\bell_clk_4|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(5) = DFFEAS((((\bell_clk_4|Add0~10_combout\ & !\bell_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_4|Add0~10_combout\,
	datad => \bell_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(5));

-- Location: LC_X6_Y9_N7
\bell_clk_4|Add0~5\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~5_combout\ = (\bell_clk_4|cnt\(6) $ (((!\bell_clk_4|Add0~17\ & \bell_clk_4|Add0~12\) # (\bell_clk_4|Add0~17\ & \bell_clk_4|Add0~12COUT1_139\))))
-- \bell_clk_4|Add0~7\ = CARRY(((!\bell_clk_4|Add0~12\) # (!\bell_clk_4|cnt\(6))))
-- \bell_clk_4|Add0~7COUT1_140\ = CARRY(((!\bell_clk_4|Add0~12COUT1_139\) # (!\bell_clk_4|cnt\(6))))

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
	datab => \bell_clk_4|cnt\(6),
	cin => \bell_clk_4|Add0~17\,
	cin0 => \bell_clk_4|Add0~12\,
	cin1 => \bell_clk_4|Add0~12COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~5_combout\,
	cout0 => \bell_clk_4|Add0~7\,
	cout1 => \bell_clk_4|Add0~7COUT1_140\);

-- Location: LC_X6_Y8_N5
\bell_clk_4|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(6) = DFFEAS(((!\bell_clk_4|Equal0~8_combout\ & ((\bell_clk_4|Add0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_4|Equal0~8_combout\,
	datad => \bell_clk_4|Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(6));

-- Location: LC_X6_Y9_N8
\bell_clk_4|Add0~0\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~0_combout\ = \bell_clk_4|cnt\(7) $ ((((!(!\bell_clk_4|Add0~17\ & \bell_clk_4|Add0~7\) # (\bell_clk_4|Add0~17\ & \bell_clk_4|Add0~7COUT1_140\)))))
-- \bell_clk_4|Add0~2\ = CARRY((\bell_clk_4|cnt\(7) & ((!\bell_clk_4|Add0~7\))))
-- \bell_clk_4|Add0~2COUT1_141\ = CARRY((\bell_clk_4|cnt\(7) & ((!\bell_clk_4|Add0~7COUT1_140\))))

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
	dataa => \bell_clk_4|cnt\(7),
	cin => \bell_clk_4|Add0~17\,
	cin0 => \bell_clk_4|Add0~7\,
	cin1 => \bell_clk_4|Add0~7COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~0_combout\,
	cout0 => \bell_clk_4|Add0~2\,
	cout1 => \bell_clk_4|Add0~2COUT1_141\);

-- Location: LC_X7_Y8_N1
\bell_clk_4|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(7) = DFFEAS(((!\bell_clk_4|Equal0~8_combout\ & ((\bell_clk_4|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_4|Equal0~8_combout\,
	datad => \bell_clk_4|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(7));

-- Location: LC_X6_Y9_N9
\bell_clk_4|Add0~35\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~35_combout\ = (\bell_clk_4|cnt\(8) $ (((!\bell_clk_4|Add0~17\ & \bell_clk_4|Add0~2\) # (\bell_clk_4|Add0~17\ & \bell_clk_4|Add0~2COUT1_141\))))
-- \bell_clk_4|Add0~37\ = CARRY(((!\bell_clk_4|Add0~2COUT1_141\) # (!\bell_clk_4|cnt\(8))))

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
	datab => \bell_clk_4|cnt\(8),
	cin => \bell_clk_4|Add0~17\,
	cin0 => \bell_clk_4|Add0~2\,
	cin1 => \bell_clk_4|Add0~2COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~35_combout\,
	cout => \bell_clk_4|Add0~37\);

-- Location: LC_X6_Y8_N7
\bell_clk_4|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(8) = DFFEAS((((\bell_clk_4|Add0~35_combout\ & !\bell_clk_4|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_4|Add0~35_combout\,
	datad => \bell_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(8));

-- Location: LC_X7_Y9_N5
\bell_clk_4|Add0~55\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~55_combout\ = (\bell_clk_4|cnt\(14) $ ((\bell_clk_4|Add0~67\)))
-- \bell_clk_4|Add0~57\ = CARRY(((!\bell_clk_4|Add0~67\) # (!\bell_clk_4|cnt\(14))))
-- \bell_clk_4|Add0~57COUT1_146\ = CARRY(((!\bell_clk_4|Add0~67\) # (!\bell_clk_4|cnt\(14))))

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
	datab => \bell_clk_4|cnt\(14),
	cin => \bell_clk_4|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~55_combout\,
	cout0 => \bell_clk_4|Add0~57\,
	cout1 => \bell_clk_4|Add0~57COUT1_146\);

-- Location: LC_X7_Y8_N2
\bell_clk_4|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(14) = DFFEAS(((!\bell_clk_4|Equal0~8_combout\ & ((\bell_clk_4|Add0~55_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_4|Equal0~8_combout\,
	datad => \bell_clk_4|Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(14));

-- Location: LC_X7_Y9_N0
\bell_clk_4|Add0~45\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~45_combout\ = (\bell_clk_4|cnt\(9) $ ((!\bell_clk_4|Add0~37\)))
-- \bell_clk_4|Add0~47\ = CARRY(((\bell_clk_4|cnt\(9) & !\bell_clk_4|Add0~37\)))
-- \bell_clk_4|Add0~47COUT1_142\ = CARRY(((\bell_clk_4|cnt\(9) & !\bell_clk_4|Add0~37\)))

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
	datab => \bell_clk_4|cnt\(9),
	cin => \bell_clk_4|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~45_combout\,
	cout0 => \bell_clk_4|Add0~47\,
	cout1 => \bell_clk_4|Add0~47COUT1_142\);

-- Location: LC_X7_Y8_N0
\bell_clk_4|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~2\ = (\bell_clk_4|cnt\(10) & (!\bell_clk_4|cnt\(11) & (!B4_cnt[9] & \bell_clk_4|cnt\(8))))
-- \bell_clk_4|cnt\(9) = DFFEAS(\bell_clk_4|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~45_combout\, , , VCC)

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
	dataa => \bell_clk_4|cnt\(10),
	datab => \bell_clk_4|cnt\(11),
	datac => \bell_clk_4|Add0~45_combout\,
	datad => \bell_clk_4|cnt\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~2\,
	regout => \bell_clk_4|cnt\(9));

-- Location: LC_X7_Y9_N1
\bell_clk_4|Add0~40\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~40_combout\ = \bell_clk_4|cnt\(10) $ (((((!\bell_clk_4|Add0~37\ & \bell_clk_4|Add0~47\) # (\bell_clk_4|Add0~37\ & \bell_clk_4|Add0~47COUT1_142\)))))
-- \bell_clk_4|Add0~42\ = CARRY(((!\bell_clk_4|Add0~47\)) # (!\bell_clk_4|cnt\(10)))
-- \bell_clk_4|Add0~42COUT1_143\ = CARRY(((!\bell_clk_4|Add0~47COUT1_142\)) # (!\bell_clk_4|cnt\(10)))

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
	dataa => \bell_clk_4|cnt\(10),
	cin => \bell_clk_4|Add0~37\,
	cin0 => \bell_clk_4|Add0~47\,
	cin1 => \bell_clk_4|Add0~47COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~40_combout\,
	cout0 => \bell_clk_4|Add0~42\,
	cout1 => \bell_clk_4|Add0~42COUT1_143\);

-- Location: LC_X7_Y8_N3
\bell_clk_4|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(10) = DFFEAS(((!\bell_clk_4|Equal0~8_combout\ & ((\bell_clk_4|Add0~40_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \bell_clk_4|Equal0~8_combout\,
	datad => \bell_clk_4|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(10));

-- Location: LC_X7_Y9_N2
\bell_clk_4|Add0~50\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~50_combout\ = (\bell_clk_4|cnt\(11) $ ((!(!\bell_clk_4|Add0~37\ & \bell_clk_4|Add0~42\) # (\bell_clk_4|Add0~37\ & \bell_clk_4|Add0~42COUT1_143\))))
-- \bell_clk_4|Add0~52\ = CARRY(((\bell_clk_4|cnt\(11) & !\bell_clk_4|Add0~42\)))
-- \bell_clk_4|Add0~52COUT1_144\ = CARRY(((\bell_clk_4|cnt\(11) & !\bell_clk_4|Add0~42COUT1_143\)))

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
	datab => \bell_clk_4|cnt\(11),
	cin => \bell_clk_4|Add0~37\,
	cin0 => \bell_clk_4|Add0~42\,
	cin1 => \bell_clk_4|Add0~42COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~50_combout\,
	cout0 => \bell_clk_4|Add0~52\,
	cout1 => \bell_clk_4|Add0~52COUT1_144\);

-- Location: LC_X6_Y8_N6
\bell_clk_4|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(11) = DFFEAS((((\bell_clk_4|Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_4|Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(11));

-- Location: LC_X7_Y9_N3
\bell_clk_4|Add0~60\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~60_combout\ = (\bell_clk_4|cnt\(12) $ (((!\bell_clk_4|Add0~37\ & \bell_clk_4|Add0~52\) # (\bell_clk_4|Add0~37\ & \bell_clk_4|Add0~52COUT1_144\))))
-- \bell_clk_4|Add0~62\ = CARRY(((!\bell_clk_4|Add0~52\) # (!\bell_clk_4|cnt\(12))))
-- \bell_clk_4|Add0~62COUT1_145\ = CARRY(((!\bell_clk_4|Add0~52COUT1_144\) # (!\bell_clk_4|cnt\(12))))

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
	datab => \bell_clk_4|cnt\(12),
	cin => \bell_clk_4|Add0~37\,
	cin0 => \bell_clk_4|Add0~52\,
	cin1 => \bell_clk_4|Add0~52COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~60_combout\,
	cout0 => \bell_clk_4|Add0~62\,
	cout1 => \bell_clk_4|Add0~62COUT1_145\);

-- Location: LC_X7_Y9_N6
\bell_clk_4|Add0~70\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~70_combout\ = (\bell_clk_4|cnt\(15) $ ((!(!\bell_clk_4|Add0~67\ & \bell_clk_4|Add0~57\) # (\bell_clk_4|Add0~67\ & \bell_clk_4|Add0~57COUT1_146\))))
-- \bell_clk_4|Add0~72\ = CARRY(((\bell_clk_4|cnt\(15) & !\bell_clk_4|Add0~57\)))
-- \bell_clk_4|Add0~72COUT1_147\ = CARRY(((\bell_clk_4|cnt\(15) & !\bell_clk_4|Add0~57COUT1_146\)))

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
	datab => \bell_clk_4|cnt\(15),
	cin => \bell_clk_4|Add0~67\,
	cin0 => \bell_clk_4|Add0~57\,
	cin1 => \bell_clk_4|Add0~57COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~70_combout\,
	cout0 => \bell_clk_4|Add0~72\,
	cout1 => \bell_clk_4|Add0~72COUT1_147\);

-- Location: LC_X6_Y8_N2
\bell_clk_4|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~70_combout\, , , VCC)

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
	datac => \bell_clk_4|Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(15));

-- Location: LC_X7_Y8_N5
\bell_clk_4|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~3\ = (!\bell_clk_4|cnt\(13) & (\bell_clk_4|cnt\(14) & (!B4_cnt[12] & !\bell_clk_4|cnt\(15))))
-- \bell_clk_4|cnt\(12) = DFFEAS(\bell_clk_4|Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~60_combout\, , , VCC)

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
	dataa => \bell_clk_4|cnt\(13),
	datab => \bell_clk_4|cnt\(14),
	datac => \bell_clk_4|Add0~60_combout\,
	datad => \bell_clk_4|cnt\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~3\,
	regout => \bell_clk_4|cnt\(12));

-- Location: LC_X7_Y9_N4
\bell_clk_4|Add0~65\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~65_combout\ = \bell_clk_4|cnt\(13) $ ((((!(!\bell_clk_4|Add0~37\ & \bell_clk_4|Add0~62\) # (\bell_clk_4|Add0~37\ & \bell_clk_4|Add0~62COUT1_145\)))))
-- \bell_clk_4|Add0~67\ = CARRY((\bell_clk_4|cnt\(13) & ((!\bell_clk_4|Add0~62COUT1_145\))))

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
	dataa => \bell_clk_4|cnt\(13),
	cin => \bell_clk_4|Add0~37\,
	cin0 => \bell_clk_4|Add0~62\,
	cin1 => \bell_clk_4|Add0~62COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~65_combout\,
	cout => \bell_clk_4|Add0~67\);

-- Location: LC_X8_Y8_N7
\bell_clk_4|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~65_combout\, , , VCC)

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
	datac => \bell_clk_4|Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(13));

-- Location: LC_X8_Y9_N0
\bell_clk_4|Add0~90\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~90_combout\ = (\bell_clk_4|cnt\(19) $ ((!\bell_clk_4|Add0~87\)))
-- \bell_clk_4|Add0~92\ = CARRY(((\bell_clk_4|cnt\(19) & !\bell_clk_4|Add0~87\)))
-- \bell_clk_4|Add0~92COUT1_150\ = CARRY(((\bell_clk_4|cnt\(19) & !\bell_clk_4|Add0~87\)))

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
	datab => \bell_clk_4|cnt\(19),
	cin => \bell_clk_4|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~90_combout\,
	cout0 => \bell_clk_4|Add0~92\,
	cout1 => \bell_clk_4|Add0~92COUT1_150\);

-- Location: LC_X9_Y9_N8
\bell_clk_4|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(19) = DFFEAS((((\bell_clk_4|Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_4|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(19));

-- Location: LC_X7_Y9_N7
\bell_clk_4|Add0~75\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~75_combout\ = (\bell_clk_4|cnt\(16) $ (((!\bell_clk_4|Add0~67\ & \bell_clk_4|Add0~72\) # (\bell_clk_4|Add0~67\ & \bell_clk_4|Add0~72COUT1_147\))))
-- \bell_clk_4|Add0~77\ = CARRY(((!\bell_clk_4|Add0~72\) # (!\bell_clk_4|cnt\(16))))
-- \bell_clk_4|Add0~77COUT1_148\ = CARRY(((!\bell_clk_4|Add0~72COUT1_147\) # (!\bell_clk_4|cnt\(16))))

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
	datab => \bell_clk_4|cnt\(16),
	cin => \bell_clk_4|Add0~67\,
	cin0 => \bell_clk_4|Add0~72\,
	cin1 => \bell_clk_4|Add0~72COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~75_combout\,
	cout0 => \bell_clk_4|Add0~77\,
	cout1 => \bell_clk_4|Add0~77COUT1_148\);

-- Location: LC_X9_Y9_N6
\bell_clk_4|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~5\ = (!\bell_clk_4|cnt\(18) & (!\bell_clk_4|cnt\(19) & (!B4_cnt[16] & !\bell_clk_4|cnt\(17))))
-- \bell_clk_4|cnt\(16) = DFFEAS(\bell_clk_4|Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~75_combout\, , , VCC)

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
	dataa => \bell_clk_4|cnt\(18),
	datab => \bell_clk_4|cnt\(19),
	datac => \bell_clk_4|Add0~75_combout\,
	datad => \bell_clk_4|cnt\(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~5\,
	regout => \bell_clk_4|cnt\(16));

-- Location: LC_X7_Y9_N8
\bell_clk_4|Add0~80\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~80_combout\ = (\bell_clk_4|cnt\(17) $ ((!(!\bell_clk_4|Add0~67\ & \bell_clk_4|Add0~77\) # (\bell_clk_4|Add0~67\ & \bell_clk_4|Add0~77COUT1_148\))))
-- \bell_clk_4|Add0~82\ = CARRY(((\bell_clk_4|cnt\(17) & !\bell_clk_4|Add0~77\)))
-- \bell_clk_4|Add0~82COUT1_149\ = CARRY(((\bell_clk_4|cnt\(17) & !\bell_clk_4|Add0~77COUT1_148\)))

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
	datab => \bell_clk_4|cnt\(17),
	cin => \bell_clk_4|Add0~67\,
	cin0 => \bell_clk_4|Add0~77\,
	cin1 => \bell_clk_4|Add0~77COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~80_combout\,
	cout0 => \bell_clk_4|Add0~82\,
	cout1 => \bell_clk_4|Add0~82COUT1_149\);

-- Location: LC_X9_Y9_N3
\bell_clk_4|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(17) = DFFEAS((((\bell_clk_4|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_4|Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(17));

-- Location: LC_X7_Y9_N9
\bell_clk_4|Add0~85\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~85_combout\ = (\bell_clk_4|cnt\(18) $ (((!\bell_clk_4|Add0~67\ & \bell_clk_4|Add0~82\) # (\bell_clk_4|Add0~67\ & \bell_clk_4|Add0~82COUT1_149\))))
-- \bell_clk_4|Add0~87\ = CARRY(((!\bell_clk_4|Add0~82COUT1_149\) # (!\bell_clk_4|cnt\(18))))

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
	datab => \bell_clk_4|cnt\(18),
	cin => \bell_clk_4|Add0~67\,
	cin0 => \bell_clk_4|Add0~82\,
	cin1 => \bell_clk_4|Add0~82COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~85_combout\,
	cout => \bell_clk_4|Add0~87\);

-- Location: LC_X9_Y9_N5
\bell_clk_4|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~85_combout\, , , VCC)

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
	datac => \bell_clk_4|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(18));

-- Location: LC_X8_Y9_N1
\bell_clk_4|Add0~95\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~95_combout\ = \bell_clk_4|cnt\(20) $ (((((!\bell_clk_4|Add0~87\ & \bell_clk_4|Add0~92\) # (\bell_clk_4|Add0~87\ & \bell_clk_4|Add0~92COUT1_150\)))))
-- \bell_clk_4|Add0~97\ = CARRY(((!\bell_clk_4|Add0~92\)) # (!\bell_clk_4|cnt\(20)))
-- \bell_clk_4|Add0~97COUT1_151\ = CARRY(((!\bell_clk_4|Add0~92COUT1_150\)) # (!\bell_clk_4|cnt\(20)))

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
	dataa => \bell_clk_4|cnt\(20),
	cin => \bell_clk_4|Add0~87\,
	cin0 => \bell_clk_4|Add0~92\,
	cin1 => \bell_clk_4|Add0~92COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~95_combout\,
	cout0 => \bell_clk_4|Add0~97\,
	cout1 => \bell_clk_4|Add0~97COUT1_151\);

-- Location: LC_X8_Y8_N3
\bell_clk_4|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~6\ = (!\bell_clk_4|cnt\(23) & (!\bell_clk_4|cnt\(22) & (!B4_cnt[20] & !\bell_clk_4|cnt\(21))))
-- \bell_clk_4|cnt\(20) = DFFEAS(\bell_clk_4|Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~95_combout\, , , VCC)

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
	dataa => \bell_clk_4|cnt\(23),
	datab => \bell_clk_4|cnt\(22),
	datac => \bell_clk_4|Add0~95_combout\,
	datad => \bell_clk_4|cnt\(21),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~6\,
	regout => \bell_clk_4|cnt\(20));

-- Location: LC_X8_Y9_N2
\bell_clk_4|Add0~100\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~100_combout\ = (\bell_clk_4|cnt\(21) $ ((!(!\bell_clk_4|Add0~87\ & \bell_clk_4|Add0~97\) # (\bell_clk_4|Add0~87\ & \bell_clk_4|Add0~97COUT1_151\))))
-- \bell_clk_4|Add0~102\ = CARRY(((\bell_clk_4|cnt\(21) & !\bell_clk_4|Add0~97\)))
-- \bell_clk_4|Add0~102COUT1_152\ = CARRY(((\bell_clk_4|cnt\(21) & !\bell_clk_4|Add0~97COUT1_151\)))

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
	datab => \bell_clk_4|cnt\(21),
	cin => \bell_clk_4|Add0~87\,
	cin0 => \bell_clk_4|Add0~97\,
	cin1 => \bell_clk_4|Add0~97COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~100_combout\,
	cout0 => \bell_clk_4|Add0~102\,
	cout1 => \bell_clk_4|Add0~102COUT1_152\);

-- Location: LC_X9_Y9_N2
\bell_clk_4|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(21) = DFFEAS((((\bell_clk_4|Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_4|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(21));

-- Location: LC_X8_Y9_N3
\bell_clk_4|Add0~105\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~105_combout\ = (\bell_clk_4|cnt\(22) $ (((!\bell_clk_4|Add0~87\ & \bell_clk_4|Add0~102\) # (\bell_clk_4|Add0~87\ & \bell_clk_4|Add0~102COUT1_152\))))
-- \bell_clk_4|Add0~107\ = CARRY(((!\bell_clk_4|Add0~102\) # (!\bell_clk_4|cnt\(22))))
-- \bell_clk_4|Add0~107COUT1_153\ = CARRY(((!\bell_clk_4|Add0~102COUT1_152\) # (!\bell_clk_4|cnt\(22))))

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
	datab => \bell_clk_4|cnt\(22),
	cin => \bell_clk_4|Add0~87\,
	cin0 => \bell_clk_4|Add0~102\,
	cin1 => \bell_clk_4|Add0~102COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~105_combout\,
	cout0 => \bell_clk_4|Add0~107\,
	cout1 => \bell_clk_4|Add0~107COUT1_153\);

-- Location: LC_X8_Y8_N5
\bell_clk_4|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(22) = DFFEAS((((\bell_clk_4|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_4|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(22));

-- Location: LC_X8_Y9_N4
\bell_clk_4|Add0~110\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~110_combout\ = \bell_clk_4|cnt\(23) $ ((((!(!\bell_clk_4|Add0~87\ & \bell_clk_4|Add0~107\) # (\bell_clk_4|Add0~87\ & \bell_clk_4|Add0~107COUT1_153\)))))
-- \bell_clk_4|Add0~112\ = CARRY((\bell_clk_4|cnt\(23) & ((!\bell_clk_4|Add0~107COUT1_153\))))

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
	dataa => \bell_clk_4|cnt\(23),
	cin => \bell_clk_4|Add0~87\,
	cin0 => \bell_clk_4|Add0~107\,
	cin1 => \bell_clk_4|Add0~107COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~110_combout\,
	cout => \bell_clk_4|Add0~112\);

-- Location: LC_X9_Y9_N7
\bell_clk_4|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(23) = DFFEAS((((\bell_clk_4|Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \bell_clk_4|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(23));

-- Location: LC_X8_Y9_N5
\bell_clk_4|Add0~115\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~115_combout\ = \bell_clk_4|cnt\(24) $ ((((\bell_clk_4|Add0~112\))))
-- \bell_clk_4|Add0~117\ = CARRY(((!\bell_clk_4|Add0~112\)) # (!\bell_clk_4|cnt\(24)))
-- \bell_clk_4|Add0~117COUT1_154\ = CARRY(((!\bell_clk_4|Add0~112\)) # (!\bell_clk_4|cnt\(24)))

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
	dataa => \bell_clk_4|cnt\(24),
	cin => \bell_clk_4|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~115_combout\,
	cout0 => \bell_clk_4|Add0~117\,
	cout1 => \bell_clk_4|Add0~117COUT1_154\);

-- Location: LC_X8_Y9_N6
\bell_clk_4|Add0~120\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~120_combout\ = (\bell_clk_4|cnt\(25) $ ((!(!\bell_clk_4|Add0~112\ & \bell_clk_4|Add0~117\) # (\bell_clk_4|Add0~112\ & \bell_clk_4|Add0~117COUT1_154\))))
-- \bell_clk_4|Add0~122\ = CARRY(((\bell_clk_4|cnt\(25) & !\bell_clk_4|Add0~117\)))
-- \bell_clk_4|Add0~122COUT1_155\ = CARRY(((\bell_clk_4|cnt\(25) & !\bell_clk_4|Add0~117COUT1_154\)))

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
	datab => \bell_clk_4|cnt\(25),
	cin => \bell_clk_4|Add0~112\,
	cin0 => \bell_clk_4|Add0~117\,
	cin1 => \bell_clk_4|Add0~117COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~120_combout\,
	cout0 => \bell_clk_4|Add0~122\,
	cout1 => \bell_clk_4|Add0~122COUT1_155\);

-- Location: LC_X8_Y9_N7
\bell_clk_4|Add0~125\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~125_combout\ = (\bell_clk_4|cnt\(26) $ (((!\bell_clk_4|Add0~112\ & \bell_clk_4|Add0~122\) # (\bell_clk_4|Add0~112\ & \bell_clk_4|Add0~122COUT1_155\))))
-- \bell_clk_4|Add0~127\ = CARRY(((!\bell_clk_4|Add0~122\) # (!\bell_clk_4|cnt\(26))))
-- \bell_clk_4|Add0~127COUT1_156\ = CARRY(((!\bell_clk_4|Add0~122COUT1_155\) # (!\bell_clk_4|cnt\(26))))

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
	datab => \bell_clk_4|cnt\(26),
	cin => \bell_clk_4|Add0~112\,
	cin0 => \bell_clk_4|Add0~122\,
	cin1 => \bell_clk_4|Add0~122COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~125_combout\,
	cout0 => \bell_clk_4|Add0~127\,
	cout1 => \bell_clk_4|Add0~127COUT1_156\);

-- Location: LC_X8_Y9_N9
\bell_clk_4|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~125_combout\, , , VCC)

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
	datac => \bell_clk_4|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(26));

-- Location: LC_X8_Y9_N8
\bell_clk_4|Add0~130\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Add0~130_combout\ = (\bell_clk_4|cnt\(27) $ ((!(!\bell_clk_4|Add0~112\ & \bell_clk_4|Add0~127\) # (\bell_clk_4|Add0~112\ & \bell_clk_4|Add0~127COUT1_156\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bell_clk_4|cnt\(27),
	cin => \bell_clk_4|Add0~112\,
	cin0 => \bell_clk_4|Add0~127\,
	cin1 => \bell_clk_4|Add0~127COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Add0~130_combout\);

-- Location: LC_X9_Y9_N9
\bell_clk_4|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~130_combout\, , , VCC)

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
	datac => \bell_clk_4|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(27));

-- Location: LC_X9_Y9_N0
\bell_clk_4|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~7\ = (!\bell_clk_4|cnt\(25) & (!\bell_clk_4|cnt\(27) & (!B4_cnt[24] & !\bell_clk_4|cnt\(26))))
-- \bell_clk_4|cnt\(24) = DFFEAS(\bell_clk_4|Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~115_combout\, , , VCC)

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
	dataa => \bell_clk_4|cnt\(25),
	datab => \bell_clk_4|cnt\(27),
	datac => \bell_clk_4|Add0~115_combout\,
	datad => \bell_clk_4|cnt\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~7\,
	regout => \bell_clk_4|cnt\(24));

-- Location: LC_X9_Y9_N4
\bell_clk_4|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|cnt\(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \bell_clk_4|Add0~120_combout\, , , VCC)

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
	datac => \bell_clk_4|Add0~120_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|cnt\(25));

-- Location: LC_X7_Y8_N9
\bell_clk_4|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~0_combout\ = (\bell_clk_4|cnt\(6) & (\bell_clk_4|cnt\(7) & (\bell_clk_1|cnt\(0) & \bell_clk_4|cnt\(5))))

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
	dataa => \bell_clk_4|cnt\(6),
	datab => \bell_clk_4|cnt\(7),
	datac => \bell_clk_1|cnt\(0),
	datad => \bell_clk_4|cnt\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~0_combout\);

-- Location: LC_X7_Y8_N7
\bell_clk_4|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~4_combout\ = (\bell_clk_4|Equal0~3\ & (\bell_clk_4|Equal0~2\ & (\bell_clk_4|Equal0~1\ & \bell_clk_4|Equal0~0_combout\)))

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
	dataa => \bell_clk_4|Equal0~3\,
	datab => \bell_clk_4|Equal0~2\,
	datac => \bell_clk_4|Equal0~1\,
	datad => \bell_clk_4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~4_combout\);

-- Location: LC_X7_Y8_N8
\bell_clk_4|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|Equal0~8_combout\ = (\bell_clk_4|Equal0~6\ & (\bell_clk_4|Equal0~5\ & (\bell_clk_4|Equal0~7\ & \bell_clk_4|Equal0~4_combout\)))

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
	dataa => \bell_clk_4|Equal0~6\,
	datab => \bell_clk_4|Equal0~5\,
	datac => \bell_clk_4|Equal0~7\,
	datad => \bell_clk_4|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bell_clk_4|Equal0~8_combout\);

-- Location: LC_X7_Y8_N6
\bell_clk_4|clkout\ : maxii_lcell
-- Equation(s):
-- \bell_clk_4|clkout~regout\ = DFFEAS(\bell_clk_4|clkout~regout\ $ ((((\bell_clk_4|Equal0~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \bell_clk_4|clkout~regout\,
	datad => \bell_clk_4|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_4|clkout~regout\);

-- Location: LC_X4_Y6_N7
\bell_clk_6|clkout\ : maxii_lcell
-- Equation(s):
-- \bell_clk_6|clkout~regout\ = DFFEAS(((\bell_clk_6|clkout~regout\ $ (\bell_clk_6|Equal0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \bell_clk_6|clkout~regout\,
	datad => \bell_clk_6|Equal0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bell_clk_6|clkout~regout\);

-- Location: LC_X10_Y6_N1
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\bell_code~combout\(1) & (((\bell_clk_6|clkout~regout\) # (\bell_code~combout\(0))))) # (!\bell_code~combout\(1) & (\bell_clk_4|clkout~regout\ & ((!\bell_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bell_code~combout\(1),
	datab => \bell_clk_4|clkout~regout\,
	datac => \bell_clk_6|clkout~regout\,
	datad => \bell_code~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X10_Y6_N2
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (\bell_code~combout\(0) & ((\Mux0~0_combout\ & ((\bell_clk_7|clkout~regout\))) # (!\Mux0~0_combout\ & (\bell_clk_5|clkout~regout\)))) # (!\bell_code~combout\(0) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bell_clk_5|clkout~regout\,
	datab => \bell_code~combout\(0),
	datac => \bell_clk_7|clkout~regout\,
	datad => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X10_Y6_N9
\Mux0~4\ : maxii_lcell
-- Equation(s):
-- \Mux0~4_combout\ = ((\bell_code~combout\(2) & ((\Mux0~1_combout\))) # (!\bell_code~combout\(2) & (\Mux0~3_combout\)))

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
	dataa => \Mux0~3_combout\,
	datac => \bell_code~combout\(2),
	datad => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~4_combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\frequncy_bell~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~4_combout\,
	oe => VCC,
	padio => ww_frequncy_bell);
END structure;


