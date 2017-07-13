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

-- DATE "07/06/2017 18:10:33"

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

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
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
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
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
SIGNAL \bin_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
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
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bin_counter[0]~68_combout\ : std_logic;
SIGNAL \bin_counter[1]~22_combout\ : std_logic;
SIGNAL \bin_counter[1]~23\ : std_logic;
SIGNAL \bin_counter[2]~24_combout\ : std_logic;
SIGNAL \bin_counter[2]~25\ : std_logic;
SIGNAL \bin_counter[3]~26_combout\ : std_logic;
SIGNAL \bin_counter[3]~27\ : std_logic;
SIGNAL \bin_counter[4]~28_combout\ : std_logic;
SIGNAL \bin_counter[4]~29\ : std_logic;
SIGNAL \bin_counter[5]~30_combout\ : std_logic;
SIGNAL \bin_counter[5]~31\ : std_logic;
SIGNAL \bin_counter[6]~32_combout\ : std_logic;
SIGNAL \bin_counter[6]~33\ : std_logic;
SIGNAL \bin_counter[7]~34_combout\ : std_logic;
SIGNAL \bin_counter[7]~35\ : std_logic;
SIGNAL \bin_counter[8]~36_combout\ : std_logic;
SIGNAL \bin_counter[8]~37\ : std_logic;
SIGNAL \bin_counter[9]~38_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~2_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~4_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~6_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~8_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~10_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~12_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~14_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~16_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~18_cout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~19_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \right_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \bin_counter[9]~39\ : std_logic;
SIGNAL \bin_counter[1]~41_cout\ : std_logic;
SIGNAL \bin_counter[11]~42_combout\ : std_logic;
SIGNAL \bin_counter[11]~43\ : std_logic;
SIGNAL \bin_counter[12]~44_combout\ : std_logic;
SIGNAL \bin_counter[12]~45\ : std_logic;
SIGNAL \bin_counter[13]~46_combout\ : std_logic;
SIGNAL \bin_counter[13]~47\ : std_logic;
SIGNAL \bin_counter[14]~48_combout\ : std_logic;
SIGNAL \bin_counter[14]~49\ : std_logic;
SIGNAL \bin_counter[15]~50_combout\ : std_logic;
SIGNAL \bin_counter[15]~51\ : std_logic;
SIGNAL \bin_counter[16]~52_combout\ : std_logic;
SIGNAL \bin_counter[16]~53\ : std_logic;
SIGNAL \bin_counter[17]~54_combout\ : std_logic;
SIGNAL \bin_counter[17]~55\ : std_logic;
SIGNAL \bin_counter[18]~56_combout\ : std_logic;
SIGNAL \bin_counter[18]~57\ : std_logic;
SIGNAL \bin_counter[19]~58_combout\ : std_logic;
SIGNAL \bin_counter[19]~59\ : std_logic;
SIGNAL \bin_counter[20]~60_combout\ : std_logic;
SIGNAL \bin_counter[20]~61\ : std_logic;
SIGNAL \bin_counter[21]~62_combout\ : std_logic;
SIGNAL \bin_counter[21]~63\ : std_logic;
SIGNAL \bin_counter[22]~64_combout\ : std_logic;
SIGNAL \bin_counter[22]~65\ : std_logic;
SIGNAL \bin_counter[23]~66_combout\ : std_logic;
SIGNAL \bin_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \state_machine|Selector4~0_combout\ : std_logic;
SIGNAL \state_machine|Selector4~1_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \state_machine|current_state.S4~q\ : std_logic;
SIGNAL \state_machine|Selector5~0_combout\ : std_logic;
SIGNAL \state_machine|Selector5~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S5~q\ : std_logic;
SIGNAL \state_machine|Selector6~0_combout\ : std_logic;
SIGNAL \state_machine|Selector6~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S6~q\ : std_logic;
SIGNAL \state_machine|Selector7~0_combout\ : std_logic;
SIGNAL \state_machine|Selector7~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S7~q\ : std_logic;
SIGNAL \state_machine|Selector8~0_combout\ : std_logic;
SIGNAL \state_machine|Selector8~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S8~q\ : std_logic;
SIGNAL \state_machine|Selector9~0_combout\ : std_logic;
SIGNAL \state_machine|Selector9~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S9~q\ : std_logic;
SIGNAL \state_machine|Selector10~0_combout\ : std_logic;
SIGNAL \state_machine|Selector10~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S10~q\ : std_logic;
SIGNAL \state_machine|Selector11~0_combout\ : std_logic;
SIGNAL \state_machine|Selector11~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S11~q\ : std_logic;
SIGNAL \state_machine|output[2]~3_combout\ : std_logic;
SIGNAL \state_machine|output[2]~4_combout\ : std_logic;
SIGNAL \state_machine|current_state.s15~7_combout\ : std_logic;
SIGNAL \state_machine|output[1]~8_combout\ : std_logic;
SIGNAL \state_machine|output[1]~9_combout\ : std_logic;
SIGNAL \state_machine|output[1]~10_combout\ : std_logic;
SIGNAL \state_machine|current_state.s15~3_combout\ : std_logic;
SIGNAL \state_machine|current_state.s15~4_combout\ : std_logic;
SIGNAL \leds~2_combout\ : std_logic;
SIGNAL \state_machine|Selector2~0_combout\ : std_logic;
SIGNAL \state_machine|Selector2~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S2~q\ : std_logic;
SIGNAL \state_machine|Selector1~0_combout\ : std_logic;
SIGNAL \state_machine|Selector1~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S1~q\ : std_logic;
SIGNAL \state_machine|Selector0~0_combout\ : std_logic;
SIGNAL \state_machine|Selector0~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S0~q\ : std_logic;
SIGNAL \state_machine|output[0]~1_combout\ : std_logic;
SIGNAL \comp|bit4|compx1_mag~3_combout\ : std_logic;
SIGNAL \comp|bit3|compx1_mag[1]~0_combout\ : std_logic;
SIGNAL \state_machine|output[2]~11_combout\ : std_logic;
SIGNAL \comp|bit4|compx1_mag~2_combout\ : std_logic;
SIGNAL \comp|bit4|compx1_mag~0_combout\ : std_logic;
SIGNAL \state_machine|current_state.s15~2_combout\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \state_machine|Selector3~0_combout\ : std_logic;
SIGNAL \state_machine|Selector3~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S3~q\ : std_logic;
SIGNAL \state_machine|output[3]~0_combout\ : std_logic;
SIGNAL \state_machine|output[3]~2_combout\ : std_logic;
SIGNAL \comp|bit4|compx1_mag[1]~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.s15~5_combout\ : std_logic;
SIGNAL \state_machine|current_state.s15~6_combout\ : std_logic;
SIGNAL \state_machine|current_state.s15~q\ : std_logic;
SIGNAL \state_machine|Selector14~0_combout\ : std_logic;
SIGNAL \state_machine|Selector14~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S14~q\ : std_logic;
SIGNAL \state_machine|Selector13~0_combout\ : std_logic;
SIGNAL \state_machine|Selector13~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S13~q\ : std_logic;
SIGNAL \state_machine|Selector12~0_combout\ : std_logic;
SIGNAL \state_machine|Selector12~1_combout\ : std_logic;
SIGNAL \state_machine|current_state.S12~q\ : std_logic;
SIGNAL \state_machine|output[0]~6_combout\ : std_logic;
SIGNAL \state_machine|output[0]~5_combout\ : std_logic;
SIGNAL \state_machine|output[0]~7_combout\ : std_logic;
SIGNAL \left_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \output|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \left_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \right_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \output|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \left_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \right_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \output|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \shift_reg|current_state~1_combout\ : std_logic;
SIGNAL \shift_reg|current_state~2_combout\ : std_logic;
SIGNAL \shift_reg|current_state~3_combout\ : std_logic;
SIGNAL \shift_reg|current_state~0_combout\ : std_logic;
SIGNAL \right_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \left_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \output|DOUT[0]~0_combout\ : std_logic;
SIGNAL \right_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \left_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \output|DOUT[2]~2_combout\ : std_logic;
SIGNAL \right_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \left_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \output|DOUT[3]~3_combout\ : std_logic;
SIGNAL \left_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \right_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \output|DOUT[4]~4_combout\ : std_logic;
SIGNAL bin_counter : std_logic_vector(23 DOWNTO 0);
SIGNAL \shift_reg|current_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \output|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \output|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \shift_reg|ALT_INV_current_state\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_leds~2_combout\ : std_logic;

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

\bin_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(23));
\output|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \output|clk_proc:COUNT[10]~q\;
\output|ALT_INV_DOUT[4]~4_combout\ <= NOT \output|DOUT[4]~4_combout\;
\output|ALT_INV_DOUT[3]~3_combout\ <= NOT \output|DOUT[3]~3_combout\;
\shift_reg|ALT_INV_current_state\(0) <= NOT \shift_reg|current_state\(0);
\ALT_INV_leds~2_combout\ <= NOT \leds~2_combout\;

-- Location: LCCOMB_X11_Y21_N20
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

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \output|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \output|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \output|DOUT_TEMP[6]~2_combout\,
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
	i => \leds~0_combout\,
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
	i => \leds~1_combout\,
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
	i => \ALT_INV_leds~2_combout\,
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
	i => bin_counter(23),
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
	i => \shift_reg|ALT_INV_current_state\(0),
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
	i => \shift_reg|current_state\(1),
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
	i => \shift_reg|current_state\(2),
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
	i => \shift_reg|current_state\(3),
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
	i => \output|DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|DOUT[2]~2_combout\,
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
	i => \output|ALT_INV_DOUT[3]~3_combout\,
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
	i => \output|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|clk_proc:COUNT[10]~q\,
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
	i => \output|ALT_INV_clk_proc:COUNT[10]~q\,
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

-- Location: LCCOMB_X12_Y14_N4
\bin_counter[0]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~68_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~68_combout\);

-- Location: FF_X12_Y14_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X12_Y14_N10
\bin_counter[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~22_combout\ = (bin_counter(1) & (bin_counter(0) $ (VCC))) # (!bin_counter(1) & (bin_counter(0) & VCC))
-- \bin_counter[1]~23\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	combout => \bin_counter[1]~22_combout\,
	cout => \bin_counter[1]~23\);

-- Location: FF_X12_Y14_N11
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X12_Y14_N12
\bin_counter[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~24_combout\ = (bin_counter(2) & (!\bin_counter[1]~23\)) # (!bin_counter(2) & ((\bin_counter[1]~23\) # (GND)))
-- \bin_counter[2]~25\ = CARRY((!\bin_counter[1]~23\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~23\,
	combout => \bin_counter[2]~24_combout\,
	cout => \bin_counter[2]~25\);

-- Location: FF_X12_Y14_N13
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X12_Y14_N14
\bin_counter[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~26_combout\ = (bin_counter(3) & (\bin_counter[2]~25\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~25\ & VCC))
-- \bin_counter[3]~27\ = CARRY((bin_counter(3) & !\bin_counter[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~25\,
	combout => \bin_counter[3]~26_combout\,
	cout => \bin_counter[3]~27\);

-- Location: FF_X12_Y14_N15
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X12_Y14_N16
\bin_counter[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~28_combout\ = (bin_counter(4) & (!\bin_counter[3]~27\)) # (!bin_counter(4) & ((\bin_counter[3]~27\) # (GND)))
-- \bin_counter[4]~29\ = CARRY((!\bin_counter[3]~27\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~27\,
	combout => \bin_counter[4]~28_combout\,
	cout => \bin_counter[4]~29\);

-- Location: FF_X12_Y14_N17
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X12_Y14_N18
\bin_counter[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~30_combout\ = (bin_counter(5) & (\bin_counter[4]~29\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~29\ & VCC))
-- \bin_counter[5]~31\ = CARRY((bin_counter(5) & !\bin_counter[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~29\,
	combout => \bin_counter[5]~30_combout\,
	cout => \bin_counter[5]~31\);

-- Location: FF_X12_Y14_N19
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X12_Y14_N20
\bin_counter[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~32_combout\ = (bin_counter(6) & (!\bin_counter[5]~31\)) # (!bin_counter(6) & ((\bin_counter[5]~31\) # (GND)))
-- \bin_counter[6]~33\ = CARRY((!\bin_counter[5]~31\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~31\,
	combout => \bin_counter[6]~32_combout\,
	cout => \bin_counter[6]~33\);

-- Location: FF_X12_Y14_N21
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X12_Y14_N22
\bin_counter[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~34_combout\ = (bin_counter(7) & (\bin_counter[6]~33\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~33\ & VCC))
-- \bin_counter[7]~35\ = CARRY((bin_counter(7) & !\bin_counter[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~33\,
	combout => \bin_counter[7]~34_combout\,
	cout => \bin_counter[7]~35\);

-- Location: FF_X12_Y14_N23
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X12_Y14_N24
\bin_counter[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~36_combout\ = (bin_counter(8) & (!\bin_counter[7]~35\)) # (!bin_counter(8) & ((\bin_counter[7]~35\) # (GND)))
-- \bin_counter[8]~37\ = CARRY((!\bin_counter[7]~35\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~35\,
	combout => \bin_counter[8]~36_combout\,
	cout => \bin_counter[8]~37\);

-- Location: FF_X12_Y14_N25
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X12_Y14_N26
\bin_counter[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~38_combout\ = (bin_counter(9) & (\bin_counter[8]~37\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~37\ & VCC))
-- \bin_counter[9]~39\ = CARRY((bin_counter(9) & !\bin_counter[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~37\,
	combout => \bin_counter[9]~38_combout\,
	cout => \bin_counter[9]~39\);

-- Location: FF_X12_Y14_N27
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X13_Y14_N6
\output|clk_proc:COUNT[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~2_cout\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	cout => \output|clk_proc:COUNT[10]~2_cout\);

-- Location: LCCOMB_X13_Y14_N8
\output|clk_proc:COUNT[10]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~4_cout\ = CARRY((!\output|clk_proc:COUNT[10]~2_cout\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \output|clk_proc:COUNT[10]~2_cout\,
	cout => \output|clk_proc:COUNT[10]~4_cout\);

-- Location: LCCOMB_X13_Y14_N10
\output|clk_proc:COUNT[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~6_cout\ = CARRY((bin_counter(3) & !\output|clk_proc:COUNT[10]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(3),
	datad => VCC,
	cin => \output|clk_proc:COUNT[10]~4_cout\,
	cout => \output|clk_proc:COUNT[10]~6_cout\);

-- Location: LCCOMB_X13_Y14_N12
\output|clk_proc:COUNT[10]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~8_cout\ = CARRY((!\output|clk_proc:COUNT[10]~6_cout\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(4),
	datad => VCC,
	cin => \output|clk_proc:COUNT[10]~6_cout\,
	cout => \output|clk_proc:COUNT[10]~8_cout\);

-- Location: LCCOMB_X13_Y14_N14
\output|clk_proc:COUNT[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~10_cout\ = CARRY((bin_counter(5) & !\output|clk_proc:COUNT[10]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \output|clk_proc:COUNT[10]~8_cout\,
	cout => \output|clk_proc:COUNT[10]~10_cout\);

-- Location: LCCOMB_X13_Y14_N16
\output|clk_proc:COUNT[10]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~12_cout\ = CARRY((!\output|clk_proc:COUNT[10]~10_cout\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \output|clk_proc:COUNT[10]~10_cout\,
	cout => \output|clk_proc:COUNT[10]~12_cout\);

-- Location: LCCOMB_X13_Y14_N18
\output|clk_proc:COUNT[10]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~14_cout\ = CARRY((bin_counter(7) & !\output|clk_proc:COUNT[10]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(7),
	datad => VCC,
	cin => \output|clk_proc:COUNT[10]~12_cout\,
	cout => \output|clk_proc:COUNT[10]~14_cout\);

-- Location: LCCOMB_X13_Y14_N20
\output|clk_proc:COUNT[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~16_cout\ = CARRY((!\output|clk_proc:COUNT[10]~14_cout\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \output|clk_proc:COUNT[10]~14_cout\,
	cout => \output|clk_proc:COUNT[10]~16_cout\);

-- Location: LCCOMB_X13_Y14_N22
\output|clk_proc:COUNT[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~18_cout\ = CARRY((bin_counter(9) & !\output|clk_proc:COUNT[10]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \output|clk_proc:COUNT[10]~16_cout\,
	cout => \output|clk_proc:COUNT[10]~18_cout\);

-- Location: LCCOMB_X13_Y14_N24
\output|clk_proc:COUNT[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~19_combout\ = \output|clk_proc:COUNT[10]~18_cout\ $ (\output|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \output|clk_proc:COUNT[10]~q\,
	cin => \output|clk_proc:COUNT[10]~18_cout\,
	combout => \output|clk_proc:COUNT[10]~19_combout\);

-- Location: FF_X13_Y14_N25
\output|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[10]~q\);

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

-- Location: LCCOMB_X13_Y13_N8
\right_decoder|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux5~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\sw[3]~input_o\)) # (!\sw[0]~input_o\ & ((\sw[2]~input_o\))))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ & (\sw[3]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \right_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y14_N28
\bin_counter[1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~41_cout\ = CARRY((!\bin_counter[9]~39\) # (!\output|clk_proc:COUNT[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[10]~q\,
	datad => VCC,
	cin => \bin_counter[9]~39\,
	cout => \bin_counter[1]~41_cout\);

-- Location: LCCOMB_X12_Y14_N30
\bin_counter[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~42_combout\ = (bin_counter(11) & (\bin_counter[1]~41_cout\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[1]~41_cout\ & VCC))
-- \bin_counter[11]~43\ = CARRY((bin_counter(11) & !\bin_counter[1]~41_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[1]~41_cout\,
	combout => \bin_counter[11]~42_combout\,
	cout => \bin_counter[11]~43\);

-- Location: FF_X12_Y14_N31
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X12_Y13_N0
\bin_counter[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~44_combout\ = (bin_counter(12) & (!\bin_counter[11]~43\)) # (!bin_counter(12) & ((\bin_counter[11]~43\) # (GND)))
-- \bin_counter[12]~45\ = CARRY((!\bin_counter[11]~43\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~43\,
	combout => \bin_counter[12]~44_combout\,
	cout => \bin_counter[12]~45\);

-- Location: FF_X12_Y13_N1
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X12_Y13_N2
\bin_counter[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~46_combout\ = (bin_counter(13) & (\bin_counter[12]~45\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~45\ & VCC))
-- \bin_counter[13]~47\ = CARRY((bin_counter(13) & !\bin_counter[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~45\,
	combout => \bin_counter[13]~46_combout\,
	cout => \bin_counter[13]~47\);

-- Location: FF_X12_Y13_N3
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X12_Y13_N4
\bin_counter[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~48_combout\ = (bin_counter(14) & (!\bin_counter[13]~47\)) # (!bin_counter(14) & ((\bin_counter[13]~47\) # (GND)))
-- \bin_counter[14]~49\ = CARRY((!\bin_counter[13]~47\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~47\,
	combout => \bin_counter[14]~48_combout\,
	cout => \bin_counter[14]~49\);

-- Location: FF_X12_Y13_N5
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X12_Y13_N6
\bin_counter[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~50_combout\ = (bin_counter(15) & (\bin_counter[14]~49\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~49\ & VCC))
-- \bin_counter[15]~51\ = CARRY((bin_counter(15) & !\bin_counter[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~49\,
	combout => \bin_counter[15]~50_combout\,
	cout => \bin_counter[15]~51\);

-- Location: FF_X12_Y13_N7
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X12_Y13_N8
\bin_counter[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~52_combout\ = (bin_counter(16) & (!\bin_counter[15]~51\)) # (!bin_counter(16) & ((\bin_counter[15]~51\) # (GND)))
-- \bin_counter[16]~53\ = CARRY((!\bin_counter[15]~51\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~51\,
	combout => \bin_counter[16]~52_combout\,
	cout => \bin_counter[16]~53\);

-- Location: FF_X12_Y13_N9
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X12_Y13_N10
\bin_counter[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~54_combout\ = (bin_counter(17) & (\bin_counter[16]~53\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~53\ & VCC))
-- \bin_counter[17]~55\ = CARRY((bin_counter(17) & !\bin_counter[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~53\,
	combout => \bin_counter[17]~54_combout\,
	cout => \bin_counter[17]~55\);

-- Location: FF_X12_Y13_N11
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X12_Y13_N12
\bin_counter[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~56_combout\ = (bin_counter(18) & (!\bin_counter[17]~55\)) # (!bin_counter(18) & ((\bin_counter[17]~55\) # (GND)))
-- \bin_counter[18]~57\ = CARRY((!\bin_counter[17]~55\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~55\,
	combout => \bin_counter[18]~56_combout\,
	cout => \bin_counter[18]~57\);

-- Location: FF_X12_Y13_N13
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X12_Y13_N14
\bin_counter[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~58_combout\ = (bin_counter(19) & (\bin_counter[18]~57\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~57\ & VCC))
-- \bin_counter[19]~59\ = CARRY((bin_counter(19) & !\bin_counter[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~57\,
	combout => \bin_counter[19]~58_combout\,
	cout => \bin_counter[19]~59\);

-- Location: FF_X12_Y13_N15
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X12_Y13_N16
\bin_counter[20]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~60_combout\ = (bin_counter(20) & (!\bin_counter[19]~59\)) # (!bin_counter(20) & ((\bin_counter[19]~59\) # (GND)))
-- \bin_counter[20]~61\ = CARRY((!\bin_counter[19]~59\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~59\,
	combout => \bin_counter[20]~60_combout\,
	cout => \bin_counter[20]~61\);

-- Location: FF_X12_Y13_N17
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X12_Y13_N18
\bin_counter[21]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~62_combout\ = (bin_counter(21) & (\bin_counter[20]~61\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~61\ & VCC))
-- \bin_counter[21]~63\ = CARRY((bin_counter(21) & !\bin_counter[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~61\,
	combout => \bin_counter[21]~62_combout\,
	cout => \bin_counter[21]~63\);

-- Location: FF_X12_Y13_N19
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X12_Y13_N20
\bin_counter[22]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~64_combout\ = (bin_counter(22) & (!\bin_counter[21]~63\)) # (!bin_counter(22) & ((\bin_counter[21]~63\) # (GND)))
-- \bin_counter[22]~65\ = CARRY((!\bin_counter[21]~63\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~63\,
	combout => \bin_counter[22]~64_combout\,
	cout => \bin_counter[22]~65\);

-- Location: FF_X12_Y13_N21
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X12_Y13_N22
\bin_counter[23]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~66_combout\ = bin_counter(23) $ (!\bin_counter[22]~65\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(23),
	cin => \bin_counter[22]~65\,
	combout => \bin_counter[23]~66_combout\);

-- Location: FF_X12_Y13_N23
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

-- Location: CLKCTRL_G2
\bin_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[23]~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y11_N22
\state_machine|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector4~0_combout\ = (\state_machine|current_state.S3~q\ & (((\state_machine|current_state.S4~q\ & !\comp|bit4|compx1_mag[1]~1_combout\)) # (!\leds~2_combout\))) # (!\state_machine|current_state.S3~q\ & (\state_machine|current_state.S4~q\ 
-- & (!\comp|bit4|compx1_mag[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S3~q\,
	datab => \state_machine|current_state.S4~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y11_N20
\state_machine|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector4~1_combout\ = (\state_machine|Selector4~0_combout\) # ((\leds~0_combout\ & \state_machine|current_state.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~0_combout\,
	datac => \state_machine|current_state.S5~q\,
	datad => \state_machine|Selector4~0_combout\,
	combout => \state_machine|Selector4~1_combout\);

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

-- Location: FF_X13_Y11_N21
\state_machine|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector4~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S4~q\);

-- Location: LCCOMB_X12_Y11_N10
\state_machine|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector5~0_combout\ = (\state_machine|current_state.S5~q\ & (((\state_machine|current_state.S4~q\ & !\leds~2_combout\)) # (!\comp|bit4|compx1_mag[1]~1_combout\))) # (!\state_machine|current_state.S5~q\ & 
-- (((\state_machine|current_state.S4~q\ & !\leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S5~q\,
	datab => \comp|bit4|compx1_mag[1]~1_combout\,
	datac => \state_machine|current_state.S4~q\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector5~0_combout\);

-- Location: LCCOMB_X12_Y11_N16
\state_machine|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector5~1_combout\ = (\state_machine|Selector5~0_combout\) # ((\leds~0_combout\ & \state_machine|current_state.S6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~0_combout\,
	datab => \state_machine|current_state.S6~q\,
	datad => \state_machine|Selector5~0_combout\,
	combout => \state_machine|Selector5~1_combout\);

-- Location: FF_X12_Y11_N17
\state_machine|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector5~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S5~q\);

-- Location: LCCOMB_X12_Y11_N12
\state_machine|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector6~0_combout\ = (\state_machine|current_state.S5~q\ & (((!\comp|bit4|compx1_mag[1]~1_combout\ & \state_machine|current_state.S6~q\)) # (!\leds~2_combout\))) # (!\state_machine|current_state.S5~q\ & 
-- (!\comp|bit4|compx1_mag[1]~1_combout\ & (\state_machine|current_state.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S5~q\,
	datab => \comp|bit4|compx1_mag[1]~1_combout\,
	datac => \state_machine|current_state.S6~q\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector6~0_combout\);

-- Location: LCCOMB_X12_Y11_N24
\state_machine|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector6~1_combout\ = (\state_machine|Selector6~0_combout\) # ((\leds~0_combout\ & \state_machine|current_state.S7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~0_combout\,
	datac => \state_machine|current_state.S7~q\,
	datad => \state_machine|Selector6~0_combout\,
	combout => \state_machine|Selector6~1_combout\);

-- Location: FF_X12_Y11_N25
\state_machine|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector6~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S6~q\);

-- Location: LCCOMB_X12_Y11_N28
\state_machine|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector7~0_combout\ = (\state_machine|current_state.S6~q\ & (((!\comp|bit4|compx1_mag[1]~1_combout\ & \state_machine|current_state.S7~q\)) # (!\leds~2_combout\))) # (!\state_machine|current_state.S6~q\ & 
-- (!\comp|bit4|compx1_mag[1]~1_combout\ & (\state_machine|current_state.S7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S6~q\,
	datab => \comp|bit4|compx1_mag[1]~1_combout\,
	datac => \state_machine|current_state.S7~q\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector7~0_combout\);

-- Location: LCCOMB_X12_Y11_N14
\state_machine|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector7~1_combout\ = (\state_machine|Selector7~0_combout\) # ((\leds~0_combout\ & \state_machine|current_state.S8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~0_combout\,
	datac => \state_machine|current_state.S8~q\,
	datad => \state_machine|Selector7~0_combout\,
	combout => \state_machine|Selector7~1_combout\);

-- Location: FF_X12_Y11_N15
\state_machine|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector7~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S7~q\);

-- Location: LCCOMB_X14_Y11_N12
\state_machine|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector8~0_combout\ = (\state_machine|current_state.S7~q\ & (((\state_machine|current_state.S8~q\ & !\comp|bit4|compx1_mag[1]~1_combout\)) # (!\leds~2_combout\))) # (!\state_machine|current_state.S7~q\ & (\state_machine|current_state.S8~q\ 
-- & (!\comp|bit4|compx1_mag[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S7~q\,
	datab => \state_machine|current_state.S8~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector8~0_combout\);

-- Location: LCCOMB_X14_Y11_N16
\state_machine|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector8~1_combout\ = (\state_machine|Selector8~0_combout\) # ((\state_machine|current_state.S9~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S9~q\,
	datac => \leds~0_combout\,
	datad => \state_machine|Selector8~0_combout\,
	combout => \state_machine|Selector8~1_combout\);

-- Location: FF_X14_Y11_N17
\state_machine|current_state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector8~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S8~q\);

-- Location: LCCOMB_X14_Y11_N6
\state_machine|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector9~0_combout\ = (\state_machine|current_state.S9~q\ & (((\state_machine|current_state.S8~q\ & !\leds~2_combout\)) # (!\comp|bit4|compx1_mag[1]~1_combout\))) # (!\state_machine|current_state.S9~q\ & (\state_machine|current_state.S8~q\ 
-- & ((!\leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S9~q\,
	datab => \state_machine|current_state.S8~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector9~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\state_machine|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector9~1_combout\ = (\state_machine|Selector9~0_combout\) # ((\state_machine|current_state.S10~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine|current_state.S10~q\,
	datac => \leds~0_combout\,
	datad => \state_machine|Selector9~0_combout\,
	combout => \state_machine|Selector9~1_combout\);

-- Location: FF_X14_Y11_N23
\state_machine|current_state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector9~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S9~q\);

-- Location: LCCOMB_X15_Y11_N24
\state_machine|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector10~0_combout\ = (\state_machine|current_state.S10~q\ & (((\state_machine|current_state.S9~q\ & !\leds~2_combout\)) # (!\comp|bit4|compx1_mag[1]~1_combout\))) # (!\state_machine|current_state.S10~q\ & 
-- (\state_machine|current_state.S9~q\ & ((!\leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S10~q\,
	datab => \state_machine|current_state.S9~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector10~0_combout\);

-- Location: LCCOMB_X15_Y11_N18
\state_machine|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector10~1_combout\ = (\state_machine|Selector10~0_combout\) # ((\state_machine|current_state.S11~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S11~q\,
	datac => \leds~0_combout\,
	datad => \state_machine|Selector10~0_combout\,
	combout => \state_machine|Selector10~1_combout\);

-- Location: FF_X15_Y11_N19
\state_machine|current_state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector10~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S10~q\);

-- Location: LCCOMB_X14_Y11_N28
\state_machine|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector11~0_combout\ = (\state_machine|current_state.S10~q\ & (((\state_machine|current_state.S11~q\ & !\comp|bit4|compx1_mag[1]~1_combout\)) # (!\leds~2_combout\))) # (!\state_machine|current_state.S10~q\ & 
-- (\state_machine|current_state.S11~q\ & (!\comp|bit4|compx1_mag[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S10~q\,
	datab => \state_machine|current_state.S11~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector11~0_combout\);

-- Location: LCCOMB_X15_Y11_N28
\state_machine|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector11~1_combout\ = (\state_machine|Selector11~0_combout\) # ((\state_machine|current_state.S12~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S12~q\,
	datac => \leds~0_combout\,
	datad => \state_machine|Selector11~0_combout\,
	combout => \state_machine|Selector11~1_combout\);

-- Location: FF_X15_Y11_N29
\state_machine|current_state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector11~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S11~q\);

-- Location: LCCOMB_X15_Y11_N30
\state_machine|output[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[2]~3_combout\ = (\state_machine|current_state.S11~q\) # ((\state_machine|current_state.S10~q\) # ((\state_machine|current_state.S8~q\) # (\state_machine|current_state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S11~q\,
	datab => \state_machine|current_state.S10~q\,
	datac => \state_machine|current_state.S8~q\,
	datad => \state_machine|current_state.S9~q\,
	combout => \state_machine|output[2]~3_combout\);

-- Location: LCCOMB_X15_Y11_N0
\state_machine|output[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[2]~4_combout\ = (\state_machine|current_state.S2~q\) # ((\state_machine|current_state.S1~q\) # (!\state_machine|current_state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine|current_state.S2~q\,
	datac => \state_machine|current_state.S0~q\,
	datad => \state_machine|current_state.S1~q\,
	combout => \state_machine|output[2]~4_combout\);

-- Location: LCCOMB_X15_Y11_N14
\state_machine|current_state.s15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.s15~7_combout\ = (\sw[2]~input_o\ & ((\state_machine|output[2]~4_combout\) # (\state_machine|current_state.S3~q\ $ (\state_machine|output[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S3~q\,
	datab => \sw[2]~input_o\,
	datac => \state_machine|output[2]~3_combout\,
	datad => \state_machine|output[2]~4_combout\,
	combout => \state_machine|current_state.s15~7_combout\);

-- Location: LCCOMB_X13_Y11_N10
\state_machine|output[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[1]~8_combout\ = (\state_machine|current_state.S5~q\) # ((\state_machine|current_state.S8~q\) # ((\state_machine|current_state.S12~q\) # (\state_machine|current_state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S5~q\,
	datab => \state_machine|current_state.S8~q\,
	datac => \state_machine|current_state.S12~q\,
	datad => \state_machine|current_state.S9~q\,
	combout => \state_machine|output[1]~8_combout\);

-- Location: LCCOMB_X13_Y11_N16
\state_machine|output[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[1]~9_combout\ = (\state_machine|current_state.S2~q\) # (\state_machine|current_state.S4~q\ $ (((!\state_machine|current_state.S13~q\ & !\state_machine|output[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S13~q\,
	datab => \state_machine|current_state.S4~q\,
	datac => \state_machine|current_state.S2~q\,
	datad => \state_machine|output[1]~8_combout\,
	combout => \state_machine|output[1]~9_combout\);

-- Location: LCCOMB_X13_Y11_N30
\state_machine|output[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[1]~10_combout\ = (\state_machine|current_state.S0~q\ & (!\state_machine|current_state.S1~q\ & \state_machine|output[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine|current_state.S0~q\,
	datac => \state_machine|current_state.S1~q\,
	datad => \state_machine|output[1]~9_combout\,
	combout => \state_machine|output[1]~10_combout\);

-- Location: LCCOMB_X13_Y11_N2
\state_machine|current_state.s15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.s15~3_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\state_machine|output[0]~7_combout\)) # (!\state_machine|output[1]~10_combout\))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\state_machine|output[1]~10_combout\ & 
-- !\state_machine|output[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \state_machine|output[1]~10_combout\,
	datad => \state_machine|output[0]~7_combout\,
	combout => \state_machine|current_state.s15~3_combout\);

-- Location: LCCOMB_X13_Y11_N8
\state_machine|current_state.s15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.s15~4_combout\ = (\state_machine|current_state.s15~7_combout\) # ((\state_machine|current_state.s15~3_combout\) # ((\sw[3]~input_o\ & \state_machine|output[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \state_machine|current_state.s15~7_combout\,
	datac => \state_machine|output[3]~2_combout\,
	datad => \state_machine|current_state.s15~3_combout\,
	combout => \state_machine|current_state.s15~4_combout\);

-- Location: LCCOMB_X13_Y11_N24
\leds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~2_combout\ = ((!\state_machine|current_state.s15~2_combout\) # (!\state_machine|current_state.s15~4_combout\)) # (!\comp|bit4|compx1_mag[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|bit4|compx1_mag[1]~1_combout\,
	datac => \state_machine|current_state.s15~4_combout\,
	datad => \state_machine|current_state.s15~2_combout\,
	combout => \leds~2_combout\);

-- Location: LCCOMB_X15_Y11_N10
\state_machine|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector2~0_combout\ = (\state_machine|current_state.S1~q\ & (((\state_machine|current_state.S2~q\ & !\comp|bit4|compx1_mag[1]~1_combout\)) # (!\leds~2_combout\))) # (!\state_machine|current_state.S1~q\ & (\state_machine|current_state.S2~q\ 
-- & (!\comp|bit4|compx1_mag[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S1~q\,
	datab => \state_machine|current_state.S2~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector2~0_combout\);

-- Location: LCCOMB_X15_Y11_N20
\state_machine|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector2~1_combout\ = (\state_machine|Selector2~0_combout\) # ((\state_machine|current_state.S3~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S3~q\,
	datac => \leds~0_combout\,
	datad => \state_machine|Selector2~0_combout\,
	combout => \state_machine|Selector2~1_combout\);

-- Location: FF_X15_Y11_N21
\state_machine|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector2~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S2~q\);

-- Location: LCCOMB_X13_Y11_N14
\state_machine|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector1~0_combout\ = (\state_machine|current_state.S1~q\ & (((!\state_machine|current_state.S0~q\ & !\leds~2_combout\)) # (!\comp|bit4|compx1_mag[1]~1_combout\))) # (!\state_machine|current_state.S1~q\ & 
-- (!\state_machine|current_state.S0~q\ & ((!\leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S1~q\,
	datab => \state_machine|current_state.S0~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector1~0_combout\);

-- Location: LCCOMB_X13_Y11_N4
\state_machine|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector1~1_combout\ = (\state_machine|Selector1~0_combout\) # ((\state_machine|current_state.S2~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S2~q\,
	datac => \state_machine|Selector1~0_combout\,
	datad => \leds~0_combout\,
	combout => \state_machine|Selector1~1_combout\);

-- Location: FF_X13_Y11_N5
\state_machine|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector1~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S1~q\);

-- Location: LCCOMB_X12_Y11_N30
\state_machine|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector0~0_combout\ = (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & ((\state_machine|current_state.S1~q\) # (!\state_machine|current_state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S1~q\,
	datab => \state_machine|current_state.S0~q\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \state_machine|Selector0~0_combout\);

-- Location: LCCOMB_X15_Y11_N26
\state_machine|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector0~1_combout\ = (\sw[3]~input_o\) # ((\sw[2]~input_o\) # (!\state_machine|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[3]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \state_machine|Selector0~0_combout\,
	combout => \state_machine|Selector0~1_combout\);

-- Location: FF_X15_Y11_N27
\state_machine|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector0~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S0~q\);

-- Location: LCCOMB_X15_Y11_N6
\state_machine|output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[0]~1_combout\ = (\state_machine|current_state.S0~q\ & (!\state_machine|current_state.S2~q\ & (!\state_machine|current_state.S4~q\ & !\state_machine|current_state.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S0~q\,
	datab => \state_machine|current_state.S2~q\,
	datac => \state_machine|current_state.S4~q\,
	datad => \state_machine|current_state.S6~q\,
	combout => \state_machine|output[0]~1_combout\);

-- Location: LCCOMB_X15_Y11_N16
\comp|bit4|compx1_mag~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comp|bit4|compx1_mag~3_combout\ = (\state_machine|output[0]~1_combout\ & (!\sw[3]~input_o\ & !\state_machine|output[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[0]~1_combout\,
	datab => \sw[3]~input_o\,
	datac => \state_machine|output[3]~0_combout\,
	combout => \comp|bit4|compx1_mag~3_combout\);

-- Location: LCCOMB_X15_Y11_N22
\comp|bit3|compx1_mag[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comp|bit3|compx1_mag[1]~0_combout\ = \sw[2]~input_o\ $ (((\state_machine|output[2]~4_combout\) # (\state_machine|current_state.S3~q\ $ (\state_machine|output[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S3~q\,
	datab => \sw[2]~input_o\,
	datac => \state_machine|output[2]~3_combout\,
	datad => \state_machine|output[2]~4_combout\,
	combout => \comp|bit3|compx1_mag[1]~0_combout\);

-- Location: LCCOMB_X15_Y11_N8
\state_machine|output[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[2]~11_combout\ = (\state_machine|output[2]~4_combout\) # (\state_machine|current_state.S3~q\ $ (\state_machine|output[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S3~q\,
	datac => \state_machine|output[2]~3_combout\,
	datad => \state_machine|output[2]~4_combout\,
	combout => \state_machine|output[2]~11_combout\);

-- Location: LCCOMB_X15_Y11_N2
\comp|bit4|compx1_mag~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comp|bit4|compx1_mag~2_combout\ = (!\sw[2]~input_o\ & (!\state_machine|output[2]~11_combout\ & ((!\state_machine|output[3]~2_combout\) # (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \state_machine|output[2]~11_combout\,
	datad => \state_machine|output[3]~2_combout\,
	combout => \comp|bit4|compx1_mag~2_combout\);

-- Location: LCCOMB_X13_Y11_N12
\comp|bit4|compx1_mag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comp|bit4|compx1_mag~0_combout\ = (\sw[1]~input_o\ & (\state_machine|output[1]~10_combout\ & (\sw[0]~input_o\ $ (!\state_machine|output[0]~7_combout\)))) # (!\sw[1]~input_o\ & (!\state_machine|output[1]~10_combout\ & (\sw[0]~input_o\ $ 
-- (!\state_machine|output[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \state_machine|output[1]~10_combout\,
	datad => \state_machine|output[0]~7_combout\,
	combout => \comp|bit4|compx1_mag~0_combout\);

-- Location: LCCOMB_X13_Y11_N28
\state_machine|current_state.s15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.s15~2_combout\ = (\comp|bit4|compx1_mag~3_combout\ & (\comp|bit3|compx1_mag[1]~0_combout\ & ((\comp|bit4|compx1_mag~0_combout\)))) # (!\comp|bit4|compx1_mag~3_combout\ & (((\comp|bit4|compx1_mag~0_combout\) # 
-- (!\comp|bit4|compx1_mag~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|bit4|compx1_mag~3_combout\,
	datab => \comp|bit3|compx1_mag[1]~0_combout\,
	datac => \comp|bit4|compx1_mag~2_combout\,
	datad => \comp|bit4|compx1_mag~0_combout\,
	combout => \state_machine|current_state.s15~2_combout\);

-- Location: LCCOMB_X13_Y11_N6
\leds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (\comp|bit4|compx1_mag[1]~1_combout\ & ((!\state_machine|current_state.s15~4_combout\) # (!\state_machine|current_state.s15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine|current_state.s15~2_combout\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \state_machine|current_state.s15~4_combout\,
	combout => \leds~0_combout\);

-- Location: LCCOMB_X13_Y11_N0
\state_machine|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector3~0_combout\ = (\state_machine|current_state.S3~q\ & (((\state_machine|current_state.S2~q\ & !\leds~2_combout\)) # (!\comp|bit4|compx1_mag[1]~1_combout\))) # (!\state_machine|current_state.S3~q\ & (\state_machine|current_state.S2~q\ 
-- & ((!\leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S3~q\,
	datab => \state_machine|current_state.S2~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector3~0_combout\);

-- Location: LCCOMB_X13_Y11_N18
\state_machine|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector3~1_combout\ = (\state_machine|Selector3~0_combout\) # ((\leds~0_combout\ & \state_machine|current_state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~0_combout\,
	datab => \state_machine|current_state.S4~q\,
	datac => \state_machine|Selector3~0_combout\,
	combout => \state_machine|Selector3~1_combout\);

-- Location: FF_X13_Y11_N19
\state_machine|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector3~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S3~q\);

-- Location: LCCOMB_X15_Y11_N4
\state_machine|output[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[3]~0_combout\ = (\state_machine|current_state.S3~q\) # ((\state_machine|current_state.S1~q\) # ((\state_machine|current_state.S7~q\) # (\state_machine|current_state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S3~q\,
	datab => \state_machine|current_state.S1~q\,
	datac => \state_machine|current_state.S7~q\,
	datad => \state_machine|current_state.S5~q\,
	combout => \state_machine|output[3]~0_combout\);

-- Location: LCCOMB_X15_Y11_N12
\state_machine|output[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[3]~2_combout\ = (\state_machine|output[3]~0_combout\) # (!\state_machine|output[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine|output[3]~0_combout\,
	datad => \state_machine|output[0]~1_combout\,
	combout => \state_machine|output[3]~2_combout\);

-- Location: LCCOMB_X13_Y11_N26
\comp|bit4|compx1_mag[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comp|bit4|compx1_mag[1]~1_combout\ = ((\state_machine|output[3]~2_combout\ $ (!\sw[3]~input_o\)) # (!\comp|bit4|compx1_mag~0_combout\)) # (!\comp|bit3|compx1_mag[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[3]~2_combout\,
	datab => \sw[3]~input_o\,
	datac => \comp|bit3|compx1_mag[1]~0_combout\,
	datad => \comp|bit4|compx1_mag~0_combout\,
	combout => \comp|bit4|compx1_mag[1]~1_combout\);

-- Location: LCCOMB_X14_Y11_N18
\state_machine|current_state.s15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.s15~5_combout\ = (\state_machine|current_state.s15~4_combout\ & \state_machine|current_state.s15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.s15~4_combout\,
	datad => \state_machine|current_state.s15~2_combout\,
	combout => \state_machine|current_state.s15~5_combout\);

-- Location: LCCOMB_X14_Y11_N10
\state_machine|current_state.s15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|current_state.s15~6_combout\ = (\comp|bit4|compx1_mag[1]~1_combout\ & (\state_machine|current_state.s15~5_combout\ & ((\state_machine|current_state.S14~q\) # (\state_machine|current_state.s15~q\)))) # (!\comp|bit4|compx1_mag[1]~1_combout\ & 
-- (((\state_machine|current_state.s15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|bit4|compx1_mag[1]~1_combout\,
	datab => \state_machine|current_state.S14~q\,
	datac => \state_machine|current_state.s15~q\,
	datad => \state_machine|current_state.s15~5_combout\,
	combout => \state_machine|current_state.s15~6_combout\);

-- Location: FF_X14_Y11_N11
\state_machine|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|current_state.s15~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.s15~q\);

-- Location: LCCOMB_X14_Y11_N20
\state_machine|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector14~0_combout\ = (\comp|bit4|compx1_mag[1]~1_combout\ & (\state_machine|current_state.S13~q\ & ((!\leds~2_combout\)))) # (!\comp|bit4|compx1_mag[1]~1_combout\ & ((\state_machine|current_state.S14~q\) # 
-- ((\state_machine|current_state.S13~q\ & !\leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|bit4|compx1_mag[1]~1_combout\,
	datab => \state_machine|current_state.S13~q\,
	datac => \state_machine|current_state.S14~q\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector14~0_combout\);

-- Location: LCCOMB_X14_Y11_N4
\state_machine|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector14~1_combout\ = (\state_machine|Selector14~0_combout\) # ((\state_machine|current_state.s15~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.s15~q\,
	datac => \leds~0_combout\,
	datad => \state_machine|Selector14~0_combout\,
	combout => \state_machine|Selector14~1_combout\);

-- Location: FF_X14_Y11_N5
\state_machine|current_state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector14~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S14~q\);

-- Location: LCCOMB_X14_Y11_N0
\state_machine|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector13~0_combout\ = (\state_machine|current_state.S12~q\ & (((\state_machine|current_state.S13~q\ & !\comp|bit4|compx1_mag[1]~1_combout\)) # (!\leds~2_combout\))) # (!\state_machine|current_state.S12~q\ & 
-- (\state_machine|current_state.S13~q\ & (!\comp|bit4|compx1_mag[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S12~q\,
	datab => \state_machine|current_state.S13~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector13~0_combout\);

-- Location: LCCOMB_X14_Y11_N30
\state_machine|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector13~1_combout\ = (\state_machine|Selector13~0_combout\) # ((\state_machine|current_state.S14~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine|current_state.S14~q\,
	datac => \leds~0_combout\,
	datad => \state_machine|Selector13~0_combout\,
	combout => \state_machine|Selector13~1_combout\);

-- Location: FF_X14_Y11_N31
\state_machine|current_state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector13~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S13~q\);

-- Location: LCCOMB_X14_Y11_N2
\state_machine|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector12~0_combout\ = (\state_machine|current_state.S12~q\ & (((\state_machine|current_state.S11~q\ & !\leds~2_combout\)) # (!\comp|bit4|compx1_mag[1]~1_combout\))) # (!\state_machine|current_state.S12~q\ & 
-- (\state_machine|current_state.S11~q\ & ((!\leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S12~q\,
	datab => \state_machine|current_state.S11~q\,
	datac => \comp|bit4|compx1_mag[1]~1_combout\,
	datad => \leds~2_combout\,
	combout => \state_machine|Selector12~0_combout\);

-- Location: LCCOMB_X14_Y11_N14
\state_machine|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|Selector12~1_combout\ = (\state_machine|Selector12~0_combout\) # ((\state_machine|current_state.S13~q\ & \leds~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine|current_state.S13~q\,
	datac => \leds~0_combout\,
	datad => \state_machine|Selector12~0_combout\,
	combout => \state_machine|Selector12~1_combout\);

-- Location: FF_X14_Y11_N15
\state_machine|current_state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \state_machine|Selector12~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|current_state.S12~q\);

-- Location: LCCOMB_X14_Y11_N26
\state_machine|output[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[0]~6_combout\ = (!\state_machine|current_state.S12~q\ & (!\state_machine|current_state.S8~q\ & (!\state_machine|current_state.S14~q\ & !\state_machine|current_state.S10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S12~q\,
	datab => \state_machine|current_state.S8~q\,
	datac => \state_machine|current_state.S14~q\,
	datad => \state_machine|current_state.S10~q\,
	combout => \state_machine|output[0]~6_combout\);

-- Location: LCCOMB_X14_Y11_N8
\state_machine|output[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[0]~5_combout\ = (\state_machine|current_state.S0~q\ & ((\state_machine|current_state.S1~q\) # ((!\state_machine|current_state.S2~q\ & \state_machine|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|current_state.S2~q\,
	datab => \state_machine|current_state.S3~q\,
	datac => \state_machine|current_state.S1~q\,
	datad => \state_machine|current_state.S0~q\,
	combout => \state_machine|output[0]~5_combout\);

-- Location: LCCOMB_X14_Y11_N24
\state_machine|output[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine|output[0]~7_combout\ = (\state_machine|output[0]~5_combout\) # ((\state_machine|output[0]~6_combout\ & \state_machine|output[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[0]~6_combout\,
	datac => \state_machine|output[0]~5_combout\,
	datad => \state_machine|output[0]~1_combout\,
	combout => \state_machine|output[0]~7_combout\);

-- Location: LCCOMB_X13_Y13_N2
\left_decoder|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux5~0_combout\ = (\state_machine|output[1]~10_combout\ & ((\state_machine|output[0]~7_combout\ & (\state_machine|output[3]~2_combout\)) # (!\state_machine|output[0]~7_combout\ & ((\state_machine|output[2]~11_combout\))))) # 
-- (!\state_machine|output[1]~10_combout\ & ((\state_machine|output[2]~11_combout\) # (\state_machine|output[0]~7_combout\ $ (\state_machine|output[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[0]~7_combout\,
	datab => \state_machine|output[1]~10_combout\,
	datac => \state_machine|output[3]~2_combout\,
	datad => \state_machine|output[2]~11_combout\,
	combout => \left_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y13_N14
\output|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT_TEMP[1]~0_combout\ = (\output|clk_proc:COUNT[10]~q\ & ((\left_decoder|Mux5~0_combout\))) # (!\output|clk_proc:COUNT[10]~q\ & (!\right_decoder|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[10]~q\,
	datac => \right_decoder|Mux5~0_combout\,
	datad => \left_decoder|Mux5~0_combout\,
	combout => \output|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X13_Y13_N16
\left_decoder|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux1~0_combout\ = (\state_machine|output[1]~10_combout\ & (((!\state_machine|output[0]~7_combout\ & !\state_machine|output[2]~11_combout\)) # (!\state_machine|output[3]~2_combout\))) # (!\state_machine|output[1]~10_combout\ & 
-- ((\state_machine|output[3]~2_combout\ & ((!\state_machine|output[2]~11_combout\) # (!\state_machine|output[0]~7_combout\))) # (!\state_machine|output[3]~2_combout\ & ((\state_machine|output[2]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[0]~7_combout\,
	datab => \state_machine|output[1]~10_combout\,
	datac => \state_machine|output[3]~2_combout\,
	datad => \state_machine|output[2]~11_combout\,
	combout => \left_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y13_N26
\right_decoder|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux1~0_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & ((\sw[0]~input_o\) # (!\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[3]~input_o\ & ((\sw[2]~input_o\))) # (!\sw[3]~input_o\ & (\sw[0]~input_o\ & !\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \right_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y13_N28
\output|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT_TEMP[5]~1_combout\ = (\output|clk_proc:COUNT[10]~q\ & (\left_decoder|Mux1~0_combout\)) # (!\output|clk_proc:COUNT[10]~q\ & ((!\right_decoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \left_decoder|Mux1~0_combout\,
	datac => \right_decoder|Mux1~0_combout\,
	datad => \output|clk_proc:COUNT[10]~q\,
	combout => \output|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X13_Y14_N30
\left_decoder|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux0~0_combout\ = (\state_machine|output[3]~2_combout\ & ((\state_machine|output[2]~11_combout\ & (!\state_machine|output[1]~10_combout\)) # (!\state_machine|output[2]~11_combout\ & (\state_machine|output[1]~10_combout\ & 
-- \state_machine|output[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[2]~11_combout\,
	datab => \state_machine|output[1]~10_combout\,
	datac => \state_machine|output[0]~7_combout\,
	datad => \state_machine|output[3]~2_combout\,
	combout => \left_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y13_N6
\right_decoder|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux0~0_combout\ = (\sw[3]~input_o\) # ((\sw[1]~input_o\ & ((!\sw[2]~input_o\) # (!\sw[0]~input_o\))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \right_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y14_N0
\output|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT_TEMP[6]~2_combout\ = (\output|clk_proc:COUNT[10]~q\ & (!\left_decoder|Mux0~0_combout\)) # (!\output|clk_proc:COUNT[10]~q\ & ((\right_decoder|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[10]~q\,
	datac => \left_decoder|Mux0~0_combout\,
	datad => \right_decoder|Mux0~0_combout\,
	combout => \output|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X12_Y10_N20
\leds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = (!\comp|bit4|compx1_mag[1]~1_combout\ & ((!\state_machine|current_state.s15~2_combout\) # (!\state_machine|current_state.s15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine|current_state.s15~4_combout\,
	datac => \state_machine|current_state.s15~2_combout\,
	datad => \comp|bit4|compx1_mag[1]~1_combout\,
	combout => \leds~1_combout\);

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

-- Location: LCCOMB_X12_Y11_N0
\shift_reg|current_state~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg|current_state~1_combout\ = (\pb[0]~input_o\ & ((!\shift_reg|current_state\(0)))) # (!\pb[0]~input_o\ & (\shift_reg|current_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datac => \shift_reg|current_state\(2),
	datad => \shift_reg|current_state\(0),
	combout => \shift_reg|current_state~1_combout\);

-- Location: FF_X12_Y11_N1
\shift_reg|current_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \shift_reg|current_state~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg|current_state\(1));

-- Location: LCCOMB_X12_Y11_N22
\shift_reg|current_state~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg|current_state~2_combout\ = (\pb[0]~input_o\ & (\shift_reg|current_state\(1))) # (!\pb[0]~input_o\ & ((\shift_reg|current_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datac => \shift_reg|current_state\(1),
	datad => \shift_reg|current_state\(3),
	combout => \shift_reg|current_state~2_combout\);

-- Location: FF_X12_Y11_N23
\shift_reg|current_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \shift_reg|current_state~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg|current_state\(2));

-- Location: LCCOMB_X12_Y11_N20
\shift_reg|current_state~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg|current_state~3_combout\ = (\pb[0]~input_o\ & (\shift_reg|current_state\(2))) # (!\pb[0]~input_o\ & ((!\shift_reg|current_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datac => \shift_reg|current_state\(2),
	datad => \shift_reg|current_state\(0),
	combout => \shift_reg|current_state~3_combout\);

-- Location: FF_X12_Y11_N21
\shift_reg|current_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \shift_reg|current_state~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg|current_state\(3));

-- Location: LCCOMB_X12_Y11_N6
\shift_reg|current_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg|current_state~0_combout\ = (\pb[0]~input_o\ & (!\shift_reg|current_state\(3))) # (!\pb[0]~input_o\ & ((!\shift_reg|current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \shift_reg|current_state\(3),
	datad => \shift_reg|current_state\(1),
	combout => \shift_reg|current_state~0_combout\);

-- Location: FF_X12_Y11_N7
\shift_reg|current_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \shift_reg|current_state~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg|current_state\(0));

-- Location: LCCOMB_X13_Y13_N30
\right_decoder|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux6~0_combout\ = (\sw[1]~input_o\ & (\sw[3]~input_o\ & (\sw[0]~input_o\ & !\sw[2]~input_o\))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ $ (((!\sw[3]~input_o\ & \sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \right_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y13_N20
\left_decoder|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux6~0_combout\ = (\state_machine|output[1]~10_combout\ & (((\state_machine|output[3]~2_combout\) # (!\state_machine|output[2]~11_combout\)) # (!\state_machine|output[0]~7_combout\))) # (!\state_machine|output[1]~10_combout\ & 
-- (\state_machine|output[2]~11_combout\ $ (((\state_machine|output[0]~7_combout\ & \state_machine|output[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[0]~7_combout\,
	datab => \state_machine|output[1]~10_combout\,
	datac => \state_machine|output[3]~2_combout\,
	datad => \state_machine|output[2]~11_combout\,
	combout => \left_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y13_N24
\output|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT[0]~0_combout\ = (\output|clk_proc:COUNT[10]~q\ & ((\left_decoder|Mux6~0_combout\))) # (!\output|clk_proc:COUNT[10]~q\ & (!\right_decoder|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[10]~q\,
	datac => \right_decoder|Mux6~0_combout\,
	datad => \left_decoder|Mux6~0_combout\,
	combout => \output|DOUT[0]~0_combout\);

-- Location: LCCOMB_X13_Y13_N22
\right_decoder|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux4~0_combout\ = (\sw[3]~input_o\ & (\sw[2]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[3]~input_o\ & (\sw[1]~input_o\ & (!\sw[0]~input_o\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \right_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y14_N4
\left_decoder|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux4~0_combout\ = (\state_machine|output[2]~11_combout\ & (((\state_machine|output[0]~7_combout\) # (!\state_machine|output[3]~2_combout\)) # (!\state_machine|output[1]~10_combout\))) # (!\state_machine|output[2]~11_combout\ & 
-- ((\state_machine|output[3]~2_combout\) # ((!\state_machine|output[1]~10_combout\ & \state_machine|output[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[2]~11_combout\,
	datab => \state_machine|output[1]~10_combout\,
	datac => \state_machine|output[0]~7_combout\,
	datad => \state_machine|output[3]~2_combout\,
	combout => \left_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y13_N12
\output|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT[2]~2_combout\ = (\output|clk_proc:COUNT[10]~q\ & ((\left_decoder|Mux4~0_combout\))) # (!\output|clk_proc:COUNT[10]~q\ & (!\right_decoder|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[10]~q\,
	datac => \right_decoder|Mux4~0_combout\,
	datad => \left_decoder|Mux4~0_combout\,
	combout => \output|DOUT[2]~2_combout\);

-- Location: LCCOMB_X13_Y13_N4
\right_decoder|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux3~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\sw[2]~input_o\))) # (!\sw[0]~input_o\ & (\sw[3]~input_o\ & !\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \right_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y13_N10
\left_decoder|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux3~0_combout\ = (\state_machine|output[1]~10_combout\ & ((\state_machine|output[0]~7_combout\ & ((!\state_machine|output[2]~11_combout\))) # (!\state_machine|output[0]~7_combout\ & (!\state_machine|output[3]~2_combout\ & 
-- \state_machine|output[2]~11_combout\)))) # (!\state_machine|output[1]~10_combout\ & (\state_machine|output[3]~2_combout\ & (\state_machine|output[0]~7_combout\ $ (!\state_machine|output[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[0]~7_combout\,
	datab => \state_machine|output[1]~10_combout\,
	datac => \state_machine|output[3]~2_combout\,
	datad => \state_machine|output[2]~11_combout\,
	combout => \left_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y13_N18
\output|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT[3]~3_combout\ = (\output|clk_proc:COUNT[10]~q\ & ((\left_decoder|Mux3~0_combout\))) # (!\output|clk_proc:COUNT[10]~q\ & (\right_decoder|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[10]~q\,
	datac => \right_decoder|Mux3~0_combout\,
	datad => \left_decoder|Mux3~0_combout\,
	combout => \output|DOUT[3]~3_combout\);

-- Location: LCCOMB_X13_Y14_N26
\left_decoder|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux2~0_combout\ = (\state_machine|output[1]~10_combout\ & (((\state_machine|output[0]~7_combout\ & \state_machine|output[3]~2_combout\)))) # (!\state_machine|output[1]~10_combout\ & ((\state_machine|output[2]~11_combout\ & 
-- (\state_machine|output[0]~7_combout\)) # (!\state_machine|output[2]~11_combout\ & ((\state_machine|output[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|output[2]~11_combout\,
	datab => \state_machine|output[1]~10_combout\,
	datac => \state_machine|output[0]~7_combout\,
	datad => \state_machine|output[3]~2_combout\,
	combout => \left_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y13_N0
\right_decoder|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux2~0_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[0]~input_o\))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & (!\sw[3]~input_o\)) # (!\sw[2]~input_o\ & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \right_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\output|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT[4]~4_combout\ = (\output|clk_proc:COUNT[10]~q\ & (\left_decoder|Mux2~0_combout\)) # (!\output|clk_proc:COUNT[10]~q\ & ((\right_decoder|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[10]~q\,
	datac => \left_decoder|Mux2~0_combout\,
	datad => \right_decoder|Mux2~0_combout\,
	combout => \output|DOUT[4]~4_combout\);

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


