-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/14/2017 22:45:04"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab5_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab5_top;

-- Design Ports Information
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab5_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GEN1|strobe~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GEN1|Add0~0_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~19_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \GEN1|Add0~1\ : std_logic;
SIGNAL \GEN1|Add0~2_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~18_combout\ : std_logic;
SIGNAL \GEN1|Add0~3\ : std_logic;
SIGNAL \GEN1|Add0~4_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~17_combout\ : std_logic;
SIGNAL \GEN1|Add0~5\ : std_logic;
SIGNAL \GEN1|Add0~6_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~16_combout\ : std_logic;
SIGNAL \GEN1|Equal0~9_combout\ : std_logic;
SIGNAL \GEN1|Add0~7\ : std_logic;
SIGNAL \GEN1|Add0~8_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~15_combout\ : std_logic;
SIGNAL \GEN1|Add0~9\ : std_logic;
SIGNAL \GEN1|Add0~10_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~14_combout\ : std_logic;
SIGNAL \GEN1|Add0~11\ : std_logic;
SIGNAL \GEN1|Add0~12_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[6]~31_combout\ : std_logic;
SIGNAL \GEN1|Add0~13\ : std_logic;
SIGNAL \GEN1|Add0~14_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~13_combout\ : std_logic;
SIGNAL \GEN1|Add0~15\ : std_logic;
SIGNAL \GEN1|Add0~16_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~12_combout\ : std_logic;
SIGNAL \GEN1|Add0~17\ : std_logic;
SIGNAL \GEN1|Add0~18_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~11_combout\ : std_logic;
SIGNAL \GEN1|Add0~19\ : std_logic;
SIGNAL \GEN1|Add0~20_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~10_combout\ : std_logic;
SIGNAL \GEN1|Add0~21\ : std_logic;
SIGNAL \GEN1|Add0~22_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[11]~30_combout\ : std_logic;
SIGNAL \GEN1|Add0~23\ : std_logic;
SIGNAL \GEN1|Add0~24_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[12]~29_combout\ : std_logic;
SIGNAL \GEN1|Add0~25\ : std_logic;
SIGNAL \GEN1|Add0~26_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[13]~28_combout\ : std_logic;
SIGNAL \GEN1|Add0~27\ : std_logic;
SIGNAL \GEN1|Add0~28_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[14]~27_combout\ : std_logic;
SIGNAL \GEN1|Add0~29\ : std_logic;
SIGNAL \GEN1|Add0~30_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~9_combout\ : std_logic;
SIGNAL \GEN1|Add0~31\ : std_logic;
SIGNAL \GEN1|Add0~32_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[16]~26_combout\ : std_logic;
SIGNAL \GEN1|Add0~33\ : std_logic;
SIGNAL \GEN1|Add0~34_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~8_combout\ : std_logic;
SIGNAL \GEN1|Add0~35\ : std_logic;
SIGNAL \GEN1|Add0~36_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[18]~25_combout\ : std_logic;
SIGNAL \GEN1|Add0~37\ : std_logic;
SIGNAL \GEN1|Add0~38_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[19]~24_combout\ : std_logic;
SIGNAL \GEN1|Add0~39\ : std_logic;
SIGNAL \GEN1|Add0~40_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[20]~23_combout\ : std_logic;
SIGNAL \GEN1|Add0~41\ : std_logic;
SIGNAL \GEN1|Add0~42_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[21]~22_combout\ : std_logic;
SIGNAL \GEN1|Add0~43\ : std_logic;
SIGNAL \GEN1|Add0~44_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[22]~21_combout\ : std_logic;
SIGNAL \GEN1|Add0~45\ : std_logic;
SIGNAL \GEN1|Add0~46_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~7_combout\ : std_logic;
SIGNAL \GEN1|Equal0~2_combout\ : std_logic;
SIGNAL \GEN1|Add0~47\ : std_logic;
SIGNAL \GEN1|Add0~48_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[24]~20_combout\ : std_logic;
SIGNAL \GEN1|Add0~49\ : std_logic;
SIGNAL \GEN1|Add0~50_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~6_combout\ : std_logic;
SIGNAL \GEN1|Add0~51\ : std_logic;
SIGNAL \GEN1|Add0~52_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~5_combout\ : std_logic;
SIGNAL \GEN1|Add0~53\ : std_logic;
SIGNAL \GEN1|Add0~54_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~4_combout\ : std_logic;
SIGNAL \GEN1|Equal0~1_combout\ : std_logic;
SIGNAL \GEN1|Add0~55\ : std_logic;
SIGNAL \GEN1|Add0~56_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~3_combout\ : std_logic;
SIGNAL \GEN1|Add0~57\ : std_logic;
SIGNAL \GEN1|Add0~58_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~2_combout\ : std_logic;
SIGNAL \GEN1|Add0~59\ : std_logic;
SIGNAL \GEN1|Add0~60_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~1_combout\ : std_logic;
SIGNAL \GEN1|Add0~61\ : std_logic;
SIGNAL \GEN1|Add0~62_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~0_combout\ : std_logic;
SIGNAL \GEN1|Equal0~0_combout\ : std_logic;
SIGNAL \GEN1|Equal0~3_combout\ : std_logic;
SIGNAL \GEN1|Equal0~4_combout\ : std_logic;
SIGNAL \GEN1|Equal0~6_combout\ : std_logic;
SIGNAL \GEN1|Equal0~5_combout\ : std_logic;
SIGNAL \GEN1|Equal0~7_combout\ : std_logic;
SIGNAL \GEN1|Equal0~8_combout\ : std_logic;
SIGNAL \GEN1|Equal0~10_combout\ : std_logic;
SIGNAL \GEN1|terminal_count~q\ : std_logic;
SIGNAL \GEN1|strobe~0_combout\ : std_logic;
SIGNAL \GEN1|strobe~feeder_combout\ : std_logic;
SIGNAL \GEN1|strobe~q\ : std_logic;
SIGNAL \GEN1|strobe~clkctrl_outclk\ : std_logic;
SIGNAL \state_machine|current_state.S5~q\ : std_logic;
SIGNAL \state_machine|current_state.S6~q\ : std_logic;
SIGNAL \state_machine|current_state.S7~q\ : std_logic;
SIGNAL \state_machine|current_state.S8~feeder_combout\ : std_logic;
SIGNAL \state_machine|current_state.S8~q\ : std_logic;
SIGNAL \state_machine|current_state.S9~q\ : std_logic;
SIGNAL \state_machine|current_state.S10~q\ : std_logic;
SIGNAL \state_machine|current_state.S11~feeder_combout\ : std_logic;
SIGNAL \state_machine|current_state.S11~q\ : std_logic;
SIGNAL \state_machine|current_state.S12~q\ : std_logic;
SIGNAL \state_machine|current_state.S13~q\ : std_logic;
SIGNAL \state_machine|current_state.S14~feeder_combout\ : std_logic;
SIGNAL \state_machine|current_state.S14~q\ : std_logic;
SIGNAL \state_machine|current_state.s15~q\ : std_logic;
SIGNAL \state_machine|current_state.S0~0_combout\ : std_logic;
SIGNAL \state_machine|current_state.S0~q\ : std_logic;
SIGNAL \state_machine|current_state.S1~0_combout\ : std_logic;
SIGNAL \state_machine|current_state.S1~q\ : std_logic;
SIGNAL \state_machine|current_state.S2~feeder_combout\ : std_logic;
SIGNAL \state_machine|current_state.S2~q\ : std_logic;
SIGNAL \state_machine|current_state.S3~feeder_combout\ : std_logic;
SIGNAL \state_machine|current_state.S3~q\ : std_logic;
SIGNAL \state_machine|current_state.S4~feeder_combout\ : std_logic;
SIGNAL \state_machine|current_state.S4~q\ : std_logic;
SIGNAL \left_input[0]~3_combout\ : std_logic;
SIGNAL \left_input[0]~2_combout\ : std_logic;
SIGNAL \state_machine|east_west[0]~13_combout\ : std_logic;
SIGNAL \state_machine|east_west[0]~14_combout\ : std_logic;
SIGNAL \state_machine|east_west[0]~15_combout\ : std_logic;
SIGNAL \state_machine|east_west[3]~16_combout\ : std_logic;
SIGNAL \GEN2|Add0~0_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~23_combout\ : std_logic;
SIGNAL \GEN2|Add0~1\ : std_logic;
SIGNAL \GEN2|Add0~2_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~22_combout\ : std_logic;
SIGNAL \GEN2|Add0~3\ : std_logic;
SIGNAL \GEN2|Add0~4_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~21_combout\ : std_logic;
SIGNAL \GEN2|Add0~5\ : std_logic;
SIGNAL \GEN2|Add0~6_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~20_combout\ : std_logic;
SIGNAL \GEN2|Equal0~9_combout\ : std_logic;
SIGNAL \GEN2|Add0~7\ : std_logic;
SIGNAL \GEN2|Add0~8_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~19_combout\ : std_logic;
SIGNAL \GEN2|Add0~9\ : std_logic;
SIGNAL \GEN2|Add0~10_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~18_combout\ : std_logic;
SIGNAL \GEN2|Add0~11\ : std_logic;
SIGNAL \GEN2|Add0~12_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[6]~31_combout\ : std_logic;
SIGNAL \GEN2|Add0~13\ : std_logic;
SIGNAL \GEN2|Add0~14_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~17_combout\ : std_logic;
SIGNAL \GEN2|Add0~15\ : std_logic;
SIGNAL \GEN2|Add0~16_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[8]~30_combout\ : std_logic;
SIGNAL \GEN2|Add0~17\ : std_logic;
SIGNAL \GEN2|Add0~18_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[9]~29_combout\ : std_logic;
SIGNAL \GEN2|Add0~19\ : std_logic;
SIGNAL \GEN2|Add0~20_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~14_combout\ : std_logic;
SIGNAL \GEN2|Add0~21\ : std_logic;
SIGNAL \GEN2|Add0~22_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[11]~28_combout\ : std_logic;
SIGNAL \GEN2|Add0~23\ : std_logic;
SIGNAL \GEN2|Add0~24_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~16_combout\ : std_logic;
SIGNAL \GEN2|Add0~25\ : std_logic;
SIGNAL \GEN2|Add0~26_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~15_combout\ : std_logic;
SIGNAL \GEN2|Equal0~6_combout\ : std_logic;
SIGNAL \GEN2|Add0~27\ : std_logic;
SIGNAL \GEN2|Add0~28_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[14]~27_combout\ : std_logic;
SIGNAL \GEN2|Add0~29\ : std_logic;
SIGNAL \GEN2|Add0~30_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~13_combout\ : std_logic;
SIGNAL \GEN2|Equal0~5_combout\ : std_logic;
SIGNAL \GEN2|Equal0~7_combout\ : std_logic;
SIGNAL \GEN2|Equal0~8_combout\ : std_logic;
SIGNAL \GEN2|Add0~31\ : std_logic;
SIGNAL \GEN2|Add0~32_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~12_combout\ : std_logic;
SIGNAL \GEN2|Add0~33\ : std_logic;
SIGNAL \GEN2|Add0~34_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~11_combout\ : std_logic;
SIGNAL \GEN2|Add0~35\ : std_logic;
SIGNAL \GEN2|Add0~36_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[18]~26_combout\ : std_logic;
SIGNAL \GEN2|Add0~37\ : std_logic;
SIGNAL \GEN2|Add0~38_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[19]~25_combout\ : std_logic;
SIGNAL \GEN2|Equal0~3_combout\ : std_logic;
SIGNAL \GEN2|Add0~39\ : std_logic;
SIGNAL \GEN2|Add0~40_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~10_combout\ : std_logic;
SIGNAL \GEN2|Add0~41\ : std_logic;
SIGNAL \GEN2|Add0~42_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~9_combout\ : std_logic;
SIGNAL \GEN2|Add0~43\ : std_logic;
SIGNAL \GEN2|Add0~44_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[22]~24_combout\ : std_logic;
SIGNAL \GEN2|Add0~45\ : std_logic;
SIGNAL \GEN2|Add0~46_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~8_combout\ : std_logic;
SIGNAL \GEN2|Add0~47\ : std_logic;
SIGNAL \GEN2|Add0~48_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~7_combout\ : std_logic;
SIGNAL \GEN2|Add0~49\ : std_logic;
SIGNAL \GEN2|Add0~50_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~6_combout\ : std_logic;
SIGNAL \GEN2|Add0~51\ : std_logic;
SIGNAL \GEN2|Add0~52_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~5_combout\ : std_logic;
SIGNAL \GEN2|Add0~53\ : std_logic;
SIGNAL \GEN2|Add0~54_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~4_combout\ : std_logic;
SIGNAL \GEN2|Add0~55\ : std_logic;
SIGNAL \GEN2|Add0~56_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~3_combout\ : std_logic;
SIGNAL \GEN2|Add0~57\ : std_logic;
SIGNAL \GEN2|Add0~58_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~2_combout\ : std_logic;
SIGNAL \GEN2|Add0~59\ : std_logic;
SIGNAL \GEN2|Add0~60_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~1_combout\ : std_logic;
SIGNAL \GEN2|Add0~61\ : std_logic;
SIGNAL \GEN2|Add0~62_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~0_combout\ : std_logic;
SIGNAL \GEN2|Equal0~0_combout\ : std_logic;
SIGNAL \GEN2|Equal0~2_combout\ : std_logic;
SIGNAL \GEN2|Equal0~1_combout\ : std_logic;
SIGNAL \GEN2|Equal0~4_combout\ : std_logic;
SIGNAL \GEN2|Equal0~10_combout\ : std_logic;
SIGNAL \GEN2|terminal_count~q\ : std_logic;
SIGNAL \GEN2|strobe~0_combout\ : std_logic;
SIGNAL \GEN2|strobe~q\ : std_logic;
SIGNAL \right_input[0]~0_combout\ : std_logic;
SIGNAL \Display_driver|DOUT_TEMP[6]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \Display_driver|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \state_machine|north_south[3]~3_combout\ : std_logic;
SIGNAL \left_input[0]~4_combout\ : std_logic;
SIGNAL \Display_driver|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \Display_driver|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \Display_driver|DOUT[3]~1_combout\ : std_logic;
SIGNAL \right_input[0]~1_combout\ : std_logic;
SIGNAL \Display_driver|DOUT[0]~0_combout\ : std_logic;
SIGNAL \Display_driver|DOUT[0]~2_combout\ : std_logic;
SIGNAL \Display_driver|DOUT[3]~3_combout\ : std_logic;
SIGNAL \Display_driver|DOUT[3]~4_combout\ : std_logic;
SIGNAL \GEN2|bin_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \GEN1|bin_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Display_driver|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\GEN1|strobe~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GEN1|strobe~q\);
\Display_driver|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \Display_driver|clk_proc:COUNT[10]~q\;

-- Location: LCCOMB_X11_Y23_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \Display_driver|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN2|strobe~q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN1|strobe~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_input[0]~4_combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine|north_south[3]~3_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine|east_west[0]~13_combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_driver|DOUT[0]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_driver|DOUT[3]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_driver|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_driver|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y6_N0
\GEN1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~0_combout\ = \GEN1|bin_counter\(0) $ (VCC)
-- \GEN1|Add0~1\ = CARRY(\GEN1|bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(0),
	datad => VCC,
	combout => \GEN1|Add0~0_combout\,
	cout => \GEN1|Add0~1\);

-- Location: LCCOMB_X9_Y6_N28
\GEN1|bin_counter~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~19_combout\ = (\GEN1|Add0~0_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~0_combout\,
	datad => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~19_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X9_Y6_N29
\GEN1|bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(0));

-- Location: LCCOMB_X10_Y6_N2
\GEN1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~2_combout\ = (\GEN1|bin_counter\(1) & (\GEN1|Add0~1\ & VCC)) # (!\GEN1|bin_counter\(1) & (!\GEN1|Add0~1\))
-- \GEN1|Add0~3\ = CARRY((!\GEN1|bin_counter\(1) & !\GEN1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(1),
	datad => VCC,
	cin => \GEN1|Add0~1\,
	combout => \GEN1|Add0~2_combout\,
	cout => \GEN1|Add0~3\);

-- Location: LCCOMB_X9_Y6_N26
\GEN1|bin_counter~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~18_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~2_combout\,
	combout => \GEN1|bin_counter~18_combout\);

-- Location: FF_X9_Y6_N27
\GEN1|bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(1));

-- Location: LCCOMB_X10_Y6_N4
\GEN1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~4_combout\ = (\GEN1|bin_counter\(2) & ((GND) # (!\GEN1|Add0~3\))) # (!\GEN1|bin_counter\(2) & (\GEN1|Add0~3\ $ (GND)))
-- \GEN1|Add0~5\ = CARRY((\GEN1|bin_counter\(2)) # (!\GEN1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(2),
	datad => VCC,
	cin => \GEN1|Add0~3\,
	combout => \GEN1|Add0~4_combout\,
	cout => \GEN1|Add0~5\);

-- Location: LCCOMB_X9_Y6_N16
\GEN1|bin_counter~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~17_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~4_combout\,
	combout => \GEN1|bin_counter~17_combout\);

-- Location: FF_X9_Y6_N17
\GEN1|bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(2));

-- Location: LCCOMB_X10_Y6_N6
\GEN1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~6_combout\ = (\GEN1|bin_counter\(3) & (\GEN1|Add0~5\ & VCC)) # (!\GEN1|bin_counter\(3) & (!\GEN1|Add0~5\))
-- \GEN1|Add0~7\ = CARRY((!\GEN1|bin_counter\(3) & !\GEN1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(3),
	datad => VCC,
	cin => \GEN1|Add0~5\,
	combout => \GEN1|Add0~6_combout\,
	cout => \GEN1|Add0~7\);

-- Location: LCCOMB_X9_Y6_N6
\GEN1|bin_counter~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~16_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~6_combout\,
	combout => \GEN1|bin_counter~16_combout\);

-- Location: FF_X9_Y6_N7
\GEN1|bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(3));

-- Location: LCCOMB_X9_Y6_N22
\GEN1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~9_combout\ = (!\GEN1|bin_counter\(2) & (!\GEN1|bin_counter\(0) & (!\GEN1|bin_counter\(1) & !\GEN1|bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(2),
	datab => \GEN1|bin_counter\(0),
	datac => \GEN1|bin_counter\(1),
	datad => \GEN1|bin_counter\(3),
	combout => \GEN1|Equal0~9_combout\);

-- Location: LCCOMB_X10_Y6_N8
\GEN1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~8_combout\ = (\GEN1|bin_counter\(4) & ((GND) # (!\GEN1|Add0~7\))) # (!\GEN1|bin_counter\(4) & (\GEN1|Add0~7\ $ (GND)))
-- \GEN1|Add0~9\ = CARRY((\GEN1|bin_counter\(4)) # (!\GEN1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(4),
	datad => VCC,
	cin => \GEN1|Add0~7\,
	combout => \GEN1|Add0~8_combout\,
	cout => \GEN1|Add0~9\);

-- Location: LCCOMB_X10_Y2_N26
\GEN1|bin_counter~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~15_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~8_combout\,
	combout => \GEN1|bin_counter~15_combout\);

-- Location: FF_X10_Y2_N27
\GEN1|bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(4));

-- Location: LCCOMB_X10_Y6_N10
\GEN1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~10_combout\ = (\GEN1|bin_counter\(5) & (\GEN1|Add0~9\ & VCC)) # (!\GEN1|bin_counter\(5) & (!\GEN1|Add0~9\))
-- \GEN1|Add0~11\ = CARRY((!\GEN1|bin_counter\(5) & !\GEN1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(5),
	datad => VCC,
	cin => \GEN1|Add0~9\,
	combout => \GEN1|Add0~10_combout\,
	cout => \GEN1|Add0~11\);

-- Location: LCCOMB_X10_Y2_N16
\GEN1|bin_counter~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~14_combout\ = (\GEN1|Add0~10_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Add0~10_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~14_combout\);

-- Location: FF_X10_Y2_N17
\GEN1|bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(5));

-- Location: LCCOMB_X10_Y6_N12
\GEN1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~12_combout\ = (\GEN1|bin_counter\(6) & (\GEN1|Add0~11\ $ (GND))) # (!\GEN1|bin_counter\(6) & ((GND) # (!\GEN1|Add0~11\)))
-- \GEN1|Add0~13\ = CARRY((!\GEN1|Add0~11\) # (!\GEN1|bin_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(6),
	datad => VCC,
	cin => \GEN1|Add0~11\,
	combout => \GEN1|Add0~12_combout\,
	cout => \GEN1|Add0~13\);

-- Location: LCCOMB_X10_Y2_N12
\GEN1|bin_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[6]~31_combout\ = !\GEN1|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~12_combout\,
	combout => \GEN1|bin_counter[6]~31_combout\);

-- Location: FF_X10_Y2_N13
\GEN1|bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[6]~31_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(6));

-- Location: LCCOMB_X10_Y6_N14
\GEN1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~14_combout\ = (\GEN1|bin_counter\(7) & (\GEN1|Add0~13\ & VCC)) # (!\GEN1|bin_counter\(7) & (!\GEN1|Add0~13\))
-- \GEN1|Add0~15\ = CARRY((!\GEN1|bin_counter\(7) & !\GEN1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(7),
	datad => VCC,
	cin => \GEN1|Add0~13\,
	combout => \GEN1|Add0~14_combout\,
	cout => \GEN1|Add0~15\);

-- Location: LCCOMB_X10_Y2_N6
\GEN1|bin_counter~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~13_combout\ = (\GEN1|Add0~14_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Add0~14_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~13_combout\);

-- Location: FF_X10_Y2_N7
\GEN1|bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(7));

-- Location: LCCOMB_X10_Y6_N16
\GEN1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~16_combout\ = (\GEN1|bin_counter\(8) & ((GND) # (!\GEN1|Add0~15\))) # (!\GEN1|bin_counter\(8) & (\GEN1|Add0~15\ $ (GND)))
-- \GEN1|Add0~17\ = CARRY((\GEN1|bin_counter\(8)) # (!\GEN1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(8),
	datad => VCC,
	cin => \GEN1|Add0~15\,
	combout => \GEN1|Add0~16_combout\,
	cout => \GEN1|Add0~17\);

-- Location: LCCOMB_X9_Y6_N12
\GEN1|bin_counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~12_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~16_combout\,
	combout => \GEN1|bin_counter~12_combout\);

-- Location: FF_X9_Y6_N13
\GEN1|bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(8));

-- Location: LCCOMB_X10_Y6_N18
\GEN1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~18_combout\ = (\GEN1|bin_counter\(9) & (\GEN1|Add0~17\ & VCC)) # (!\GEN1|bin_counter\(9) & (!\GEN1|Add0~17\))
-- \GEN1|Add0~19\ = CARRY((!\GEN1|bin_counter\(9) & !\GEN1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(9),
	datad => VCC,
	cin => \GEN1|Add0~17\,
	combout => \GEN1|Add0~18_combout\,
	cout => \GEN1|Add0~19\);

-- Location: LCCOMB_X4_Y6_N2
\GEN1|bin_counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~11_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~18_combout\,
	combout => \GEN1|bin_counter~11_combout\);

-- Location: FF_X4_Y6_N3
\GEN1|bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(9));

-- Location: LCCOMB_X10_Y6_N20
\GEN1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~20_combout\ = (\GEN1|bin_counter\(10) & ((GND) # (!\GEN1|Add0~19\))) # (!\GEN1|bin_counter\(10) & (\GEN1|Add0~19\ $ (GND)))
-- \GEN1|Add0~21\ = CARRY((\GEN1|bin_counter\(10)) # (!\GEN1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(10),
	datad => VCC,
	cin => \GEN1|Add0~19\,
	combout => \GEN1|Add0~20_combout\,
	cout => \GEN1|Add0~21\);

-- Location: LCCOMB_X4_Y6_N24
\GEN1|bin_counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~10_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~20_combout\,
	combout => \GEN1|bin_counter~10_combout\);

-- Location: FF_X4_Y6_N25
\GEN1|bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(10));

-- Location: LCCOMB_X10_Y6_N22
\GEN1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~22_combout\ = (\GEN1|bin_counter\(11) & (!\GEN1|Add0~21\)) # (!\GEN1|bin_counter\(11) & (\GEN1|Add0~21\ & VCC))
-- \GEN1|Add0~23\ = CARRY((\GEN1|bin_counter\(11) & !\GEN1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(11),
	datad => VCC,
	cin => \GEN1|Add0~21\,
	combout => \GEN1|Add0~22_combout\,
	cout => \GEN1|Add0~23\);

-- Location: LCCOMB_X4_Y6_N22
\GEN1|bin_counter[11]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[11]~30_combout\ = !\GEN1|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~22_combout\,
	combout => \GEN1|bin_counter[11]~30_combout\);

-- Location: FF_X4_Y6_N23
\GEN1|bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[11]~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(11));

-- Location: LCCOMB_X10_Y6_N24
\GEN1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~24_combout\ = (\GEN1|bin_counter\(12) & (\GEN1|Add0~23\ $ (GND))) # (!\GEN1|bin_counter\(12) & ((GND) # (!\GEN1|Add0~23\)))
-- \GEN1|Add0~25\ = CARRY((!\GEN1|Add0~23\) # (!\GEN1|bin_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(12),
	datad => VCC,
	cin => \GEN1|Add0~23\,
	combout => \GEN1|Add0~24_combout\,
	cout => \GEN1|Add0~25\);

-- Location: LCCOMB_X4_Y6_N4
\GEN1|bin_counter[12]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[12]~29_combout\ = !\GEN1|Add0~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~24_combout\,
	combout => \GEN1|bin_counter[12]~29_combout\);

-- Location: FF_X4_Y6_N5
\GEN1|bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[12]~29_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(12));

-- Location: LCCOMB_X10_Y6_N26
\GEN1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~26_combout\ = (\GEN1|bin_counter\(13) & (!\GEN1|Add0~25\)) # (!\GEN1|bin_counter\(13) & (\GEN1|Add0~25\ & VCC))
-- \GEN1|Add0~27\ = CARRY((\GEN1|bin_counter\(13) & !\GEN1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(13),
	datad => VCC,
	cin => \GEN1|Add0~25\,
	combout => \GEN1|Add0~26_combout\,
	cout => \GEN1|Add0~27\);

-- Location: LCCOMB_X4_Y6_N26
\GEN1|bin_counter[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[13]~28_combout\ = !\GEN1|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~26_combout\,
	combout => \GEN1|bin_counter[13]~28_combout\);

-- Location: FF_X4_Y6_N27
\GEN1|bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[13]~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(13));

-- Location: LCCOMB_X10_Y6_N28
\GEN1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~28_combout\ = (\GEN1|bin_counter\(14) & (\GEN1|Add0~27\ $ (GND))) # (!\GEN1|bin_counter\(14) & ((GND) # (!\GEN1|Add0~27\)))
-- \GEN1|Add0~29\ = CARRY((!\GEN1|Add0~27\) # (!\GEN1|bin_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(14),
	datad => VCC,
	cin => \GEN1|Add0~27\,
	combout => \GEN1|Add0~28_combout\,
	cout => \GEN1|Add0~29\);

-- Location: LCCOMB_X4_Y6_N20
\GEN1|bin_counter[14]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[14]~27_combout\ = !\GEN1|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~28_combout\,
	combout => \GEN1|bin_counter[14]~27_combout\);

-- Location: FF_X4_Y6_N21
\GEN1|bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[14]~27_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(14));

-- Location: LCCOMB_X10_Y6_N30
\GEN1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~30_combout\ = (\GEN1|bin_counter\(15) & (\GEN1|Add0~29\ & VCC)) # (!\GEN1|bin_counter\(15) & (!\GEN1|Add0~29\))
-- \GEN1|Add0~31\ = CARRY((!\GEN1|bin_counter\(15) & !\GEN1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(15),
	datad => VCC,
	cin => \GEN1|Add0~29\,
	combout => \GEN1|Add0~30_combout\,
	cout => \GEN1|Add0~31\);

-- Location: LCCOMB_X4_Y6_N6
\GEN1|bin_counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~9_combout\ = (\GEN1|Add0~30_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~30_combout\,
	datad => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~9_combout\);

-- Location: FF_X4_Y6_N7
\GEN1|bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(15));

-- Location: LCCOMB_X10_Y5_N0
\GEN1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~32_combout\ = (\GEN1|bin_counter\(16) & (\GEN1|Add0~31\ $ (GND))) # (!\GEN1|bin_counter\(16) & ((GND) # (!\GEN1|Add0~31\)))
-- \GEN1|Add0~33\ = CARRY((!\GEN1|Add0~31\) # (!\GEN1|bin_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(16),
	datad => VCC,
	cin => \GEN1|Add0~31\,
	combout => \GEN1|Add0~32_combout\,
	cout => \GEN1|Add0~33\);

-- Location: LCCOMB_X10_Y2_N22
\GEN1|bin_counter[16]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[16]~26_combout\ = !\GEN1|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~32_combout\,
	combout => \GEN1|bin_counter[16]~26_combout\);

-- Location: FF_X10_Y2_N23
\GEN1|bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[16]~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(16));

-- Location: LCCOMB_X10_Y5_N2
\GEN1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~34_combout\ = (\GEN1|bin_counter\(17) & (\GEN1|Add0~33\ & VCC)) # (!\GEN1|bin_counter\(17) & (!\GEN1|Add0~33\))
-- \GEN1|Add0~35\ = CARRY((!\GEN1|bin_counter\(17) & !\GEN1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(17),
	datad => VCC,
	cin => \GEN1|Add0~33\,
	combout => \GEN1|Add0~34_combout\,
	cout => \GEN1|Add0~35\);

-- Location: LCCOMB_X10_Y2_N24
\GEN1|bin_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~8_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~34_combout\,
	combout => \GEN1|bin_counter~8_combout\);

-- Location: FF_X10_Y2_N25
\GEN1|bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(17));

-- Location: LCCOMB_X10_Y5_N4
\GEN1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~36_combout\ = (\GEN1|bin_counter\(18) & (\GEN1|Add0~35\ $ (GND))) # (!\GEN1|bin_counter\(18) & ((GND) # (!\GEN1|Add0~35\)))
-- \GEN1|Add0~37\ = CARRY((!\GEN1|Add0~35\) # (!\GEN1|bin_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(18),
	datad => VCC,
	cin => \GEN1|Add0~35\,
	combout => \GEN1|Add0~36_combout\,
	cout => \GEN1|Add0~37\);

-- Location: LCCOMB_X10_Y2_N4
\GEN1|bin_counter[18]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[18]~25_combout\ = !\GEN1|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~36_combout\,
	combout => \GEN1|bin_counter[18]~25_combout\);

-- Location: FF_X10_Y2_N5
\GEN1|bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[18]~25_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(18));

-- Location: LCCOMB_X10_Y5_N6
\GEN1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~38_combout\ = (\GEN1|bin_counter\(19) & (!\GEN1|Add0~37\)) # (!\GEN1|bin_counter\(19) & (\GEN1|Add0~37\ & VCC))
-- \GEN1|Add0~39\ = CARRY((\GEN1|bin_counter\(19) & !\GEN1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(19),
	datad => VCC,
	cin => \GEN1|Add0~37\,
	combout => \GEN1|Add0~38_combout\,
	cout => \GEN1|Add0~39\);

-- Location: LCCOMB_X10_Y2_N2
\GEN1|bin_counter[19]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[19]~24_combout\ = !\GEN1|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~38_combout\,
	combout => \GEN1|bin_counter[19]~24_combout\);

-- Location: FF_X10_Y2_N3
\GEN1|bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[19]~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(19));

-- Location: LCCOMB_X10_Y5_N8
\GEN1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~40_combout\ = (\GEN1|bin_counter\(20) & (\GEN1|Add0~39\ $ (GND))) # (!\GEN1|bin_counter\(20) & ((GND) # (!\GEN1|Add0~39\)))
-- \GEN1|Add0~41\ = CARRY((!\GEN1|Add0~39\) # (!\GEN1|bin_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(20),
	datad => VCC,
	cin => \GEN1|Add0~39\,
	combout => \GEN1|Add0~40_combout\,
	cout => \GEN1|Add0~41\);

-- Location: LCCOMB_X10_Y2_N28
\GEN1|bin_counter[20]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[20]~23_combout\ = !\GEN1|Add0~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~40_combout\,
	combout => \GEN1|bin_counter[20]~23_combout\);

-- Location: FF_X10_Y2_N29
\GEN1|bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[20]~23_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(20));

-- Location: LCCOMB_X10_Y5_N10
\GEN1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~42_combout\ = (\GEN1|bin_counter\(21) & (!\GEN1|Add0~41\)) # (!\GEN1|bin_counter\(21) & (\GEN1|Add0~41\ & VCC))
-- \GEN1|Add0~43\ = CARRY((\GEN1|bin_counter\(21) & !\GEN1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(21),
	datad => VCC,
	cin => \GEN1|Add0~41\,
	combout => \GEN1|Add0~42_combout\,
	cout => \GEN1|Add0~43\);

-- Location: LCCOMB_X10_Y2_N10
\GEN1|bin_counter[21]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[21]~22_combout\ = !\GEN1|Add0~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~42_combout\,
	combout => \GEN1|bin_counter[21]~22_combout\);

-- Location: FF_X10_Y2_N11
\GEN1|bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[21]~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(21));

-- Location: LCCOMB_X10_Y5_N12
\GEN1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~44_combout\ = (\GEN1|bin_counter\(22) & (\GEN1|Add0~43\ $ (GND))) # (!\GEN1|bin_counter\(22) & ((GND) # (!\GEN1|Add0~43\)))
-- \GEN1|Add0~45\ = CARRY((!\GEN1|Add0~43\) # (!\GEN1|bin_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(22),
	datad => VCC,
	cin => \GEN1|Add0~43\,
	combout => \GEN1|Add0~44_combout\,
	cout => \GEN1|Add0~45\);

-- Location: LCCOMB_X10_Y2_N8
\GEN1|bin_counter[22]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[22]~21_combout\ = !\GEN1|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~44_combout\,
	combout => \GEN1|bin_counter[22]~21_combout\);

-- Location: FF_X10_Y2_N9
\GEN1|bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[22]~21_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(22));

-- Location: LCCOMB_X10_Y5_N14
\GEN1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~46_combout\ = (\GEN1|bin_counter\(23) & (\GEN1|Add0~45\ & VCC)) # (!\GEN1|bin_counter\(23) & (!\GEN1|Add0~45\))
-- \GEN1|Add0~47\ = CARRY((!\GEN1|bin_counter\(23) & !\GEN1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(23),
	datad => VCC,
	cin => \GEN1|Add0~45\,
	combout => \GEN1|Add0~46_combout\,
	cout => \GEN1|Add0~47\);

-- Location: LCCOMB_X10_Y2_N14
\GEN1|bin_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~7_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~46_combout\,
	combout => \GEN1|bin_counter~7_combout\);

-- Location: FF_X10_Y2_N15
\GEN1|bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(23));

-- Location: LCCOMB_X10_Y2_N0
\GEN1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~2_combout\ = (\GEN1|bin_counter\(21) & (\GEN1|bin_counter\(20) & (!\GEN1|bin_counter\(23) & \GEN1|bin_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(21),
	datab => \GEN1|bin_counter\(20),
	datac => \GEN1|bin_counter\(23),
	datad => \GEN1|bin_counter\(22),
	combout => \GEN1|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y5_N16
\GEN1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~48_combout\ = (\GEN1|bin_counter\(24) & (\GEN1|Add0~47\ $ (GND))) # (!\GEN1|bin_counter\(24) & ((GND) # (!\GEN1|Add0~47\)))
-- \GEN1|Add0~49\ = CARRY((!\GEN1|Add0~47\) # (!\GEN1|bin_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(24),
	datad => VCC,
	cin => \GEN1|Add0~47\,
	combout => \GEN1|Add0~48_combout\,
	cout => \GEN1|Add0~49\);

-- Location: LCCOMB_X4_Y6_N18
\GEN1|bin_counter[24]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[24]~20_combout\ = !\GEN1|Add0~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~48_combout\,
	combout => \GEN1|bin_counter[24]~20_combout\);

-- Location: FF_X4_Y6_N19
\GEN1|bin_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[24]~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(24));

-- Location: LCCOMB_X10_Y5_N18
\GEN1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~50_combout\ = (\GEN1|bin_counter\(25) & (\GEN1|Add0~49\ & VCC)) # (!\GEN1|bin_counter\(25) & (!\GEN1|Add0~49\))
-- \GEN1|Add0~51\ = CARRY((!\GEN1|bin_counter\(25) & !\GEN1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(25),
	datad => VCC,
	cin => \GEN1|Add0~49\,
	combout => \GEN1|Add0~50_combout\,
	cout => \GEN1|Add0~51\);

-- Location: LCCOMB_X9_Y6_N14
\GEN1|bin_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~6_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~50_combout\,
	combout => \GEN1|bin_counter~6_combout\);

-- Location: FF_X9_Y6_N15
\GEN1|bin_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(25));

-- Location: LCCOMB_X10_Y5_N20
\GEN1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~52_combout\ = (\GEN1|bin_counter\(26) & ((GND) # (!\GEN1|Add0~51\))) # (!\GEN1|bin_counter\(26) & (\GEN1|Add0~51\ $ (GND)))
-- \GEN1|Add0~53\ = CARRY((\GEN1|bin_counter\(26)) # (!\GEN1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(26),
	datad => VCC,
	cin => \GEN1|Add0~51\,
	combout => \GEN1|Add0~52_combout\,
	cout => \GEN1|Add0~53\);

-- Location: LCCOMB_X9_Y6_N4
\GEN1|bin_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~5_combout\ = (\GEN1|Add0~52_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~52_combout\,
	datad => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~5_combout\);

-- Location: FF_X9_Y6_N5
\GEN1|bin_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(26));

-- Location: LCCOMB_X10_Y5_N22
\GEN1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~54_combout\ = (\GEN1|bin_counter\(27) & (\GEN1|Add0~53\ & VCC)) # (!\GEN1|bin_counter\(27) & (!\GEN1|Add0~53\))
-- \GEN1|Add0~55\ = CARRY((!\GEN1|bin_counter\(27) & !\GEN1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(27),
	datad => VCC,
	cin => \GEN1|Add0~53\,
	combout => \GEN1|Add0~54_combout\,
	cout => \GEN1|Add0~55\);

-- Location: LCCOMB_X9_Y6_N2
\GEN1|bin_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~4_combout\ = (\GEN1|Add0~54_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~54_combout\,
	datad => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~4_combout\);

-- Location: FF_X9_Y6_N3
\GEN1|bin_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(27));

-- Location: LCCOMB_X9_Y6_N24
\GEN1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~1_combout\ = (\GEN1|bin_counter\(24) & (!\GEN1|bin_counter\(26) & (!\GEN1|bin_counter\(25) & !\GEN1|bin_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(24),
	datab => \GEN1|bin_counter\(26),
	datac => \GEN1|bin_counter\(25),
	datad => \GEN1|bin_counter\(27),
	combout => \GEN1|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y5_N24
\GEN1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~56_combout\ = (\GEN1|bin_counter\(28) & ((GND) # (!\GEN1|Add0~55\))) # (!\GEN1|bin_counter\(28) & (\GEN1|Add0~55\ $ (GND)))
-- \GEN1|Add0~57\ = CARRY((\GEN1|bin_counter\(28)) # (!\GEN1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(28),
	datad => VCC,
	cin => \GEN1|Add0~55\,
	combout => \GEN1|Add0~56_combout\,
	cout => \GEN1|Add0~57\);

-- Location: LCCOMB_X9_Y6_N30
\GEN1|bin_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~3_combout\ = (\GEN1|Add0~56_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~56_combout\,
	datad => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~3_combout\);

-- Location: FF_X9_Y6_N31
\GEN1|bin_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(28));

-- Location: LCCOMB_X10_Y5_N26
\GEN1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~58_combout\ = (\GEN1|bin_counter\(29) & (\GEN1|Add0~57\ & VCC)) # (!\GEN1|bin_counter\(29) & (!\GEN1|Add0~57\))
-- \GEN1|Add0~59\ = CARRY((!\GEN1|bin_counter\(29) & !\GEN1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(29),
	datad => VCC,
	cin => \GEN1|Add0~57\,
	combout => \GEN1|Add0~58_combout\,
	cout => \GEN1|Add0~59\);

-- Location: LCCOMB_X4_Y6_N16
\GEN1|bin_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~2_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~58_combout\,
	combout => \GEN1|bin_counter~2_combout\);

-- Location: FF_X4_Y6_N17
\GEN1|bin_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(29));

-- Location: LCCOMB_X10_Y5_N28
\GEN1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~60_combout\ = (\GEN1|bin_counter\(30) & ((GND) # (!\GEN1|Add0~59\))) # (!\GEN1|bin_counter\(30) & (\GEN1|Add0~59\ $ (GND)))
-- \GEN1|Add0~61\ = CARRY((\GEN1|bin_counter\(30)) # (!\GEN1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(30),
	datad => VCC,
	cin => \GEN1|Add0~59\,
	combout => \GEN1|Add0~60_combout\,
	cout => \GEN1|Add0~61\);

-- Location: LCCOMB_X9_Y6_N20
\GEN1|bin_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~1_combout\ = (\GEN1|Add0~60_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~60_combout\,
	datad => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~1_combout\);

-- Location: FF_X9_Y6_N21
\GEN1|bin_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(30));

-- Location: LCCOMB_X10_Y5_N30
\GEN1|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~62_combout\ = \GEN1|Add0~61\ $ (!\GEN1|bin_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|bin_counter\(31),
	cin => \GEN1|Add0~61\,
	combout => \GEN1|Add0~62_combout\);

-- Location: LCCOMB_X9_Y6_N10
\GEN1|bin_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~0_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~62_combout\,
	combout => \GEN1|bin_counter~0_combout\);

-- Location: FF_X9_Y6_N11
\GEN1|bin_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(31));

-- Location: LCCOMB_X9_Y6_N8
\GEN1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~0_combout\ = (!\GEN1|bin_counter\(28) & (!\GEN1|bin_counter\(30) & (!\GEN1|bin_counter\(29) & !\GEN1|bin_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(28),
	datab => \GEN1|bin_counter\(30),
	datac => \GEN1|bin_counter\(29),
	datad => \GEN1|bin_counter\(31),
	combout => \GEN1|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y2_N18
\GEN1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~3_combout\ = (\GEN1|bin_counter\(18) & (!\GEN1|bin_counter\(17) & (\GEN1|bin_counter\(16) & \GEN1|bin_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(18),
	datab => \GEN1|bin_counter\(17),
	datac => \GEN1|bin_counter\(16),
	datad => \GEN1|bin_counter\(19),
	combout => \GEN1|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y6_N18
\GEN1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~4_combout\ = (\GEN1|Equal0~2_combout\ & (\GEN1|Equal0~1_combout\ & (\GEN1|Equal0~0_combout\ & \GEN1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~2_combout\,
	datab => \GEN1|Equal0~1_combout\,
	datac => \GEN1|Equal0~0_combout\,
	datad => \GEN1|Equal0~3_combout\,
	combout => \GEN1|Equal0~4_combout\);

-- Location: LCCOMB_X4_Y6_N12
\GEN1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~6_combout\ = (!\GEN1|bin_counter\(9) & (!\GEN1|bin_counter\(10) & (\GEN1|bin_counter\(11) & !\GEN1|bin_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(9),
	datab => \GEN1|bin_counter\(10),
	datac => \GEN1|bin_counter\(11),
	datad => \GEN1|bin_counter\(8),
	combout => \GEN1|Equal0~6_combout\);

-- Location: LCCOMB_X4_Y6_N0
\GEN1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~5_combout\ = (\GEN1|bin_counter\(14) & !\GEN1|bin_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(14),
	datad => \GEN1|bin_counter\(15),
	combout => \GEN1|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y6_N14
\GEN1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~7_combout\ = (\GEN1|Equal0~6_combout\ & (\GEN1|Equal0~5_combout\ & (\GEN1|bin_counter\(13) & \GEN1|bin_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~6_combout\,
	datab => \GEN1|Equal0~5_combout\,
	datac => \GEN1|bin_counter\(13),
	datad => \GEN1|bin_counter\(12),
	combout => \GEN1|Equal0~7_combout\);

-- Location: LCCOMB_X10_Y2_N20
\GEN1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~8_combout\ = (\GEN1|bin_counter\(6) & (!\GEN1|bin_counter\(5) & (!\GEN1|bin_counter\(4) & !\GEN1|bin_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(6),
	datab => \GEN1|bin_counter\(5),
	datac => \GEN1|bin_counter\(4),
	datad => \GEN1|bin_counter\(7),
	combout => \GEN1|Equal0~8_combout\);

-- Location: LCCOMB_X9_Y6_N0
\GEN1|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~10_combout\ = (\GEN1|Equal0~9_combout\ & (\GEN1|Equal0~4_combout\ & (\GEN1|Equal0~7_combout\ & \GEN1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~9_combout\,
	datab => \GEN1|Equal0~4_combout\,
	datac => \GEN1|Equal0~7_combout\,
	datad => \GEN1|Equal0~8_combout\,
	combout => \GEN1|Equal0~10_combout\);

-- Location: FF_X9_Y6_N1
\GEN1|terminal_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|Equal0~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|terminal_count~q\);

-- Location: LCCOMB_X1_Y7_N8
\GEN1|strobe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|strobe~0_combout\ = \GEN1|strobe~q\ $ (\GEN1|terminal_count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|strobe~q\,
	datad => \GEN1|terminal_count~q\,
	combout => \GEN1|strobe~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\GEN1|strobe~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|strobe~feeder_combout\ = \GEN1|strobe~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|strobe~0_combout\,
	combout => \GEN1|strobe~feeder_combout\);

-- Location: FF_X1_Y6_N1
\GEN1|strobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \GEN1|strobe~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|strobe~q\);

-- Location: CLKCTRL_G0
\GEN1|strobe~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GEN1|strobe~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GEN1|strobe~clkctrl_outclk\);

-- Location: FF_X12_Y8_N21
\state_machine|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \state_machine|current_state.S4~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S5~q\);

-- Location: FF_X12_Y8_N15
\state_machine|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \state_machine|current_state.S5~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S6~q\);

-- Location: FF_X12_Y8_N3
\state_machine|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \state_machine|current_state.S6~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S7~q\);

-- Location: LCCOMB_X12_Y8_N22
\state_machine|current_state.S8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.S8~feeder_combout\ = \state_machine|current_state.S7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_machine|current_state.S7~q\,
	combout => \state_machine|current_state.S8~feeder_combout\);

-- Location: FF_X12_Y8_N23
\state_machine|current_state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \state_machine|current_state.S8~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S8~q\);

-- Location: FF_X12_Y8_N5
\state_machine|current_state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \state_machine|current_state.S8~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S9~q\);

-- Location: FF_X12_Y8_N19
\state_machine|current_state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \state_machine|current_state.S9~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S10~q\);

-- Location: LCCOMB_X12_Y8_N30
\state_machine|current_state.S11~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.S11~feeder_combout\ = \state_machine|current_state.S10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_machine|current_state.S10~q\,
	combout => \state_machine|current_state.S11~feeder_combout\);

-- Location: FF_X12_Y8_N31
\state_machine|current_state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \state_machine|current_state.S11~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S11~q\);

-- Location: FF_X12_Y8_N9
\state_machine|current_state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \state_machine|current_state.S11~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S12~q\);

-- Location: FF_X11_Y16_N13
\state_machine|current_state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \state_machine|current_state.S12~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S13~q\);

-- Location: LCCOMB_X11_Y16_N14
\state_machine|current_state.S14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.S14~feeder_combout\ = \state_machine|current_state.S13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_machine|current_state.S13~q\,
	combout => \state_machine|current_state.S14~feeder_combout\);

-- Location: FF_X11_Y16_N15
\state_machine|current_state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \state_machine|current_state.S14~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S14~q\);

-- Location: FF_X11_Y16_N23
\state_machine|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \state_machine|current_state.S14~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.s15~q\);

-- Location: LCCOMB_X11_Y16_N16
\state_machine|current_state.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.S0~0_combout\ = !\state_machine|current_state.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine|current_state.s15~q\,
	combout => \state_machine|current_state.S0~0_combout\);

-- Location: FF_X11_Y16_N17
\state_machine|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \state_machine|current_state.S0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S0~q\);

-- Location: LCCOMB_X12_Y8_N16
\state_machine|current_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.S1~0_combout\ = !\state_machine|current_state.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_machine|current_state.S0~q\,
	combout => \state_machine|current_state.S1~0_combout\);

-- Location: FF_X12_Y8_N17
\state_machine|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \state_machine|current_state.S1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S1~q\);

-- Location: LCCOMB_X12_Y8_N0
\state_machine|current_state.S2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.S2~feeder_combout\ = \state_machine|current_state.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_machine|current_state.S1~q\,
	combout => \state_machine|current_state.S2~feeder_combout\);

-- Location: FF_X12_Y8_N1
\state_machine|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \state_machine|current_state.S2~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S2~q\);

-- Location: LCCOMB_X12_Y8_N12
\state_machine|current_state.S3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.S3~feeder_combout\ = \state_machine|current_state.S2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_machine|current_state.S2~q\,
	combout => \state_machine|current_state.S3~feeder_combout\);

-- Location: FF_X12_Y8_N13
\state_machine|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \state_machine|current_state.S3~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S3~q\);

-- Location: LCCOMB_X12_Y8_N26
\state_machine|current_state.S4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.S4~feeder_combout\ = \state_machine|current_state.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_machine|current_state.S3~q\,
	combout => \state_machine|current_state.S4~feeder_combout\);

-- Location: FF_X12_Y8_N27
\state_machine|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \state_machine|current_state.S4~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S4~q\);

-- Location: LCCOMB_X12_Y8_N20
\left_input[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_input[0]~3_combout\ = (!\state_machine|current_state.S4~q\ & (!\state_machine|current_state.S2~q\ & (!\state_machine|current_state.S5~q\ & !\state_machine|current_state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S4~q\,
	datab => \state_machine|current_state.S2~q\,
	datac => \state_machine|current_state.S5~q\,
	datad => \state_machine|current_state.S3~q\,
	combout => \left_input[0]~3_combout\);

-- Location: LCCOMB_X12_Y8_N24
\left_input[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_input[0]~2_combout\ = (\state_machine|current_state.S0~q\ & !\state_machine|current_state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine|current_state.S0~q\,
	datad => \state_machine|current_state.S1~q\,
	combout => \left_input[0]~2_combout\);

-- Location: LCCOMB_X12_Y8_N2
\state_machine|east_west[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|east_west[0]~13_combout\ = (\left_input[0]~3_combout\ & (!\state_machine|current_state.S6~q\ & (!\state_machine|current_state.S7~q\ & \left_input[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_input[0]~3_combout\,
	datab => \state_machine|current_state.S6~q\,
	datac => \state_machine|current_state.S7~q\,
	datad => \left_input[0]~2_combout\,
	combout => \state_machine|east_west[0]~13_combout\);

-- Location: LCCOMB_X12_Y8_N18
\state_machine|east_west[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|east_west[0]~14_combout\ = (\state_machine|current_state.S8~q\) # ((\state_machine|current_state.S9~q\) # (\state_machine|current_state.S7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S8~q\,
	datac => \state_machine|current_state.S9~q\,
	datad => \state_machine|current_state.S7~q\,
	combout => \state_machine|east_west[0]~14_combout\);

-- Location: LCCOMB_X12_Y8_N14
\state_machine|east_west[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|east_west[0]~15_combout\ = (!\state_machine|east_west[0]~14_combout\ & (\left_input[0]~2_combout\ & (!\state_machine|current_state.S6~q\ & \left_input[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|east_west[0]~14_combout\,
	datab => \left_input[0]~2_combout\,
	datac => \state_machine|current_state.S6~q\,
	datad => \left_input[0]~3_combout\,
	combout => \state_machine|east_west[0]~15_combout\);

-- Location: LCCOMB_X12_Y8_N8
\state_machine|east_west[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|east_west[3]~16_combout\ = (\state_machine|current_state.S11~q\) # ((\state_machine|current_state.S10~q\) # ((\state_machine|current_state.S12~q\) # (!\state_machine|east_west[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S11~q\,
	datab => \state_machine|current_state.S10~q\,
	datac => \state_machine|current_state.S12~q\,
	datad => \state_machine|east_west[0]~15_combout\,
	combout => \state_machine|east_west[3]~16_combout\);

-- Location: LCCOMB_X16_Y18_N0
\GEN2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~0_combout\ = \GEN2|bin_counter\(0) $ (VCC)
-- \GEN2|Add0~1\ = CARRY(\GEN2|bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(0),
	datad => VCC,
	combout => \GEN2|Add0~0_combout\,
	cout => \GEN2|Add0~1\);

-- Location: LCCOMB_X17_Y18_N20
\GEN2|bin_counter~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~23_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~0_combout\,
	combout => \GEN2|bin_counter~23_combout\);

-- Location: FF_X17_Y18_N21
\GEN2|bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~23_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(0));

-- Location: LCCOMB_X16_Y18_N2
\GEN2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~2_combout\ = (\GEN2|bin_counter\(1) & (\GEN2|Add0~1\ & VCC)) # (!\GEN2|bin_counter\(1) & (!\GEN2|Add0~1\))
-- \GEN2|Add0~3\ = CARRY((!\GEN2|bin_counter\(1) & !\GEN2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(1),
	datad => VCC,
	cin => \GEN2|Add0~1\,
	combout => \GEN2|Add0~2_combout\,
	cout => \GEN2|Add0~3\);

-- Location: LCCOMB_X17_Y18_N2
\GEN2|bin_counter~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~22_combout\ = (\GEN2|Add0~2_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~2_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~22_combout\);

-- Location: FF_X17_Y18_N3
\GEN2|bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(1));

-- Location: LCCOMB_X16_Y18_N4
\GEN2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~4_combout\ = (\GEN2|bin_counter\(2) & ((GND) # (!\GEN2|Add0~3\))) # (!\GEN2|bin_counter\(2) & (\GEN2|Add0~3\ $ (GND)))
-- \GEN2|Add0~5\ = CARRY((\GEN2|bin_counter\(2)) # (!\GEN2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(2),
	datad => VCC,
	cin => \GEN2|Add0~3\,
	combout => \GEN2|Add0~4_combout\,
	cout => \GEN2|Add0~5\);

-- Location: LCCOMB_X17_Y18_N0
\GEN2|bin_counter~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~21_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~4_combout\,
	combout => \GEN2|bin_counter~21_combout\);

-- Location: FF_X17_Y18_N1
\GEN2|bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~21_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(2));

-- Location: LCCOMB_X16_Y18_N6
\GEN2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~6_combout\ = (\GEN2|bin_counter\(3) & (\GEN2|Add0~5\ & VCC)) # (!\GEN2|bin_counter\(3) & (!\GEN2|Add0~5\))
-- \GEN2|Add0~7\ = CARRY((!\GEN2|bin_counter\(3) & !\GEN2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(3),
	datad => VCC,
	cin => \GEN2|Add0~5\,
	combout => \GEN2|Add0~6_combout\,
	cout => \GEN2|Add0~7\);

-- Location: LCCOMB_X12_Y16_N0
\GEN2|bin_counter~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~20_combout\ = (\GEN2|Add0~6_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~6_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~20_combout\);

-- Location: FF_X12_Y16_N1
\GEN2|bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(3));

-- Location: LCCOMB_X17_Y18_N22
\GEN2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~9_combout\ = (!\GEN2|bin_counter\(0) & (!\GEN2|bin_counter\(2) & (!\GEN2|bin_counter\(3) & !\GEN2|bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(0),
	datab => \GEN2|bin_counter\(2),
	datac => \GEN2|bin_counter\(3),
	datad => \GEN2|bin_counter\(1),
	combout => \GEN2|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y18_N8
\GEN2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~8_combout\ = (\GEN2|bin_counter\(4) & ((GND) # (!\GEN2|Add0~7\))) # (!\GEN2|bin_counter\(4) & (\GEN2|Add0~7\ $ (GND)))
-- \GEN2|Add0~9\ = CARRY((\GEN2|bin_counter\(4)) # (!\GEN2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(4),
	datad => VCC,
	cin => \GEN2|Add0~7\,
	combout => \GEN2|Add0~8_combout\,
	cout => \GEN2|Add0~9\);

-- Location: LCCOMB_X17_Y18_N12
\GEN2|bin_counter~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~19_combout\ = (\GEN2|Add0~8_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~8_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~19_combout\);

-- Location: FF_X17_Y18_N13
\GEN2|bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(4));

-- Location: LCCOMB_X16_Y18_N10
\GEN2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~10_combout\ = (\GEN2|bin_counter\(5) & (\GEN2|Add0~9\ & VCC)) # (!\GEN2|bin_counter\(5) & (!\GEN2|Add0~9\))
-- \GEN2|Add0~11\ = CARRY((!\GEN2|bin_counter\(5) & !\GEN2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(5),
	datad => VCC,
	cin => \GEN2|Add0~9\,
	combout => \GEN2|Add0~10_combout\,
	cout => \GEN2|Add0~11\);

-- Location: LCCOMB_X17_Y18_N10
\GEN2|bin_counter~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~18_combout\ = (\GEN2|Add0~10_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~10_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~18_combout\);

-- Location: FF_X17_Y18_N11
\GEN2|bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(5));

-- Location: LCCOMB_X16_Y18_N12
\GEN2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~12_combout\ = (\GEN2|bin_counter\(6) & (\GEN2|Add0~11\ $ (GND))) # (!\GEN2|bin_counter\(6) & ((GND) # (!\GEN2|Add0~11\)))
-- \GEN2|Add0~13\ = CARRY((!\GEN2|Add0~11\) # (!\GEN2|bin_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(6),
	datad => VCC,
	cin => \GEN2|Add0~11\,
	combout => \GEN2|Add0~12_combout\,
	cout => \GEN2|Add0~13\);

-- Location: LCCOMB_X17_Y18_N6
\GEN2|bin_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[6]~31_combout\ = !\GEN2|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~12_combout\,
	combout => \GEN2|bin_counter[6]~31_combout\);

-- Location: FF_X17_Y18_N7
\GEN2|bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[6]~31_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(6));

-- Location: LCCOMB_X16_Y18_N14
\GEN2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~14_combout\ = (\GEN2|bin_counter\(7) & (\GEN2|Add0~13\ & VCC)) # (!\GEN2|bin_counter\(7) & (!\GEN2|Add0~13\))
-- \GEN2|Add0~15\ = CARRY((!\GEN2|bin_counter\(7) & !\GEN2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(7),
	datad => VCC,
	cin => \GEN2|Add0~13\,
	combout => \GEN2|Add0~14_combout\,
	cout => \GEN2|Add0~15\);

-- Location: LCCOMB_X17_Y18_N16
\GEN2|bin_counter~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~17_combout\ = (\GEN2|Add0~14_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~14_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~17_combout\);

-- Location: FF_X17_Y18_N17
\GEN2|bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(7));

-- Location: LCCOMB_X16_Y18_N16
\GEN2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~16_combout\ = (\GEN2|bin_counter\(8) & (\GEN2|Add0~15\ $ (GND))) # (!\GEN2|bin_counter\(8) & ((GND) # (!\GEN2|Add0~15\)))
-- \GEN2|Add0~17\ = CARRY((!\GEN2|Add0~15\) # (!\GEN2|bin_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(8),
	datad => VCC,
	cin => \GEN2|Add0~15\,
	combout => \GEN2|Add0~16_combout\,
	cout => \GEN2|Add0~17\);

-- Location: LCCOMB_X12_Y16_N12
\GEN2|bin_counter[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[8]~30_combout\ = !\GEN2|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~16_combout\,
	combout => \GEN2|bin_counter[8]~30_combout\);

-- Location: FF_X12_Y16_N13
\GEN2|bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[8]~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(8));

-- Location: LCCOMB_X16_Y18_N18
\GEN2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~18_combout\ = (\GEN2|bin_counter\(9) & (!\GEN2|Add0~17\)) # (!\GEN2|bin_counter\(9) & (\GEN2|Add0~17\ & VCC))
-- \GEN2|Add0~19\ = CARRY((\GEN2|bin_counter\(9) & !\GEN2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(9),
	datad => VCC,
	cin => \GEN2|Add0~17\,
	combout => \GEN2|Add0~18_combout\,
	cout => \GEN2|Add0~19\);

-- Location: LCCOMB_X12_Y16_N2
\GEN2|bin_counter[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[9]~29_combout\ = !\GEN2|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~18_combout\,
	combout => \GEN2|bin_counter[9]~29_combout\);

-- Location: FF_X12_Y16_N3
\GEN2|bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[9]~29_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(9));

-- Location: LCCOMB_X16_Y18_N20
\GEN2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~20_combout\ = (\GEN2|bin_counter\(10) & ((GND) # (!\GEN2|Add0~19\))) # (!\GEN2|bin_counter\(10) & (\GEN2|Add0~19\ $ (GND)))
-- \GEN2|Add0~21\ = CARRY((\GEN2|bin_counter\(10)) # (!\GEN2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(10),
	datad => VCC,
	cin => \GEN2|Add0~19\,
	combout => \GEN2|Add0~20_combout\,
	cout => \GEN2|Add0~21\);

-- Location: LCCOMB_X12_Y16_N22
\GEN2|bin_counter~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~14_combout\ = (\GEN2|Add0~20_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~20_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~14_combout\);

-- Location: FF_X12_Y16_N23
\GEN2|bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(10));

-- Location: LCCOMB_X16_Y18_N22
\GEN2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~22_combout\ = (\GEN2|bin_counter\(11) & (!\GEN2|Add0~21\)) # (!\GEN2|bin_counter\(11) & (\GEN2|Add0~21\ & VCC))
-- \GEN2|Add0~23\ = CARRY((\GEN2|bin_counter\(11) & !\GEN2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(11),
	datad => VCC,
	cin => \GEN2|Add0~21\,
	combout => \GEN2|Add0~22_combout\,
	cout => \GEN2|Add0~23\);

-- Location: LCCOMB_X12_Y16_N24
\GEN2|bin_counter[11]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[11]~28_combout\ = !\GEN2|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~22_combout\,
	combout => \GEN2|bin_counter[11]~28_combout\);

-- Location: FF_X12_Y16_N25
\GEN2|bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[11]~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(11));

-- Location: LCCOMB_X16_Y18_N24
\GEN2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~24_combout\ = (\GEN2|bin_counter\(12) & ((GND) # (!\GEN2|Add0~23\))) # (!\GEN2|bin_counter\(12) & (\GEN2|Add0~23\ $ (GND)))
-- \GEN2|Add0~25\ = CARRY((\GEN2|bin_counter\(12)) # (!\GEN2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(12),
	datad => VCC,
	cin => \GEN2|Add0~23\,
	combout => \GEN2|Add0~24_combout\,
	cout => \GEN2|Add0~25\);

-- Location: LCCOMB_X12_Y16_N20
\GEN2|bin_counter~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~16_combout\ = (\GEN2|Add0~24_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~24_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~16_combout\);

-- Location: FF_X12_Y16_N21
\GEN2|bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(12));

-- Location: LCCOMB_X16_Y18_N26
\GEN2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~26_combout\ = (\GEN2|bin_counter\(13) & (\GEN2|Add0~25\ & VCC)) # (!\GEN2|bin_counter\(13) & (!\GEN2|Add0~25\))
-- \GEN2|Add0~27\ = CARRY((!\GEN2|bin_counter\(13) & !\GEN2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(13),
	datad => VCC,
	cin => \GEN2|Add0~25\,
	combout => \GEN2|Add0~26_combout\,
	cout => \GEN2|Add0~27\);

-- Location: LCCOMB_X12_Y16_N10
\GEN2|bin_counter~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~15_combout\ = (\GEN2|Add0~26_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~26_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~15_combout\);

-- Location: FF_X12_Y16_N11
\GEN2|bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(13));

-- Location: LCCOMB_X12_Y16_N8
\GEN2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~6_combout\ = (\GEN2|bin_counter\(8) & (\GEN2|bin_counter\(11) & (!\GEN2|bin_counter\(10) & \GEN2|bin_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(8),
	datab => \GEN2|bin_counter\(11),
	datac => \GEN2|bin_counter\(10),
	datad => \GEN2|bin_counter\(9),
	combout => \GEN2|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y18_N28
\GEN2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~28_combout\ = (\GEN2|bin_counter\(14) & (\GEN2|Add0~27\ $ (GND))) # (!\GEN2|bin_counter\(14) & ((GND) # (!\GEN2|Add0~27\)))
-- \GEN2|Add0~29\ = CARRY((!\GEN2|Add0~27\) # (!\GEN2|bin_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(14),
	datad => VCC,
	cin => \GEN2|Add0~27\,
	combout => \GEN2|Add0~28_combout\,
	cout => \GEN2|Add0~29\);

-- Location: LCCOMB_X12_Y16_N18
\GEN2|bin_counter[14]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[14]~27_combout\ = !\GEN2|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~28_combout\,
	combout => \GEN2|bin_counter[14]~27_combout\);

-- Location: FF_X12_Y16_N19
\GEN2|bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[14]~27_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(14));

-- Location: LCCOMB_X16_Y18_N30
\GEN2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~30_combout\ = (\GEN2|bin_counter\(15) & (\GEN2|Add0~29\ & VCC)) # (!\GEN2|bin_counter\(15) & (!\GEN2|Add0~29\))
-- \GEN2|Add0~31\ = CARRY((!\GEN2|bin_counter\(15) & !\GEN2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(15),
	datad => VCC,
	cin => \GEN2|Add0~29\,
	combout => \GEN2|Add0~30_combout\,
	cout => \GEN2|Add0~31\);

-- Location: LCCOMB_X12_Y16_N4
\GEN2|bin_counter~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~13_combout\ = (\GEN2|Add0~30_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~30_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~13_combout\);

-- Location: FF_X12_Y16_N5
\GEN2|bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(15));

-- Location: LCCOMB_X12_Y16_N30
\GEN2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~5_combout\ = (\GEN2|bin_counter\(14) & !\GEN2|bin_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(14),
	datac => \GEN2|bin_counter\(15),
	combout => \GEN2|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y16_N6
\GEN2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~7_combout\ = (!\GEN2|bin_counter\(13) & (\GEN2|Equal0~6_combout\ & (\GEN2|Equal0~5_combout\ & !\GEN2|bin_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(13),
	datab => \GEN2|Equal0~6_combout\,
	datac => \GEN2|Equal0~5_combout\,
	datad => \GEN2|bin_counter\(12),
	combout => \GEN2|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y18_N14
\GEN2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~8_combout\ = (\GEN2|bin_counter\(6) & (!\GEN2|bin_counter\(7) & (!\GEN2|bin_counter\(5) & !\GEN2|bin_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(6),
	datab => \GEN2|bin_counter\(7),
	datac => \GEN2|bin_counter\(5),
	datad => \GEN2|bin_counter\(4),
	combout => \GEN2|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y17_N0
\GEN2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~32_combout\ = (\GEN2|bin_counter\(16) & ((GND) # (!\GEN2|Add0~31\))) # (!\GEN2|bin_counter\(16) & (\GEN2|Add0~31\ $ (GND)))
-- \GEN2|Add0~33\ = CARRY((\GEN2|bin_counter\(16)) # (!\GEN2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(16),
	datad => VCC,
	cin => \GEN2|Add0~31\,
	combout => \GEN2|Add0~32_combout\,
	cout => \GEN2|Add0~33\);

-- Location: LCCOMB_X15_Y17_N16
\GEN2|bin_counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~12_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~32_combout\,
	combout => \GEN2|bin_counter~12_combout\);

-- Location: FF_X15_Y17_N17
\GEN2|bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(16));

-- Location: LCCOMB_X16_Y17_N2
\GEN2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~34_combout\ = (\GEN2|bin_counter\(17) & (\GEN2|Add0~33\ & VCC)) # (!\GEN2|bin_counter\(17) & (!\GEN2|Add0~33\))
-- \GEN2|Add0~35\ = CARRY((!\GEN2|bin_counter\(17) & !\GEN2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(17),
	datad => VCC,
	cin => \GEN2|Add0~33\,
	combout => \GEN2|Add0~34_combout\,
	cout => \GEN2|Add0~35\);

-- Location: LCCOMB_X15_Y17_N6
\GEN2|bin_counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~11_combout\ = (\GEN2|Add0~34_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~34_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~11_combout\);

-- Location: FF_X15_Y17_N7
\GEN2|bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(17));

-- Location: LCCOMB_X16_Y17_N4
\GEN2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~36_combout\ = (\GEN2|bin_counter\(18) & (\GEN2|Add0~35\ $ (GND))) # (!\GEN2|bin_counter\(18) & ((GND) # (!\GEN2|Add0~35\)))
-- \GEN2|Add0~37\ = CARRY((!\GEN2|Add0~35\) # (!\GEN2|bin_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(18),
	datad => VCC,
	cin => \GEN2|Add0~35\,
	combout => \GEN2|Add0~36_combout\,
	cout => \GEN2|Add0~37\);

-- Location: LCCOMB_X15_Y17_N12
\GEN2|bin_counter[18]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[18]~26_combout\ = !\GEN2|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~36_combout\,
	combout => \GEN2|bin_counter[18]~26_combout\);

-- Location: FF_X15_Y17_N13
\GEN2|bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[18]~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(18));

-- Location: LCCOMB_X16_Y17_N6
\GEN2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~38_combout\ = (\GEN2|bin_counter\(19) & (!\GEN2|Add0~37\)) # (!\GEN2|bin_counter\(19) & (\GEN2|Add0~37\ & VCC))
-- \GEN2|Add0~39\ = CARRY((\GEN2|bin_counter\(19) & !\GEN2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(19),
	datad => VCC,
	cin => \GEN2|Add0~37\,
	combout => \GEN2|Add0~38_combout\,
	cout => \GEN2|Add0~39\);

-- Location: LCCOMB_X15_Y17_N18
\GEN2|bin_counter[19]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[19]~25_combout\ = !\GEN2|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~38_combout\,
	combout => \GEN2|bin_counter[19]~25_combout\);

-- Location: FF_X15_Y17_N19
\GEN2|bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[19]~25_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(19));

-- Location: LCCOMB_X15_Y17_N10
\GEN2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~3_combout\ = (!\GEN2|bin_counter\(17) & (\GEN2|bin_counter\(19) & (\GEN2|bin_counter\(18) & !\GEN2|bin_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(17),
	datab => \GEN2|bin_counter\(19),
	datac => \GEN2|bin_counter\(18),
	datad => \GEN2|bin_counter\(16),
	combout => \GEN2|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y17_N8
\GEN2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~40_combout\ = (\GEN2|bin_counter\(20) & ((GND) # (!\GEN2|Add0~39\))) # (!\GEN2|bin_counter\(20) & (\GEN2|Add0~39\ $ (GND)))
-- \GEN2|Add0~41\ = CARRY((\GEN2|bin_counter\(20)) # (!\GEN2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(20),
	datad => VCC,
	cin => \GEN2|Add0~39\,
	combout => \GEN2|Add0~40_combout\,
	cout => \GEN2|Add0~41\);

-- Location: LCCOMB_X15_Y17_N14
\GEN2|bin_counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~10_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~40_combout\,
	combout => \GEN2|bin_counter~10_combout\);

-- Location: FF_X15_Y17_N15
\GEN2|bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(20));

-- Location: LCCOMB_X16_Y17_N10
\GEN2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~42_combout\ = (\GEN2|bin_counter\(21) & (\GEN2|Add0~41\ & VCC)) # (!\GEN2|bin_counter\(21) & (!\GEN2|Add0~41\))
-- \GEN2|Add0~43\ = CARRY((!\GEN2|bin_counter\(21) & !\GEN2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(21),
	datad => VCC,
	cin => \GEN2|Add0~41\,
	combout => \GEN2|Add0~42_combout\,
	cout => \GEN2|Add0~43\);

-- Location: LCCOMB_X15_Y17_N20
\GEN2|bin_counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~9_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~42_combout\,
	combout => \GEN2|bin_counter~9_combout\);

-- Location: FF_X15_Y17_N21
\GEN2|bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(21));

-- Location: LCCOMB_X16_Y17_N12
\GEN2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~44_combout\ = (\GEN2|bin_counter\(22) & (\GEN2|Add0~43\ $ (GND))) # (!\GEN2|bin_counter\(22) & ((GND) # (!\GEN2|Add0~43\)))
-- \GEN2|Add0~45\ = CARRY((!\GEN2|Add0~43\) # (!\GEN2|bin_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(22),
	datad => VCC,
	cin => \GEN2|Add0~43\,
	combout => \GEN2|Add0~44_combout\,
	cout => \GEN2|Add0~45\);

-- Location: LCCOMB_X12_Y16_N16
\GEN2|bin_counter[22]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[22]~24_combout\ = !\GEN2|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~44_combout\,
	combout => \GEN2|bin_counter[22]~24_combout\);

-- Location: FF_X12_Y16_N17
\GEN2|bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[22]~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(22));

-- Location: LCCOMB_X16_Y17_N14
\GEN2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~46_combout\ = (\GEN2|bin_counter\(23) & (\GEN2|Add0~45\ & VCC)) # (!\GEN2|bin_counter\(23) & (!\GEN2|Add0~45\))
-- \GEN2|Add0~47\ = CARRY((!\GEN2|bin_counter\(23) & !\GEN2|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(23),
	datad => VCC,
	cin => \GEN2|Add0~45\,
	combout => \GEN2|Add0~46_combout\,
	cout => \GEN2|Add0~47\);

-- Location: LCCOMB_X15_Y17_N26
\GEN2|bin_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~8_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~46_combout\,
	combout => \GEN2|bin_counter~8_combout\);

-- Location: FF_X15_Y17_N27
\GEN2|bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(23));

-- Location: LCCOMB_X16_Y17_N16
\GEN2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~48_combout\ = (\GEN2|bin_counter\(24) & ((GND) # (!\GEN2|Add0~47\))) # (!\GEN2|bin_counter\(24) & (\GEN2|Add0~47\ $ (GND)))
-- \GEN2|Add0~49\ = CARRY((\GEN2|bin_counter\(24)) # (!\GEN2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(24),
	datad => VCC,
	cin => \GEN2|Add0~47\,
	combout => \GEN2|Add0~48_combout\,
	cout => \GEN2|Add0~49\);

-- Location: LCCOMB_X17_Y18_N18
\GEN2|bin_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~7_combout\ = (\GEN2|Add0~48_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~48_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~7_combout\);

-- Location: FF_X17_Y18_N19
\GEN2|bin_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(24));

-- Location: LCCOMB_X16_Y17_N18
\GEN2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~50_combout\ = (\GEN2|bin_counter\(25) & (\GEN2|Add0~49\ & VCC)) # (!\GEN2|bin_counter\(25) & (!\GEN2|Add0~49\))
-- \GEN2|Add0~51\ = CARRY((!\GEN2|bin_counter\(25) & !\GEN2|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(25),
	datad => VCC,
	cin => \GEN2|Add0~49\,
	combout => \GEN2|Add0~50_combout\,
	cout => \GEN2|Add0~51\);

-- Location: LCCOMB_X17_Y18_N24
\GEN2|bin_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~6_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~50_combout\,
	combout => \GEN2|bin_counter~6_combout\);

-- Location: FF_X17_Y18_N25
\GEN2|bin_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(25));

-- Location: LCCOMB_X16_Y17_N20
\GEN2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~52_combout\ = (\GEN2|bin_counter\(26) & ((GND) # (!\GEN2|Add0~51\))) # (!\GEN2|bin_counter\(26) & (\GEN2|Add0~51\ $ (GND)))
-- \GEN2|Add0~53\ = CARRY((\GEN2|bin_counter\(26)) # (!\GEN2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(26),
	datad => VCC,
	cin => \GEN2|Add0~51\,
	combout => \GEN2|Add0~52_combout\,
	cout => \GEN2|Add0~53\);

-- Location: LCCOMB_X17_Y18_N30
\GEN2|bin_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~5_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~52_combout\,
	combout => \GEN2|bin_counter~5_combout\);

-- Location: FF_X17_Y18_N31
\GEN2|bin_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(26));

-- Location: LCCOMB_X16_Y17_N22
\GEN2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~54_combout\ = (\GEN2|bin_counter\(27) & (\GEN2|Add0~53\ & VCC)) # (!\GEN2|bin_counter\(27) & (!\GEN2|Add0~53\))
-- \GEN2|Add0~55\ = CARRY((!\GEN2|bin_counter\(27) & !\GEN2|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(27),
	datad => VCC,
	cin => \GEN2|Add0~53\,
	combout => \GEN2|Add0~54_combout\,
	cout => \GEN2|Add0~55\);

-- Location: LCCOMB_X17_Y18_N4
\GEN2|bin_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~4_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datad => \GEN2|Add0~54_combout\,
	combout => \GEN2|bin_counter~4_combout\);

-- Location: FF_X17_Y18_N5
\GEN2|bin_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(27));

-- Location: LCCOMB_X16_Y17_N24
\GEN2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~56_combout\ = (\GEN2|bin_counter\(28) & ((GND) # (!\GEN2|Add0~55\))) # (!\GEN2|bin_counter\(28) & (\GEN2|Add0~55\ $ (GND)))
-- \GEN2|Add0~57\ = CARRY((\GEN2|bin_counter\(28)) # (!\GEN2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(28),
	datad => VCC,
	cin => \GEN2|Add0~55\,
	combout => \GEN2|Add0~56_combout\,
	cout => \GEN2|Add0~57\);

-- Location: LCCOMB_X15_Y17_N30
\GEN2|bin_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~3_combout\ = (\GEN2|Add0~56_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~56_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~3_combout\);

-- Location: FF_X15_Y17_N31
\GEN2|bin_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(28));

-- Location: LCCOMB_X16_Y17_N26
\GEN2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~58_combout\ = (\GEN2|bin_counter\(29) & (\GEN2|Add0~57\ & VCC)) # (!\GEN2|bin_counter\(29) & (!\GEN2|Add0~57\))
-- \GEN2|Add0~59\ = CARRY((!\GEN2|bin_counter\(29) & !\GEN2|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(29),
	datad => VCC,
	cin => \GEN2|Add0~57\,
	combout => \GEN2|Add0~58_combout\,
	cout => \GEN2|Add0~59\);

-- Location: LCCOMB_X15_Y17_N28
\GEN2|bin_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~2_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Equal0~10_combout\,
	datad => \GEN2|Add0~58_combout\,
	combout => \GEN2|bin_counter~2_combout\);

-- Location: FF_X15_Y17_N29
\GEN2|bin_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(29));

-- Location: LCCOMB_X16_Y17_N28
\GEN2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~60_combout\ = (\GEN2|bin_counter\(30) & ((GND) # (!\GEN2|Add0~59\))) # (!\GEN2|bin_counter\(30) & (\GEN2|Add0~59\ $ (GND)))
-- \GEN2|Add0~61\ = CARRY((\GEN2|bin_counter\(30)) # (!\GEN2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(30),
	datad => VCC,
	cin => \GEN2|Add0~59\,
	combout => \GEN2|Add0~60_combout\,
	cout => \GEN2|Add0~61\);

-- Location: LCCOMB_X15_Y17_N2
\GEN2|bin_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~1_combout\ = (\GEN2|Add0~60_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~60_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~1_combout\);

-- Location: FF_X15_Y17_N3
\GEN2|bin_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(30));

-- Location: LCCOMB_X16_Y17_N30
\GEN2|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~62_combout\ = \GEN2|bin_counter\(31) $ (!\GEN2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(31),
	cin => \GEN2|Add0~61\,
	combout => \GEN2|Add0~62_combout\);

-- Location: LCCOMB_X15_Y17_N0
\GEN2|bin_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~0_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~62_combout\,
	combout => \GEN2|bin_counter~0_combout\);

-- Location: FF_X15_Y17_N1
\GEN2|bin_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(31));

-- Location: LCCOMB_X15_Y17_N24
\GEN2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~0_combout\ = (!\GEN2|bin_counter\(29) & (!\GEN2|bin_counter\(31) & (!\GEN2|bin_counter\(28) & !\GEN2|bin_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(29),
	datab => \GEN2|bin_counter\(31),
	datac => \GEN2|bin_counter\(28),
	datad => \GEN2|bin_counter\(30),
	combout => \GEN2|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y17_N8
\GEN2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~2_combout\ = (!\GEN2|bin_counter\(23) & (!\GEN2|bin_counter\(21) & (!\GEN2|bin_counter\(20) & \GEN2|bin_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(23),
	datab => \GEN2|bin_counter\(21),
	datac => \GEN2|bin_counter\(20),
	datad => \GEN2|bin_counter\(22),
	combout => \GEN2|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y18_N28
\GEN2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~1_combout\ = (!\GEN2|bin_counter\(26) & (!\GEN2|bin_counter\(25) & (!\GEN2|bin_counter\(27) & !\GEN2|bin_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(26),
	datab => \GEN2|bin_counter\(25),
	datac => \GEN2|bin_counter\(27),
	datad => \GEN2|bin_counter\(24),
	combout => \GEN2|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y17_N4
\GEN2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~4_combout\ = (\GEN2|Equal0~3_combout\ & (\GEN2|Equal0~0_combout\ & (\GEN2|Equal0~2_combout\ & \GEN2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~3_combout\,
	datab => \GEN2|Equal0~0_combout\,
	datac => \GEN2|Equal0~2_combout\,
	datad => \GEN2|Equal0~1_combout\,
	combout => \GEN2|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y18_N26
\GEN2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~10_combout\ = (\GEN2|Equal0~9_combout\ & (\GEN2|Equal0~7_combout\ & (\GEN2|Equal0~8_combout\ & \GEN2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~9_combout\,
	datab => \GEN2|Equal0~7_combout\,
	datac => \GEN2|Equal0~8_combout\,
	datad => \GEN2|Equal0~4_combout\,
	combout => \GEN2|Equal0~10_combout\);

-- Location: FF_X17_Y18_N27
\GEN2|terminal_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|Equal0~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|terminal_count~q\);

-- Location: LCCOMB_X17_Y18_N8
\GEN2|strobe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|strobe~0_combout\ = \GEN2|strobe~q\ $ (\GEN2|terminal_count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|strobe~q\,
	datad => \GEN2|terminal_count~q\,
	combout => \GEN2|strobe~0_combout\);

-- Location: FF_X17_Y18_N9
\GEN2|strobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|strobe~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|strobe~q\);

-- Location: LCCOMB_X12_Y8_N4
\right_input[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_input[0]~0_combout\ = (\state_machine|current_state.S0~q\ & (\GEN2|strobe~q\ & ((\state_machine|current_state.S8~q\) # (\state_machine|current_state.S9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S8~q\,
	datab => \state_machine|current_state.S0~q\,
	datac => \state_machine|current_state.S9~q\,
	datad => \GEN2|strobe~q\,
	combout => \right_input[0]~0_combout\);

-- Location: LCCOMB_X11_Y16_N18
\Display_driver|DOUT_TEMP[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|DOUT_TEMP[6]~1_combout\ = (!\state_machine|current_state.S13~q\ & (!\state_machine|east_west[3]~16_combout\ & !\right_input[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S13~q\,
	datac => \state_machine|east_west[3]~16_combout\,
	datad => \right_input[0]~0_combout\,
	combout => \Display_driver|DOUT_TEMP[6]~1_combout\);

-- Location: LCCOMB_X13_Y21_N24
\Display_driver|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[0]~0_combout\ = !\Display_driver|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_driver|clk_proc:COUNT[0]~q\,
	combout => \Display_driver|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X13_Y21_N25
\Display_driver|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X20_Y17_N10
\Display_driver|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[1]~1_combout\ = (\Display_driver|clk_proc:COUNT[1]~q\ & (\Display_driver|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\Display_driver|clk_proc:COUNT[1]~q\ & (\Display_driver|clk_proc:COUNT[0]~q\ & VCC))
-- \Display_driver|clk_proc:COUNT[1]~2\ = CARRY((\Display_driver|clk_proc:COUNT[1]~q\ & \Display_driver|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_driver|clk_proc:COUNT[1]~q\,
	datab => \Display_driver|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \Display_driver|clk_proc:COUNT[1]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[1]~2\);

-- Location: FF_X20_Y17_N11
\Display_driver|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X20_Y17_N12
\Display_driver|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[2]~1_combout\ = (\Display_driver|clk_proc:COUNT[2]~q\ & (!\Display_driver|clk_proc:COUNT[1]~2\)) # (!\Display_driver|clk_proc:COUNT[2]~q\ & ((\Display_driver|clk_proc:COUNT[1]~2\) # (GND)))
-- \Display_driver|clk_proc:COUNT[2]~2\ = CARRY((!\Display_driver|clk_proc:COUNT[1]~2\) # (!\Display_driver|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_driver|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \Display_driver|clk_proc:COUNT[1]~2\,
	combout => \Display_driver|clk_proc:COUNT[2]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[2]~2\);

-- Location: FF_X20_Y17_N13
\Display_driver|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X20_Y17_N14
\Display_driver|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[3]~1_combout\ = (\Display_driver|clk_proc:COUNT[3]~q\ & (\Display_driver|clk_proc:COUNT[2]~2\ $ (GND))) # (!\Display_driver|clk_proc:COUNT[3]~q\ & (!\Display_driver|clk_proc:COUNT[2]~2\ & VCC))
-- \Display_driver|clk_proc:COUNT[3]~2\ = CARRY((\Display_driver|clk_proc:COUNT[3]~q\ & !\Display_driver|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_driver|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \Display_driver|clk_proc:COUNT[2]~2\,
	combout => \Display_driver|clk_proc:COUNT[3]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[3]~2\);

-- Location: FF_X20_Y17_N15
\Display_driver|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X20_Y17_N16
\Display_driver|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[4]~1_combout\ = (\Display_driver|clk_proc:COUNT[4]~q\ & (!\Display_driver|clk_proc:COUNT[3]~2\)) # (!\Display_driver|clk_proc:COUNT[4]~q\ & ((\Display_driver|clk_proc:COUNT[3]~2\) # (GND)))
-- \Display_driver|clk_proc:COUNT[4]~2\ = CARRY((!\Display_driver|clk_proc:COUNT[3]~2\) # (!\Display_driver|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_driver|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \Display_driver|clk_proc:COUNT[3]~2\,
	combout => \Display_driver|clk_proc:COUNT[4]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[4]~2\);

-- Location: FF_X20_Y17_N17
\Display_driver|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X20_Y17_N18
\Display_driver|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[5]~1_combout\ = (\Display_driver|clk_proc:COUNT[5]~q\ & (\Display_driver|clk_proc:COUNT[4]~2\ $ (GND))) # (!\Display_driver|clk_proc:COUNT[5]~q\ & (!\Display_driver|clk_proc:COUNT[4]~2\ & VCC))
-- \Display_driver|clk_proc:COUNT[5]~2\ = CARRY((\Display_driver|clk_proc:COUNT[5]~q\ & !\Display_driver|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_driver|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \Display_driver|clk_proc:COUNT[4]~2\,
	combout => \Display_driver|clk_proc:COUNT[5]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[5]~2\);

-- Location: FF_X20_Y17_N19
\Display_driver|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X20_Y17_N20
\Display_driver|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[6]~1_combout\ = (\Display_driver|clk_proc:COUNT[6]~q\ & (!\Display_driver|clk_proc:COUNT[5]~2\)) # (!\Display_driver|clk_proc:COUNT[6]~q\ & ((\Display_driver|clk_proc:COUNT[5]~2\) # (GND)))
-- \Display_driver|clk_proc:COUNT[6]~2\ = CARRY((!\Display_driver|clk_proc:COUNT[5]~2\) # (!\Display_driver|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_driver|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \Display_driver|clk_proc:COUNT[5]~2\,
	combout => \Display_driver|clk_proc:COUNT[6]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[6]~2\);

-- Location: FF_X20_Y17_N21
\Display_driver|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X20_Y17_N22
\Display_driver|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[7]~1_combout\ = (\Display_driver|clk_proc:COUNT[7]~q\ & (\Display_driver|clk_proc:COUNT[6]~2\ $ (GND))) # (!\Display_driver|clk_proc:COUNT[7]~q\ & (!\Display_driver|clk_proc:COUNT[6]~2\ & VCC))
-- \Display_driver|clk_proc:COUNT[7]~2\ = CARRY((\Display_driver|clk_proc:COUNT[7]~q\ & !\Display_driver|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_driver|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \Display_driver|clk_proc:COUNT[6]~2\,
	combout => \Display_driver|clk_proc:COUNT[7]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[7]~2\);

-- Location: FF_X20_Y17_N23
\Display_driver|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X20_Y17_N24
\Display_driver|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[8]~1_combout\ = (\Display_driver|clk_proc:COUNT[8]~q\ & (!\Display_driver|clk_proc:COUNT[7]~2\)) # (!\Display_driver|clk_proc:COUNT[8]~q\ & ((\Display_driver|clk_proc:COUNT[7]~2\) # (GND)))
-- \Display_driver|clk_proc:COUNT[8]~2\ = CARRY((!\Display_driver|clk_proc:COUNT[7]~2\) # (!\Display_driver|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_driver|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \Display_driver|clk_proc:COUNT[7]~2\,
	combout => \Display_driver|clk_proc:COUNT[8]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[8]~2\);

-- Location: FF_X20_Y17_N25
\Display_driver|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X20_Y17_N26
\Display_driver|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[9]~1_combout\ = (\Display_driver|clk_proc:COUNT[9]~q\ & (\Display_driver|clk_proc:COUNT[8]~2\ $ (GND))) # (!\Display_driver|clk_proc:COUNT[9]~q\ & (!\Display_driver|clk_proc:COUNT[8]~2\ & VCC))
-- \Display_driver|clk_proc:COUNT[9]~2\ = CARRY((\Display_driver|clk_proc:COUNT[9]~q\ & !\Display_driver|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_driver|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \Display_driver|clk_proc:COUNT[8]~2\,
	combout => \Display_driver|clk_proc:COUNT[9]~1_combout\,
	cout => \Display_driver|clk_proc:COUNT[9]~2\);

-- Location: FF_X20_Y17_N27
\Display_driver|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X20_Y17_N28
\Display_driver|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|clk_proc:COUNT[10]~1_combout\ = \Display_driver|clk_proc:COUNT[9]~2\ $ (\Display_driver|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Display_driver|clk_proc:COUNT[10]~q\,
	cin => \Display_driver|clk_proc:COUNT[9]~2\,
	combout => \Display_driver|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X20_Y17_N29
\Display_driver|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Display_driver|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_driver|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X12_Y8_N6
\state_machine|north_south[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|north_south[3]~3_combout\ = (\left_input[0]~3_combout\ & (\left_input[0]~2_combout\ & ((\state_machine|current_state.S6~q\) # (\state_machine|current_state.S7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_input[0]~3_combout\,
	datab => \left_input[0]~2_combout\,
	datac => \state_machine|current_state.S6~q\,
	datad => \state_machine|current_state.S7~q\,
	combout => \state_machine|north_south[3]~3_combout\);

-- Location: LCCOMB_X12_Y8_N28
\left_input[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_input[0]~4_combout\ = (\state_machine|current_state.S1~q\ & (((\GEN2|strobe~q\)))) # (!\state_machine|current_state.S1~q\ & ((\state_machine|current_state.S0~q\ & (!\left_input[0]~3_combout\)) # (!\state_machine|current_state.S0~q\ & 
-- ((\GEN2|strobe~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S1~q\,
	datab => \left_input[0]~3_combout\,
	datac => \state_machine|current_state.S0~q\,
	datad => \GEN2|strobe~q\,
	combout => \left_input[0]~4_combout\);

-- Location: LCCOMB_X11_Y16_N24
\Display_driver|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|DOUT_TEMP[6]~0_combout\ = (!\state_machine|east_west[0]~13_combout\ & (\state_machine|north_south[3]~3_combout\ & (!\Display_driver|clk_proc:COUNT[10]~q\ & !\left_input[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|east_west[0]~13_combout\,
	datab => \state_machine|north_south[3]~3_combout\,
	datac => \Display_driver|clk_proc:COUNT[10]~q\,
	datad => \left_input[0]~4_combout\,
	combout => \Display_driver|DOUT_TEMP[6]~0_combout\);

-- Location: LCCOMB_X11_Y16_N20
\Display_driver|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|DOUT_TEMP[6]~2_combout\ = (\Display_driver|DOUT_TEMP[6]~0_combout\) # ((\state_machine|east_west[0]~13_combout\ & (\Display_driver|DOUT_TEMP[6]~1_combout\ & \Display_driver|clk_proc:COUNT[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|east_west[0]~13_combout\,
	datab => \Display_driver|DOUT_TEMP[6]~1_combout\,
	datac => \Display_driver|clk_proc:COUNT[10]~q\,
	datad => \Display_driver|DOUT_TEMP[6]~0_combout\,
	combout => \Display_driver|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X11_Y16_N6
\Display_driver|DOUT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|DOUT[3]~1_combout\ = (\Display_driver|clk_proc:COUNT[10]~q\ & ((\state_machine|current_state.S13~q\) # (\state_machine|east_west[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S13~q\,
	datab => \state_machine|east_west[3]~16_combout\,
	datac => \Display_driver|clk_proc:COUNT[10]~q\,
	combout => \Display_driver|DOUT[3]~1_combout\);

-- Location: LCCOMB_X12_Y8_N10
\right_input[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_input[0]~1_combout\ = (\right_input[0]~0_combout\) # ((\state_machine|east_west[3]~16_combout\ & ((\state_machine|east_west[0]~15_combout\))) # (!\state_machine|east_west[3]~16_combout\ & (\state_machine|current_state.S13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S13~q\,
	datab => \state_machine|east_west[3]~16_combout\,
	datac => \right_input[0]~0_combout\,
	datad => \state_machine|east_west[0]~15_combout\,
	combout => \right_input[0]~1_combout\);

-- Location: LCCOMB_X11_Y16_N10
\Display_driver|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|DOUT[0]~0_combout\ = (\state_machine|east_west[0]~13_combout\ & (!\state_machine|north_south[3]~3_combout\ & (!\Display_driver|clk_proc:COUNT[10]~q\ & !\left_input[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|east_west[0]~13_combout\,
	datab => \state_machine|north_south[3]~3_combout\,
	datac => \Display_driver|clk_proc:COUNT[10]~q\,
	datad => \left_input[0]~4_combout\,
	combout => \Display_driver|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y16_N0
\Display_driver|DOUT[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|DOUT[0]~2_combout\ = (\Display_driver|DOUT[0]~0_combout\) # ((\Display_driver|DOUT[3]~1_combout\ & (!\right_input[0]~1_combout\ & !\state_machine|east_west[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_driver|DOUT[3]~1_combout\,
	datab => \right_input[0]~1_combout\,
	datac => \Display_driver|DOUT[0]~0_combout\,
	datad => \state_machine|east_west[0]~13_combout\,
	combout => \Display_driver|DOUT[0]~2_combout\);

-- Location: LCCOMB_X11_Y16_N26
\Display_driver|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|DOUT[3]~3_combout\ = (!\state_machine|east_west[0]~13_combout\ & (!\state_machine|north_south[3]~3_combout\ & (!\Display_driver|clk_proc:COUNT[10]~q\ & \left_input[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|east_west[0]~13_combout\,
	datab => \state_machine|north_south[3]~3_combout\,
	datac => \Display_driver|clk_proc:COUNT[10]~q\,
	datad => \left_input[0]~4_combout\,
	combout => \Display_driver|DOUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y16_N28
\Display_driver|DOUT[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Display_driver|DOUT[3]~4_combout\ = (\Display_driver|DOUT[3]~3_combout\) # ((\right_input[0]~1_combout\ & (\Display_driver|DOUT[3]~1_combout\ & \state_machine|east_west[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_driver|DOUT[3]~3_combout\,
	datab => \right_input[0]~1_combout\,
	datac => \Display_driver|DOUT[3]~1_combout\,
	datad => \state_machine|east_west[0]~13_combout\,
	combout => \Display_driver|DOUT[3]~4_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


