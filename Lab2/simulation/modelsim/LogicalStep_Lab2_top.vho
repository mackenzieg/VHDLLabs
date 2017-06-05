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

-- DATE "06/05/2017 12:38:33"

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

ENTITY 	LogicalStep_Lab2_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab2_top;

-- Design Ports Information
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
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab2_top IS
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
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \SegmentMux|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \SegmentMux|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \error~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Adder|Add0~0_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux7~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Adder|Add0~1\ : std_logic;
SIGNAL \Adder|Add0~3\ : std_logic;
SIGNAL \Adder|Add0~5\ : std_logic;
SIGNAL \Adder|Add0~6_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux4~1_combout\ : std_logic;
SIGNAL \Adder|Add0~4_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux5~0_combout\ : std_logic;
SIGNAL \Adder|Add0~2_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux6~0_combout\ : std_logic;
SIGNAL \LeftSegment|Mux5~0_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux0~0_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux1~0_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux2~0_combout\ : std_logic;
SIGNAL \Adder|Add0~7\ : std_logic;
SIGNAL \Adder|Add0~8_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux3~0_combout\ : std_logic;
SIGNAL \RightSegment|Mux5~0_combout\ : std_logic;
SIGNAL \SegmentMux|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \RightSegment|Mux1~0_combout\ : std_logic;
SIGNAL \LeftSegment|Mux1~0_combout\ : std_logic;
SIGNAL \SegmentMux|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \LeftSegment|Mux0~0_combout\ : std_logic;
SIGNAL \RightSegment|Mux0~0_combout\ : std_logic;
SIGNAL \SegmentMux|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux4~0_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux7~0_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux7~1_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux7~2_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux6~2_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux6~1_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux6~3_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux6~4_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux6~0_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux6~5_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux5~0_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux5~1_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux5~3_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux5~4_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux5~2_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux4~1_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux4~2_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux4~3_combout\ : std_logic;
SIGNAL \SumDisplayMux|Mux4~0_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux4~4_combout\ : std_logic;
SIGNAL \SumLogicMux|Mux3~0_combout\ : std_logic;
SIGNAL \LeftSegment|Mux6~0_combout\ : std_logic;
SIGNAL \RightSegment|Mux6~0_combout\ : std_logic;
SIGNAL \SegmentMux|DOUT[0]~0_combout\ : std_logic;
SIGNAL \RightSegment|Mux4~0_combout\ : std_logic;
SIGNAL \LeftSegment|Mux4~0_combout\ : std_logic;
SIGNAL \SegmentMux|DOUT[2]~2_combout\ : std_logic;
SIGNAL \LeftSegment|Mux3~0_combout\ : std_logic;
SIGNAL \RightSegment|Mux3~0_combout\ : std_logic;
SIGNAL \SegmentMux|DOUT[3]~3_combout\ : std_logic;
SIGNAL \RightSegment|Mux2~0_combout\ : std_logic;
SIGNAL \LeftSegment|Mux2~0_combout\ : std_logic;
SIGNAL \SegmentMux|DOUT[4]~4_combout\ : std_logic;
SIGNAL \SegmentMux|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \SegmentMux|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \SegmentMux|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \SegmentMux|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \SegmentMux|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
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
\SegmentMux|ALT_INV_DOUT[4]~4_combout\ <= NOT \SegmentMux|DOUT[4]~4_combout\;
\SegmentMux|ALT_INV_DOUT[3]~3_combout\ <= NOT \SegmentMux|DOUT[3]~3_combout\;
\SegmentMux|ALT_INV_DOUT[2]~2_combout\ <= NOT \SegmentMux|DOUT[2]~2_combout\;
\SegmentMux|ALT_INV_DOUT[0]~0_combout\ <= NOT \SegmentMux|DOUT[0]~0_combout\;
\SegmentMux|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \SegmentMux|clk_proc:COUNT[10]~q\;

-- Location: LCCOMB_X11_Y23_N12
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
	i => \SegmentMux|DOUT_TEMP[1]~0_combout\,
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
	i => \SegmentMux|DOUT_TEMP[5]~1_combout\,
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
	i => \SegmentMux|DOUT_TEMP[6]~2_combout\,
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
	i => \SumLogicMux|Mux7~2_combout\,
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
	i => \SumLogicMux|Mux6~5_combout\,
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
	i => \SumLogicMux|Mux5~2_combout\,
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
	i => \SumLogicMux|Mux4~4_combout\,
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
	i => \SumLogicMux|Mux3~0_combout\,
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
	i => \error~0_combout\,
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
	i => \error~0_combout\,
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
	i => \error~0_combout\,
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
	i => \SegmentMux|ALT_INV_DOUT[0]~0_combout\,
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
	i => \SegmentMux|ALT_INV_DOUT[2]~2_combout\,
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
	i => \SegmentMux|ALT_INV_DOUT[3]~3_combout\,
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
	i => \SegmentMux|ALT_INV_DOUT[4]~4_combout\,
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
	i => \SegmentMux|ALT_INV_clk_proc:COUNT[10]~q\,
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
	i => \SegmentMux|clk_proc:COUNT[10]~q\,
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

-- Location: LCCOMB_X9_Y9_N2
\SegmentMux|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[0]~0_combout\ = !\SegmentMux|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SegmentMux|clk_proc:COUNT[0]~q\,
	combout => \SegmentMux|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X9_Y9_N3
\SegmentMux|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X9_Y9_N10
\SegmentMux|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[1]~1_combout\ = (\SegmentMux|clk_proc:COUNT[1]~q\ & (\SegmentMux|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\SegmentMux|clk_proc:COUNT[1]~q\ & (\SegmentMux|clk_proc:COUNT[0]~q\ & VCC))
-- \SegmentMux|clk_proc:COUNT[1]~2\ = CARRY((\SegmentMux|clk_proc:COUNT[1]~q\ & \SegmentMux|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegmentMux|clk_proc:COUNT[1]~q\,
	datab => \SegmentMux|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \SegmentMux|clk_proc:COUNT[1]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[1]~2\);

-- Location: FF_X9_Y9_N11
\SegmentMux|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X9_Y9_N12
\SegmentMux|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[2]~1_combout\ = (\SegmentMux|clk_proc:COUNT[2]~q\ & (!\SegmentMux|clk_proc:COUNT[1]~2\)) # (!\SegmentMux|clk_proc:COUNT[2]~q\ & ((\SegmentMux|clk_proc:COUNT[1]~2\) # (GND)))
-- \SegmentMux|clk_proc:COUNT[2]~2\ = CARRY((!\SegmentMux|clk_proc:COUNT[1]~2\) # (!\SegmentMux|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SegmentMux|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \SegmentMux|clk_proc:COUNT[1]~2\,
	combout => \SegmentMux|clk_proc:COUNT[2]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[2]~2\);

-- Location: FF_X9_Y9_N13
\SegmentMux|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X9_Y9_N14
\SegmentMux|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[3]~1_combout\ = (\SegmentMux|clk_proc:COUNT[3]~q\ & (\SegmentMux|clk_proc:COUNT[2]~2\ $ (GND))) # (!\SegmentMux|clk_proc:COUNT[3]~q\ & (!\SegmentMux|clk_proc:COUNT[2]~2\ & VCC))
-- \SegmentMux|clk_proc:COUNT[3]~2\ = CARRY((\SegmentMux|clk_proc:COUNT[3]~q\ & !\SegmentMux|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \SegmentMux|clk_proc:COUNT[2]~2\,
	combout => \SegmentMux|clk_proc:COUNT[3]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[3]~2\);

-- Location: FF_X9_Y9_N15
\SegmentMux|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X9_Y9_N16
\SegmentMux|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[4]~1_combout\ = (\SegmentMux|clk_proc:COUNT[4]~q\ & (!\SegmentMux|clk_proc:COUNT[3]~2\)) # (!\SegmentMux|clk_proc:COUNT[4]~q\ & ((\SegmentMux|clk_proc:COUNT[3]~2\) # (GND)))
-- \SegmentMux|clk_proc:COUNT[4]~2\ = CARRY((!\SegmentMux|clk_proc:COUNT[3]~2\) # (!\SegmentMux|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \SegmentMux|clk_proc:COUNT[3]~2\,
	combout => \SegmentMux|clk_proc:COUNT[4]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[4]~2\);

-- Location: FF_X9_Y9_N17
\SegmentMux|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X9_Y9_N18
\SegmentMux|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[5]~1_combout\ = (\SegmentMux|clk_proc:COUNT[5]~q\ & (\SegmentMux|clk_proc:COUNT[4]~2\ $ (GND))) # (!\SegmentMux|clk_proc:COUNT[5]~q\ & (!\SegmentMux|clk_proc:COUNT[4]~2\ & VCC))
-- \SegmentMux|clk_proc:COUNT[5]~2\ = CARRY((\SegmentMux|clk_proc:COUNT[5]~q\ & !\SegmentMux|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \SegmentMux|clk_proc:COUNT[4]~2\,
	combout => \SegmentMux|clk_proc:COUNT[5]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[5]~2\);

-- Location: FF_X9_Y9_N19
\SegmentMux|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X9_Y9_N20
\SegmentMux|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[6]~1_combout\ = (\SegmentMux|clk_proc:COUNT[6]~q\ & (!\SegmentMux|clk_proc:COUNT[5]~2\)) # (!\SegmentMux|clk_proc:COUNT[6]~q\ & ((\SegmentMux|clk_proc:COUNT[5]~2\) # (GND)))
-- \SegmentMux|clk_proc:COUNT[6]~2\ = CARRY((!\SegmentMux|clk_proc:COUNT[5]~2\) # (!\SegmentMux|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \SegmentMux|clk_proc:COUNT[5]~2\,
	combout => \SegmentMux|clk_proc:COUNT[6]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[6]~2\);

-- Location: FF_X9_Y9_N21
\SegmentMux|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X9_Y9_N22
\SegmentMux|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[7]~1_combout\ = (\SegmentMux|clk_proc:COUNT[7]~q\ & (\SegmentMux|clk_proc:COUNT[6]~2\ $ (GND))) # (!\SegmentMux|clk_proc:COUNT[7]~q\ & (!\SegmentMux|clk_proc:COUNT[6]~2\ & VCC))
-- \SegmentMux|clk_proc:COUNT[7]~2\ = CARRY((\SegmentMux|clk_proc:COUNT[7]~q\ & !\SegmentMux|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SegmentMux|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \SegmentMux|clk_proc:COUNT[6]~2\,
	combout => \SegmentMux|clk_proc:COUNT[7]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[7]~2\);

-- Location: FF_X9_Y9_N23
\SegmentMux|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X9_Y9_N24
\SegmentMux|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[8]~1_combout\ = (\SegmentMux|clk_proc:COUNT[8]~q\ & (!\SegmentMux|clk_proc:COUNT[7]~2\)) # (!\SegmentMux|clk_proc:COUNT[8]~q\ & ((\SegmentMux|clk_proc:COUNT[7]~2\) # (GND)))
-- \SegmentMux|clk_proc:COUNT[8]~2\ = CARRY((!\SegmentMux|clk_proc:COUNT[7]~2\) # (!\SegmentMux|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \SegmentMux|clk_proc:COUNT[7]~2\,
	combout => \SegmentMux|clk_proc:COUNT[8]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[8]~2\);

-- Location: FF_X9_Y9_N25
\SegmentMux|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X9_Y9_N26
\SegmentMux|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[9]~1_combout\ = (\SegmentMux|clk_proc:COUNT[9]~q\ & (\SegmentMux|clk_proc:COUNT[8]~2\ $ (GND))) # (!\SegmentMux|clk_proc:COUNT[9]~q\ & (!\SegmentMux|clk_proc:COUNT[8]~2\ & VCC))
-- \SegmentMux|clk_proc:COUNT[9]~2\ = CARRY((\SegmentMux|clk_proc:COUNT[9]~q\ & !\SegmentMux|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SegmentMux|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \SegmentMux|clk_proc:COUNT[8]~2\,
	combout => \SegmentMux|clk_proc:COUNT[9]~1_combout\,
	cout => \SegmentMux|clk_proc:COUNT[9]~2\);

-- Location: FF_X9_Y9_N27
\SegmentMux|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X9_Y9_N28
\SegmentMux|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|clk_proc:COUNT[10]~1_combout\ = \SegmentMux|clk_proc:COUNT[9]~2\ $ (\SegmentMux|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SegmentMux|clk_proc:COUNT[10]~q\,
	cin => \SegmentMux|clk_proc:COUNT[9]~2\,
	combout => \SegmentMux|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X9_Y9_N29
\SegmentMux|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SegmentMux|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SegmentMux|clk_proc:COUNT[10]~q\);

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

-- Location: LCCOMB_X9_Y8_N4
\error~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \error~0_combout\ = (\pb[3]~input_o\ & ((\pb[0]~input_o\ & (!\pb[1]~input_o\ & !\pb[2]~input_o\)) # (!\pb[0]~input_o\ & ((!\pb[2]~input_o\) # (!\pb[1]~input_o\))))) # (!\pb[3]~input_o\ & (((!\pb[2]~input_o\) # (!\pb[1]~input_o\)) # (!\pb[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \error~0_combout\);

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

-- Location: LCCOMB_X10_Y8_N14
\Adder|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adder|Add0~0_combout\ = (\sw[4]~input_o\ & (\sw[0]~input_o\ $ (VCC))) # (!\sw[4]~input_o\ & (\sw[0]~input_o\ & VCC))
-- \Adder|Add0~1\ = CARRY((\sw[4]~input_o\ & \sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[0]~input_o\,
	datad => VCC,
	combout => \Adder|Add0~0_combout\,
	cout => \Adder|Add0~1\);

-- Location: LCCOMB_X9_Y8_N10
\SumDisplayMux|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux7~0_combout\ = (!\error~0_combout\ & ((\pb[3]~input_o\ & ((\sw[0]~input_o\))) # (!\pb[3]~input_o\ & (\Adder|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \error~0_combout\,
	datac => \Adder|Add0~0_combout\,
	datad => \sw[0]~input_o\,
	combout => \SumDisplayMux|Mux7~0_combout\);

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

-- Location: LCCOMB_X10_Y8_N16
\Adder|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adder|Add0~2_combout\ = (\sw[5]~input_o\ & ((\sw[1]~input_o\ & (\Adder|Add0~1\ & VCC)) # (!\sw[1]~input_o\ & (!\Adder|Add0~1\)))) # (!\sw[5]~input_o\ & ((\sw[1]~input_o\ & (!\Adder|Add0~1\)) # (!\sw[1]~input_o\ & ((\Adder|Add0~1\) # (GND)))))
-- \Adder|Add0~3\ = CARRY((\sw[5]~input_o\ & (!\sw[1]~input_o\ & !\Adder|Add0~1\)) # (!\sw[5]~input_o\ & ((!\Adder|Add0~1\) # (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[1]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~1\,
	combout => \Adder|Add0~2_combout\,
	cout => \Adder|Add0~3\);

-- Location: LCCOMB_X10_Y8_N18
\Adder|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adder|Add0~4_combout\ = ((\sw[2]~input_o\ $ (\sw[6]~input_o\ $ (!\Adder|Add0~3\)))) # (GND)
-- \Adder|Add0~5\ = CARRY((\sw[2]~input_o\ & ((\sw[6]~input_o\) # (!\Adder|Add0~3\))) # (!\sw[2]~input_o\ & (\sw[6]~input_o\ & !\Adder|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[6]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~3\,
	combout => \Adder|Add0~4_combout\,
	cout => \Adder|Add0~5\);

-- Location: LCCOMB_X10_Y8_N20
\Adder|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adder|Add0~6_combout\ = (\sw[3]~input_o\ & ((\sw[7]~input_o\ & (\Adder|Add0~5\ & VCC)) # (!\sw[7]~input_o\ & (!\Adder|Add0~5\)))) # (!\sw[3]~input_o\ & ((\sw[7]~input_o\ & (!\Adder|Add0~5\)) # (!\sw[7]~input_o\ & ((\Adder|Add0~5\) # (GND)))))
-- \Adder|Add0~7\ = CARRY((\sw[3]~input_o\ & (!\sw[7]~input_o\ & !\Adder|Add0~5\)) # (!\sw[3]~input_o\ & ((!\Adder|Add0~5\) # (!\sw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[7]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~5\,
	combout => \Adder|Add0~6_combout\,
	cout => \Adder|Add0~7\);

-- Location: LCCOMB_X9_Y8_N16
\SumDisplayMux|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux4~1_combout\ = (\error~0_combout\) # ((\pb[3]~input_o\ & ((\sw[3]~input_o\))) # (!\pb[3]~input_o\ & (\Adder|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \error~0_combout\,
	datac => \Adder|Add0~6_combout\,
	datad => \sw[3]~input_o\,
	combout => \SumDisplayMux|Mux4~1_combout\);

-- Location: LCCOMB_X10_Y8_N26
\SumDisplayMux|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux5~0_combout\ = (!\error~0_combout\ & ((\pb[3]~input_o\ & (\sw[2]~input_o\)) # (!\pb[3]~input_o\ & ((\Adder|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \error~0_combout\,
	datac => \sw[2]~input_o\,
	datad => \Adder|Add0~4_combout\,
	combout => \SumDisplayMux|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y8_N0
\SumDisplayMux|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux6~0_combout\ = (!\error~0_combout\ & ((\pb[3]~input_o\ & ((\sw[1]~input_o\))) # (!\pb[3]~input_o\ & (\Adder|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \Adder|Add0~2_combout\,
	datac => \error~0_combout\,
	datad => \sw[1]~input_o\,
	combout => \SumDisplayMux|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y9_N8
\LeftSegment|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LeftSegment|Mux5~0_combout\ = (\SumDisplayMux|Mux4~1_combout\ & ((\SumDisplayMux|Mux7~0_combout\ & ((\SumDisplayMux|Mux6~0_combout\))) # (!\SumDisplayMux|Mux7~0_combout\ & (\SumDisplayMux|Mux5~0_combout\)))) # (!\SumDisplayMux|Mux4~1_combout\ & 
-- (\SumDisplayMux|Mux5~0_combout\ & (\SumDisplayMux|Mux7~0_combout\ $ (\SumDisplayMux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux7~0_combout\,
	datab => \SumDisplayMux|Mux4~1_combout\,
	datac => \SumDisplayMux|Mux5~0_combout\,
	datad => \SumDisplayMux|Mux6~0_combout\,
	combout => \LeftSegment|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y7_N12
\SumDisplayMux|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux0~0_combout\ = (\error~0_combout\) # ((\pb[3]~input_o\ & \sw[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~0_combout\,
	datab => \pb[3]~input_o\,
	datac => \sw[7]~input_o\,
	combout => \SumDisplayMux|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y7_N10
\SumDisplayMux|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux1~0_combout\ = (\sw[6]~input_o\ & (!\error~0_combout\ & \pb[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[6]~input_o\,
	datac => \error~0_combout\,
	datad => \pb[3]~input_o\,
	combout => \SumDisplayMux|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y8_N18
\SumDisplayMux|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux2~0_combout\ = (\pb[3]~input_o\ & (!\error~0_combout\ & \sw[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \error~0_combout\,
	datad => \sw[5]~input_o\,
	combout => \SumDisplayMux|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y8_N22
\Adder|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adder|Add0~8_combout\ = !\Adder|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Adder|Add0~7\,
	combout => \Adder|Add0~8_combout\);

-- Location: LCCOMB_X10_Y8_N24
\SumDisplayMux|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux3~0_combout\ = (!\error~0_combout\ & ((\pb[3]~input_o\ & ((\sw[4]~input_o\))) # (!\pb[3]~input_o\ & (\Adder|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \error~0_combout\,
	datac => \Adder|Add0~8_combout\,
	datad => \sw[4]~input_o\,
	combout => \SumDisplayMux|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y9_N2
\RightSegment|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RightSegment|Mux5~0_combout\ = (\SumDisplayMux|Mux0~0_combout\ & ((\SumDisplayMux|Mux3~0_combout\ & ((\SumDisplayMux|Mux2~0_combout\))) # (!\SumDisplayMux|Mux3~0_combout\ & (\SumDisplayMux|Mux1~0_combout\)))) # (!\SumDisplayMux|Mux0~0_combout\ & 
-- (\SumDisplayMux|Mux1~0_combout\ & (\SumDisplayMux|Mux2~0_combout\ $ (\SumDisplayMux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux0~0_combout\,
	datab => \SumDisplayMux|Mux1~0_combout\,
	datac => \SumDisplayMux|Mux2~0_combout\,
	datad => \SumDisplayMux|Mux3~0_combout\,
	combout => \RightSegment|Mux5~0_combout\);

-- Location: LCCOMB_X9_Y9_N6
\SegmentMux|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|DOUT_TEMP[1]~0_combout\ = (\SegmentMux|clk_proc:COUNT[10]~q\ & (!\LeftSegment|Mux5~0_combout\)) # (!\SegmentMux|clk_proc:COUNT[10]~q\ & ((!\RightSegment|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[10]~q\,
	datac => \LeftSegment|Mux5~0_combout\,
	datad => \RightSegment|Mux5~0_combout\,
	combout => \SegmentMux|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X10_Y9_N30
\RightSegment|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RightSegment|Mux1~0_combout\ = (\SumDisplayMux|Mux0~0_combout\ & (\SumDisplayMux|Mux1~0_combout\ & (!\SumDisplayMux|Mux2~0_combout\))) # (!\SumDisplayMux|Mux0~0_combout\ & ((\SumDisplayMux|Mux1~0_combout\ & (\SumDisplayMux|Mux2~0_combout\ & 
-- \SumDisplayMux|Mux3~0_combout\)) # (!\SumDisplayMux|Mux1~0_combout\ & ((\SumDisplayMux|Mux2~0_combout\) # (\SumDisplayMux|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux0~0_combout\,
	datab => \SumDisplayMux|Mux1~0_combout\,
	datac => \SumDisplayMux|Mux2~0_combout\,
	datad => \SumDisplayMux|Mux3~0_combout\,
	combout => \RightSegment|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y9_N12
\LeftSegment|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LeftSegment|Mux1~0_combout\ = (\SumDisplayMux|Mux5~0_combout\ & ((\SumDisplayMux|Mux4~1_combout\ & ((!\SumDisplayMux|Mux6~0_combout\))) # (!\SumDisplayMux|Mux4~1_combout\ & (\SumDisplayMux|Mux7~0_combout\ & \SumDisplayMux|Mux6~0_combout\)))) # 
-- (!\SumDisplayMux|Mux5~0_combout\ & (!\SumDisplayMux|Mux4~1_combout\ & ((\SumDisplayMux|Mux7~0_combout\) # (\SumDisplayMux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux7~0_combout\,
	datab => \SumDisplayMux|Mux5~0_combout\,
	datac => \SumDisplayMux|Mux4~1_combout\,
	datad => \SumDisplayMux|Mux6~0_combout\,
	combout => \LeftSegment|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y9_N4
\SegmentMux|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|DOUT_TEMP[5]~1_combout\ = (\SegmentMux|clk_proc:COUNT[10]~q\ & ((!\LeftSegment|Mux1~0_combout\))) # (!\SegmentMux|clk_proc:COUNT[10]~q\ & (!\RightSegment|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[10]~q\,
	datac => \RightSegment|Mux1~0_combout\,
	datad => \LeftSegment|Mux1~0_combout\,
	combout => \SegmentMux|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X9_Y9_N4
\LeftSegment|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LeftSegment|Mux0~0_combout\ = (\SumDisplayMux|Mux4~1_combout\) # ((\SumDisplayMux|Mux5~0_combout\ & ((!\SumDisplayMux|Mux6~0_combout\) # (!\SumDisplayMux|Mux7~0_combout\))) # (!\SumDisplayMux|Mux5~0_combout\ & ((\SumDisplayMux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux7~0_combout\,
	datab => \SumDisplayMux|Mux4~1_combout\,
	datac => \SumDisplayMux|Mux5~0_combout\,
	datad => \SumDisplayMux|Mux6~0_combout\,
	combout => \LeftSegment|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y9_N18
\RightSegment|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RightSegment|Mux0~0_combout\ = (\SumDisplayMux|Mux0~0_combout\) # ((\SumDisplayMux|Mux1~0_combout\ & ((!\SumDisplayMux|Mux3~0_combout\) # (!\SumDisplayMux|Mux2~0_combout\))) # (!\SumDisplayMux|Mux1~0_combout\ & (\SumDisplayMux|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux0~0_combout\,
	datab => \SumDisplayMux|Mux1~0_combout\,
	datac => \SumDisplayMux|Mux2~0_combout\,
	datad => \SumDisplayMux|Mux3~0_combout\,
	combout => \RightSegment|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y9_N30
\SegmentMux|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|DOUT_TEMP[6]~2_combout\ = (\SegmentMux|clk_proc:COUNT[10]~q\ & (\LeftSegment|Mux0~0_combout\)) # (!\SegmentMux|clk_proc:COUNT[10]~q\ & ((\RightSegment|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[10]~q\,
	datac => \LeftSegment|Mux0~0_combout\,
	datad => \RightSegment|Mux0~0_combout\,
	combout => \SegmentMux|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X9_Y8_N24
\SumLogicMux|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux4~0_combout\ = (\pb[3]~input_o\ & \pb[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \SumLogicMux|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y8_N26
\SumLogicMux|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux7~0_combout\ = (!\SumLogicMux|Mux4~0_combout\ & (((\Adder|Add0~0_combout\) # (!\pb[0]~input_o\)) # (!\pb[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \Adder|Add0~0_combout\,
	datad => \SumLogicMux|Mux4~0_combout\,
	combout => \SumLogicMux|Mux7~0_combout\);

-- Location: LCCOMB_X10_Y8_N4
\SumLogicMux|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux7~1_combout\ = (\sw[4]~input_o\ & (((!\pb[0]~input_o\ & \sw[0]~input_o\)) # (!\pb[1]~input_o\))) # (!\sw[4]~input_o\ & (!\pb[1]~input_o\ & ((\sw[0]~input_o\) # (!\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \pb[1]~input_o\,
	combout => \SumLogicMux|Mux7~1_combout\);

-- Location: LCCOMB_X9_Y8_N20
\SumLogicMux|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux7~2_combout\ = (\SumLogicMux|Mux7~0_combout\) # ((\SumLogicMux|Mux7~1_combout\) # ((!\pb[3]~input_o\ & !\pb[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \SumLogicMux|Mux7~0_combout\,
	datad => \SumLogicMux|Mux7~1_combout\,
	combout => \SumLogicMux|Mux7~2_combout\);

-- Location: LCCOMB_X9_Y8_N12
\SumLogicMux|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux6~2_combout\ = (\pb[3]~input_o\ & ((\pb[1]~input_o\) # (!\pb[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \SumLogicMux|Mux6~2_combout\);

-- Location: LCCOMB_X10_Y8_N6
\SumLogicMux|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux6~1_combout\ = (\pb[0]~input_o\ & (\pb[1]~input_o\ & (\sw[1]~input_o\ $ (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \pb[1]~input_o\,
	combout => \SumLogicMux|Mux6~1_combout\);

-- Location: LCCOMB_X9_Y8_N2
\SumLogicMux|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux6~3_combout\ = (\SumLogicMux|Mux6~2_combout\ & (!\SumLogicMux|Mux4~0_combout\ & ((\SumLogicMux|Mux6~1_combout\)))) # (!\SumLogicMux|Mux6~2_combout\ & ((\SumLogicMux|Mux4~0_combout\) # ((\Adder|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumLogicMux|Mux6~2_combout\,
	datab => \SumLogicMux|Mux4~0_combout\,
	datac => \Adder|Add0~2_combout\,
	datad => \SumLogicMux|Mux6~1_combout\,
	combout => \SumLogicMux|Mux6~3_combout\);

-- Location: LCCOMB_X10_Y8_N28
\SumLogicMux|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux6~4_combout\ = (\SumLogicMux|Mux6~3_combout\ & (\pb[0]~input_o\ & ((\sw[1]~input_o\) # (\sw[5]~input_o\)))) # (!\SumLogicMux|Mux6~3_combout\ & (\sw[1]~input_o\ & ((\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \SumLogicMux|Mux6~3_combout\,
	combout => \SumLogicMux|Mux6~4_combout\);

-- Location: LCCOMB_X9_Y8_N14
\SumLogicMux|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux6~0_combout\ = (\pb[3]~input_o\ & (\pb[2]~input_o\ & ((!\pb[1]~input_o\) # (!\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \SumLogicMux|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y8_N10
\SumLogicMux|Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux6~5_combout\ = (\error~0_combout\) # ((\SumLogicMux|Mux6~0_combout\ & ((\SumLogicMux|Mux6~4_combout\))) # (!\SumLogicMux|Mux6~0_combout\ & (\SumLogicMux|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumLogicMux|Mux6~3_combout\,
	datab => \SumLogicMux|Mux6~4_combout\,
	datac => \error~0_combout\,
	datad => \SumLogicMux|Mux6~0_combout\,
	combout => \SumLogicMux|Mux6~5_combout\);

-- Location: LCCOMB_X10_Y8_N8
\SumLogicMux|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux5~0_combout\ = (\pb[0]~input_o\ & (\pb[1]~input_o\ & (\sw[2]~input_o\ $ (\sw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \pb[1]~input_o\,
	combout => \SumLogicMux|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y8_N30
\SumLogicMux|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux5~1_combout\ = (\SumLogicMux|Mux6~2_combout\ & (!\SumLogicMux|Mux4~0_combout\ & (\SumLogicMux|Mux5~0_combout\))) # (!\SumLogicMux|Mux6~2_combout\ & ((\SumLogicMux|Mux4~0_combout\) # ((\Adder|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumLogicMux|Mux6~2_combout\,
	datab => \SumLogicMux|Mux4~0_combout\,
	datac => \SumLogicMux|Mux5~0_combout\,
	datad => \Adder|Add0~4_combout\,
	combout => \SumLogicMux|Mux5~1_combout\);

-- Location: LCCOMB_X10_Y8_N12
\SumLogicMux|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux5~3_combout\ = (\SumLogicMux|Mux6~0_combout\ & (\sw[2]~input_o\ & ((\pb[0]~input_o\) # (!\SumLogicMux|Mux5~1_combout\)))) # (!\SumLogicMux|Mux6~0_combout\ & (\SumLogicMux|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumLogicMux|Mux5~1_combout\,
	datab => \pb[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \SumLogicMux|Mux6~0_combout\,
	combout => \SumLogicMux|Mux5~3_combout\);

-- Location: LCCOMB_X10_Y8_N2
\SumLogicMux|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux5~4_combout\ = (\SumLogicMux|Mux5~1_combout\ & ((\SumLogicMux|Mux5~3_combout\) # ((\pb[0]~input_o\ & \sw[6]~input_o\)))) # (!\SumLogicMux|Mux5~1_combout\ & (((\sw[6]~input_o\ & \SumLogicMux|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumLogicMux|Mux5~1_combout\,
	datab => \pb[0]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \SumLogicMux|Mux5~3_combout\,
	combout => \SumLogicMux|Mux5~4_combout\);

-- Location: LCCOMB_X9_Y8_N30
\SumLogicMux|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux5~2_combout\ = (\error~0_combout\) # (\SumLogicMux|Mux5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \error~0_combout\,
	datad => \SumLogicMux|Mux5~4_combout\,
	combout => \SumLogicMux|Mux5~2_combout\);

-- Location: LCCOMB_X9_Y8_N28
\SumLogicMux|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux4~1_combout\ = (\pb[1]~input_o\ & (\pb[0]~input_o\ & (\sw[7]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \SumLogicMux|Mux4~1_combout\);

-- Location: LCCOMB_X9_Y8_N6
\SumLogicMux|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux4~2_combout\ = (\pb[3]~input_o\ & (!\pb[2]~input_o\ & \SumLogicMux|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[2]~input_o\,
	datad => \SumLogicMux|Mux4~1_combout\,
	combout => \SumLogicMux|Mux4~2_combout\);

-- Location: LCCOMB_X9_Y8_N8
\SumLogicMux|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux4~3_combout\ = (\pb[1]~input_o\ & (!\pb[0]~input_o\ & (\sw[7]~input_o\ & \sw[3]~input_o\))) # (!\pb[1]~input_o\ & (\pb[0]~input_o\ & ((\sw[7]~input_o\) # (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \SumLogicMux|Mux4~3_combout\);

-- Location: LCCOMB_X9_Y8_N22
\SumDisplayMux|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumDisplayMux|Mux4~0_combout\ = (!\error~0_combout\ & ((\pb[3]~input_o\) # (!\Adder|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \error~0_combout\,
	datac => \Adder|Add0~6_combout\,
	combout => \SumDisplayMux|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y8_N0
\SumLogicMux|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux4~4_combout\ = (\SumLogicMux|Mux4~2_combout\) # (((\SumLogicMux|Mux4~3_combout\ & \SumLogicMux|Mux4~0_combout\)) # (!\SumDisplayMux|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumLogicMux|Mux4~2_combout\,
	datab => \SumLogicMux|Mux4~3_combout\,
	datac => \SumDisplayMux|Mux4~0_combout\,
	datad => \SumLogicMux|Mux4~0_combout\,
	combout => \SumLogicMux|Mux4~4_combout\);

-- Location: LCCOMB_X10_Y7_N28
\SumLogicMux|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SumLogicMux|Mux3~0_combout\ = (\error~0_combout\) # ((!\pb[3]~input_o\ & \Adder|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~0_combout\,
	datab => \pb[3]~input_o\,
	datac => \Adder|Add0~8_combout\,
	combout => \SumLogicMux|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y9_N0
\LeftSegment|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LeftSegment|Mux6~0_combout\ = (\SumDisplayMux|Mux5~0_combout\ & (!\SumDisplayMux|Mux6~0_combout\ & ((\SumDisplayMux|Mux4~1_combout\) # (!\SumDisplayMux|Mux7~0_combout\)))) # (!\SumDisplayMux|Mux5~0_combout\ & (\SumDisplayMux|Mux7~0_combout\ & 
-- (\SumDisplayMux|Mux4~1_combout\ $ (!\SumDisplayMux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux7~0_combout\,
	datab => \SumDisplayMux|Mux4~1_combout\,
	datac => \SumDisplayMux|Mux5~0_combout\,
	datad => \SumDisplayMux|Mux6~0_combout\,
	combout => \LeftSegment|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y9_N24
\RightSegment|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RightSegment|Mux6~0_combout\ = (\SumDisplayMux|Mux1~0_combout\ & (!\SumDisplayMux|Mux2~0_combout\ & ((\SumDisplayMux|Mux0~0_combout\) # (!\SumDisplayMux|Mux3~0_combout\)))) # (!\SumDisplayMux|Mux1~0_combout\ & (\SumDisplayMux|Mux3~0_combout\ & 
-- (\SumDisplayMux|Mux0~0_combout\ $ (!\SumDisplayMux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux0~0_combout\,
	datab => \SumDisplayMux|Mux1~0_combout\,
	datac => \SumDisplayMux|Mux2~0_combout\,
	datad => \SumDisplayMux|Mux3~0_combout\,
	combout => \RightSegment|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y9_N6
\SegmentMux|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|DOUT[0]~0_combout\ = (\SegmentMux|clk_proc:COUNT[10]~q\ & (\LeftSegment|Mux6~0_combout\)) # (!\SegmentMux|clk_proc:COUNT[10]~q\ & ((\RightSegment|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[10]~q\,
	datac => \LeftSegment|Mux6~0_combout\,
	datad => \RightSegment|Mux6~0_combout\,
	combout => \SegmentMux|DOUT[0]~0_combout\);

-- Location: LCCOMB_X10_Y9_N10
\RightSegment|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RightSegment|Mux4~0_combout\ = (\SumDisplayMux|Mux0~0_combout\ & (\SumDisplayMux|Mux1~0_combout\ & ((\SumDisplayMux|Mux2~0_combout\) # (!\SumDisplayMux|Mux3~0_combout\)))) # (!\SumDisplayMux|Mux0~0_combout\ & (!\SumDisplayMux|Mux1~0_combout\ & 
-- (\SumDisplayMux|Mux2~0_combout\ & !\SumDisplayMux|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux0~0_combout\,
	datab => \SumDisplayMux|Mux1~0_combout\,
	datac => \SumDisplayMux|Mux2~0_combout\,
	datad => \SumDisplayMux|Mux3~0_combout\,
	combout => \RightSegment|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y9_N28
\LeftSegment|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LeftSegment|Mux4~0_combout\ = (\SumDisplayMux|Mux5~0_combout\ & (\SumDisplayMux|Mux4~1_combout\ & ((\SumDisplayMux|Mux6~0_combout\) # (!\SumDisplayMux|Mux7~0_combout\)))) # (!\SumDisplayMux|Mux5~0_combout\ & (!\SumDisplayMux|Mux7~0_combout\ & 
-- (!\SumDisplayMux|Mux4~1_combout\ & \SumDisplayMux|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux7~0_combout\,
	datab => \SumDisplayMux|Mux5~0_combout\,
	datac => \SumDisplayMux|Mux4~1_combout\,
	datad => \SumDisplayMux|Mux6~0_combout\,
	combout => \LeftSegment|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y9_N0
\SegmentMux|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|DOUT[2]~2_combout\ = (\SegmentMux|clk_proc:COUNT[10]~q\ & ((\LeftSegment|Mux4~0_combout\))) # (!\SegmentMux|clk_proc:COUNT[10]~q\ & (\RightSegment|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RightSegment|Mux4~0_combout\,
	datab => \SegmentMux|clk_proc:COUNT[10]~q\,
	datad => \LeftSegment|Mux4~0_combout\,
	combout => \SegmentMux|DOUT[2]~2_combout\);

-- Location: LCCOMB_X10_Y9_N26
\LeftSegment|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LeftSegment|Mux3~0_combout\ = (\SumDisplayMux|Mux6~0_combout\ & ((\SumDisplayMux|Mux7~0_combout\ & (\SumDisplayMux|Mux5~0_combout\)) # (!\SumDisplayMux|Mux7~0_combout\ & (!\SumDisplayMux|Mux5~0_combout\ & \SumDisplayMux|Mux4~1_combout\)))) # 
-- (!\SumDisplayMux|Mux6~0_combout\ & (!\SumDisplayMux|Mux4~1_combout\ & (\SumDisplayMux|Mux7~0_combout\ $ (\SumDisplayMux|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux7~0_combout\,
	datab => \SumDisplayMux|Mux5~0_combout\,
	datac => \SumDisplayMux|Mux4~1_combout\,
	datad => \SumDisplayMux|Mux6~0_combout\,
	combout => \LeftSegment|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y9_N8
\RightSegment|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RightSegment|Mux3~0_combout\ = (\SumDisplayMux|Mux2~0_combout\ & ((\SumDisplayMux|Mux1~0_combout\ & ((\SumDisplayMux|Mux3~0_combout\))) # (!\SumDisplayMux|Mux1~0_combout\ & (\SumDisplayMux|Mux0~0_combout\ & !\SumDisplayMux|Mux3~0_combout\)))) # 
-- (!\SumDisplayMux|Mux2~0_combout\ & (!\SumDisplayMux|Mux0~0_combout\ & (\SumDisplayMux|Mux1~0_combout\ $ (\SumDisplayMux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux0~0_combout\,
	datab => \SumDisplayMux|Mux1~0_combout\,
	datac => \SumDisplayMux|Mux2~0_combout\,
	datad => \SumDisplayMux|Mux3~0_combout\,
	combout => \RightSegment|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y9_N22
\SegmentMux|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|DOUT[3]~3_combout\ = (\SegmentMux|clk_proc:COUNT[10]~q\ & (\LeftSegment|Mux3~0_combout\)) # (!\SegmentMux|clk_proc:COUNT[10]~q\ & ((\RightSegment|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LeftSegment|Mux3~0_combout\,
	datab => \SegmentMux|clk_proc:COUNT[10]~q\,
	datac => \RightSegment|Mux3~0_combout\,
	combout => \SegmentMux|DOUT[3]~3_combout\);

-- Location: LCCOMB_X10_Y9_N14
\RightSegment|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RightSegment|Mux2~0_combout\ = (\SumDisplayMux|Mux2~0_combout\ & (!\SumDisplayMux|Mux0~0_combout\ & ((\SumDisplayMux|Mux3~0_combout\)))) # (!\SumDisplayMux|Mux2~0_combout\ & ((\SumDisplayMux|Mux1~0_combout\ & (!\SumDisplayMux|Mux0~0_combout\)) # 
-- (!\SumDisplayMux|Mux1~0_combout\ & ((\SumDisplayMux|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux0~0_combout\,
	datab => \SumDisplayMux|Mux1~0_combout\,
	datac => \SumDisplayMux|Mux2~0_combout\,
	datad => \SumDisplayMux|Mux3~0_combout\,
	combout => \RightSegment|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y9_N16
\LeftSegment|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LeftSegment|Mux2~0_combout\ = (\SumDisplayMux|Mux6~0_combout\ & (\SumDisplayMux|Mux7~0_combout\ & ((!\SumDisplayMux|Mux4~1_combout\)))) # (!\SumDisplayMux|Mux6~0_combout\ & ((\SumDisplayMux|Mux5~0_combout\ & ((!\SumDisplayMux|Mux4~1_combout\))) # 
-- (!\SumDisplayMux|Mux5~0_combout\ & (\SumDisplayMux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumDisplayMux|Mux7~0_combout\,
	datab => \SumDisplayMux|Mux5~0_combout\,
	datac => \SumDisplayMux|Mux4~1_combout\,
	datad => \SumDisplayMux|Mux6~0_combout\,
	combout => \LeftSegment|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y9_N20
\SegmentMux|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegmentMux|DOUT[4]~4_combout\ = (\SegmentMux|clk_proc:COUNT[10]~q\ & ((\LeftSegment|Mux2~0_combout\))) # (!\SegmentMux|clk_proc:COUNT[10]~q\ & (\RightSegment|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegmentMux|clk_proc:COUNT[10]~q\,
	datac => \RightSegment|Mux2~0_combout\,
	datad => \LeftSegment|Mux2~0_combout\,
	combout => \SegmentMux|DOUT[4]~4_combout\);

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


