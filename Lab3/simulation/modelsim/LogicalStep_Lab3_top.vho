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

-- DATE "06/22/2017 08:40:28"

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

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab3_top;

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
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab3_top IS
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
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \elon_mux|dout[0]~2_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \elon_mux|dout[2]~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \elon_mux|dout[3]~3_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \elon_mux|dout[1]~1_combout\ : std_logic;
SIGNAL \left_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \right_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \output|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \output|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \output|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \output|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \left_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \right_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \output|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \left_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \right_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \output|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \thermo_cntrl|comparitor|bit3|compx1_mag[1]~0_combout\ : std_logic;
SIGNAL \thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\ : std_logic;
SIGNAL \thermo_cntrl|comparitor|bit4|compx1_mag[1]~6_combout\ : std_logic;
SIGNAL \thermo_cntrl|output[0]~0_combout\ : std_logic;
SIGNAL \thermo_cntrl|comparitor|bit4|compx1_mag[0]~7_combout\ : std_logic;
SIGNAL \thermo_cntrl|comparitor|bit4|compx1_mag[0]~2_combout\ : std_logic;
SIGNAL \thermo_cntrl|comparitor|bit4|compx1_mag[0]~4_combout\ : std_logic;
SIGNAL \thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\ : std_logic;
SIGNAL \thermo_cntrl|output[0]~1_combout\ : std_logic;
SIGNAL \thermo_cntrl|output[2]~2_combout\ : std_logic;
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
SIGNAL \thermo_cntrl|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \ALT_INV_pb[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb[3]~input_o\ : std_logic;
SIGNAL \output|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \output|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \output|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \output|ALT_INV_DOUT[0]~0_combout\ : std_logic;

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
\output|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \output|clk_proc:COUNT[10]~q\;
\ALT_INV_pb[2]~input_o\ <= NOT \pb[2]~input_o\;
\ALT_INV_pb[1]~input_o\ <= NOT \pb[1]~input_o\;
\ALT_INV_pb[0]~input_o\ <= NOT \pb[0]~input_o\;
\ALT_INV_pb[3]~input_o\ <= NOT \pb[3]~input_o\;
\output|ALT_INV_DOUT[4]~4_combout\ <= NOT \output|DOUT[4]~4_combout\;
\output|ALT_INV_DOUT[3]~3_combout\ <= NOT \output|DOUT[3]~3_combout\;
\output|ALT_INV_DOUT[2]~2_combout\ <= NOT \output|DOUT[2]~2_combout\;
\output|ALT_INV_DOUT[0]~0_combout\ <= NOT \output|DOUT[0]~0_combout\;

-- Location: LCCOMB_X11_Y24_N20
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
	i => \thermo_cntrl|output[0]~1_combout\,
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
	i => \thermo_cntrl|output\(1),
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
	i => \thermo_cntrl|output[2]~2_combout\,
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
	i => \thermo_cntrl|output[0]~0_combout\,
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
	i => \ALT_INV_pb[0]~input_o\,
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
	i => \ALT_INV_pb[1]~input_o\,
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
	i => \ALT_INV_pb[2]~input_o\,
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
	i => \ALT_INV_pb[3]~input_o\,
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
	i => \output|ALT_INV_DOUT[0]~0_combout\,
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
	i => \output|ALT_INV_DOUT[2]~2_combout\,
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

-- Location: LCCOMB_X10_Y9_N8
\elon_mux|dout[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \elon_mux|dout[0]~2_combout\ = (\pb[3]~input_o\ & \sw[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \elon_mux|dout[0]~2_combout\);

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

-- Location: LCCOMB_X10_Y9_N4
\elon_mux|dout[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \elon_mux|dout[2]~0_combout\ = (\sw[6]~input_o\) # (!\pb[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[6]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \elon_mux|dout[2]~0_combout\);

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

-- Location: LCCOMB_X10_Y9_N16
\elon_mux|dout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \elon_mux|dout[3]~3_combout\ = (\sw[7]~input_o\ & \pb[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[7]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \elon_mux|dout[3]~3_combout\);

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

-- Location: LCCOMB_X10_Y9_N14
\elon_mux|dout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \elon_mux|dout[1]~1_combout\ = (\sw[5]~input_o\ & \pb[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[5]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \elon_mux|dout[1]~1_combout\);

-- Location: LCCOMB_X11_Y9_N10
\left_decoder|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux5~0_combout\ = (\elon_mux|dout[3]~3_combout\ & ((\elon_mux|dout[0]~2_combout\ & ((\elon_mux|dout[1]~1_combout\))) # (!\elon_mux|dout[0]~2_combout\ & (\elon_mux|dout[2]~0_combout\)))) # (!\elon_mux|dout[3]~3_combout\ & 
-- (\elon_mux|dout[2]~0_combout\ & (\elon_mux|dout[0]~2_combout\ $ (\elon_mux|dout[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elon_mux|dout[0]~2_combout\,
	datab => \elon_mux|dout[2]~0_combout\,
	datac => \elon_mux|dout[3]~3_combout\,
	datad => \elon_mux|dout[1]~1_combout\,
	combout => \left_decoder|Mux5~0_combout\);

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

-- Location: LCCOMB_X11_Y9_N4
\right_decoder|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux5~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\sw[3]~input_o\))) # (!\sw[0]~input_o\ & (\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ & (\sw[0]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \right_decoder|Mux5~0_combout\);

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

-- Location: LCCOMB_X11_Y10_N4
\output|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[0]~0_combout\ = !\output|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output|clk_proc:COUNT[0]~q\,
	combout => \output|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X11_Y10_N5
\output|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X11_Y10_N8
\output|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[1]~1_combout\ = (\output|clk_proc:COUNT[0]~q\ & (\output|clk_proc:COUNT[1]~q\ $ (VCC))) # (!\output|clk_proc:COUNT[0]~q\ & (\output|clk_proc:COUNT[1]~q\ & VCC))
-- \output|clk_proc:COUNT[1]~2\ = CARRY((\output|clk_proc:COUNT[0]~q\ & \output|clk_proc:COUNT[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output|clk_proc:COUNT[0]~q\,
	datab => \output|clk_proc:COUNT[1]~q\,
	datad => VCC,
	combout => \output|clk_proc:COUNT[1]~1_combout\,
	cout => \output|clk_proc:COUNT[1]~2\);

-- Location: FF_X11_Y10_N9
\output|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X11_Y10_N10
\output|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[2]~1_combout\ = (\output|clk_proc:COUNT[2]~q\ & (!\output|clk_proc:COUNT[1]~2\)) # (!\output|clk_proc:COUNT[2]~q\ & ((\output|clk_proc:COUNT[1]~2\) # (GND)))
-- \output|clk_proc:COUNT[2]~2\ = CARRY((!\output|clk_proc:COUNT[1]~2\) # (!\output|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \output|clk_proc:COUNT[1]~2\,
	combout => \output|clk_proc:COUNT[2]~1_combout\,
	cout => \output|clk_proc:COUNT[2]~2\);

-- Location: FF_X11_Y10_N11
\output|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X11_Y10_N12
\output|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[3]~1_combout\ = (\output|clk_proc:COUNT[3]~q\ & (\output|clk_proc:COUNT[2]~2\ $ (GND))) # (!\output|clk_proc:COUNT[3]~q\ & (!\output|clk_proc:COUNT[2]~2\ & VCC))
-- \output|clk_proc:COUNT[3]~2\ = CARRY((\output|clk_proc:COUNT[3]~q\ & !\output|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \output|clk_proc:COUNT[2]~2\,
	combout => \output|clk_proc:COUNT[3]~1_combout\,
	cout => \output|clk_proc:COUNT[3]~2\);

-- Location: FF_X11_Y10_N13
\output|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X11_Y10_N14
\output|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[4]~1_combout\ = (\output|clk_proc:COUNT[4]~q\ & (!\output|clk_proc:COUNT[3]~2\)) # (!\output|clk_proc:COUNT[4]~q\ & ((\output|clk_proc:COUNT[3]~2\) # (GND)))
-- \output|clk_proc:COUNT[4]~2\ = CARRY((!\output|clk_proc:COUNT[3]~2\) # (!\output|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \output|clk_proc:COUNT[3]~2\,
	combout => \output|clk_proc:COUNT[4]~1_combout\,
	cout => \output|clk_proc:COUNT[4]~2\);

-- Location: FF_X11_Y10_N15
\output|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X11_Y10_N16
\output|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[5]~1_combout\ = (\output|clk_proc:COUNT[5]~q\ & (\output|clk_proc:COUNT[4]~2\ $ (GND))) # (!\output|clk_proc:COUNT[5]~q\ & (!\output|clk_proc:COUNT[4]~2\ & VCC))
-- \output|clk_proc:COUNT[5]~2\ = CARRY((\output|clk_proc:COUNT[5]~q\ & !\output|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \output|clk_proc:COUNT[4]~2\,
	combout => \output|clk_proc:COUNT[5]~1_combout\,
	cout => \output|clk_proc:COUNT[5]~2\);

-- Location: FF_X11_Y10_N17
\output|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X11_Y10_N18
\output|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[6]~1_combout\ = (\output|clk_proc:COUNT[6]~q\ & (!\output|clk_proc:COUNT[5]~2\)) # (!\output|clk_proc:COUNT[6]~q\ & ((\output|clk_proc:COUNT[5]~2\) # (GND)))
-- \output|clk_proc:COUNT[6]~2\ = CARRY((!\output|clk_proc:COUNT[5]~2\) # (!\output|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \output|clk_proc:COUNT[5]~2\,
	combout => \output|clk_proc:COUNT[6]~1_combout\,
	cout => \output|clk_proc:COUNT[6]~2\);

-- Location: FF_X11_Y10_N19
\output|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X11_Y10_N20
\output|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[7]~1_combout\ = (\output|clk_proc:COUNT[7]~q\ & (\output|clk_proc:COUNT[6]~2\ $ (GND))) # (!\output|clk_proc:COUNT[7]~q\ & (!\output|clk_proc:COUNT[6]~2\ & VCC))
-- \output|clk_proc:COUNT[7]~2\ = CARRY((\output|clk_proc:COUNT[7]~q\ & !\output|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \output|clk_proc:COUNT[6]~2\,
	combout => \output|clk_proc:COUNT[7]~1_combout\,
	cout => \output|clk_proc:COUNT[7]~2\);

-- Location: FF_X11_Y10_N21
\output|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X11_Y10_N22
\output|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[8]~1_combout\ = (\output|clk_proc:COUNT[8]~q\ & (!\output|clk_proc:COUNT[7]~2\)) # (!\output|clk_proc:COUNT[8]~q\ & ((\output|clk_proc:COUNT[7]~2\) # (GND)))
-- \output|clk_proc:COUNT[8]~2\ = CARRY((!\output|clk_proc:COUNT[7]~2\) # (!\output|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \output|clk_proc:COUNT[7]~2\,
	combout => \output|clk_proc:COUNT[8]~1_combout\,
	cout => \output|clk_proc:COUNT[8]~2\);

-- Location: FF_X11_Y10_N23
\output|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X11_Y10_N24
\output|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[9]~1_combout\ = (\output|clk_proc:COUNT[9]~q\ & (\output|clk_proc:COUNT[8]~2\ $ (GND))) # (!\output|clk_proc:COUNT[9]~q\ & (!\output|clk_proc:COUNT[8]~2\ & VCC))
-- \output|clk_proc:COUNT[9]~2\ = CARRY((\output|clk_proc:COUNT[9]~q\ & !\output|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \output|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \output|clk_proc:COUNT[8]~2\,
	combout => \output|clk_proc:COUNT[9]~1_combout\,
	cout => \output|clk_proc:COUNT[9]~2\);

-- Location: FF_X11_Y10_N25
\output|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X11_Y10_N26
\output|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|clk_proc:COUNT[10]~1_combout\ = \output|clk_proc:COUNT[10]~q\ $ (\output|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \output|clk_proc:COUNT[10]~q\,
	cin => \output|clk_proc:COUNT[9]~2\,
	combout => \output|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X11_Y10_N27
\output|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \output|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X11_Y9_N18
\output|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT_TEMP[1]~0_combout\ = (\output|clk_proc:COUNT[10]~q\ & (!\left_decoder|Mux5~0_combout\)) # (!\output|clk_proc:COUNT[10]~q\ & ((!\right_decoder|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_decoder|Mux5~0_combout\,
	datac => \right_decoder|Mux5~0_combout\,
	datad => \output|clk_proc:COUNT[10]~q\,
	combout => \output|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X11_Y9_N0
\left_decoder|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux1~0_combout\ = (\elon_mux|dout[2]~0_combout\ & ((\elon_mux|dout[3]~3_combout\ & ((!\elon_mux|dout[1]~1_combout\))) # (!\elon_mux|dout[3]~3_combout\ & (\elon_mux|dout[0]~2_combout\ & \elon_mux|dout[1]~1_combout\)))) # 
-- (!\elon_mux|dout[2]~0_combout\ & (!\elon_mux|dout[3]~3_combout\ & ((\elon_mux|dout[0]~2_combout\) # (\elon_mux|dout[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elon_mux|dout[0]~2_combout\,
	datab => \elon_mux|dout[2]~0_combout\,
	datac => \elon_mux|dout[3]~3_combout\,
	datad => \elon_mux|dout[1]~1_combout\,
	combout => \left_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y9_N26
\right_decoder|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux1~0_combout\ = (\sw[2]~input_o\ & ((\sw[1]~input_o\ & (\sw[0]~input_o\ & !\sw[3]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[3]~input_o\))))) # (!\sw[2]~input_o\ & (!\sw[3]~input_o\ & ((\sw[1]~input_o\) # (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \right_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y9_N28
\output|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT_TEMP[5]~1_combout\ = (\output|clk_proc:COUNT[10]~q\ & (!\left_decoder|Mux1~0_combout\)) # (!\output|clk_proc:COUNT[10]~q\ & ((!\right_decoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \left_decoder|Mux1~0_combout\,
	datac => \right_decoder|Mux1~0_combout\,
	datad => \output|clk_proc:COUNT[10]~q\,
	combout => \output|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X11_Y9_N6
\left_decoder|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux0~0_combout\ = (\elon_mux|dout[3]~3_combout\) # ((\elon_mux|dout[2]~0_combout\ & ((!\elon_mux|dout[1]~1_combout\) # (!\elon_mux|dout[0]~2_combout\))) # (!\elon_mux|dout[2]~0_combout\ & ((\elon_mux|dout[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elon_mux|dout[0]~2_combout\,
	datab => \elon_mux|dout[2]~0_combout\,
	datac => \elon_mux|dout[3]~3_combout\,
	datad => \elon_mux|dout[1]~1_combout\,
	combout => \left_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y9_N8
\right_decoder|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux0~0_combout\ = (\sw[3]~input_o\) # ((\sw[2]~input_o\ & ((!\sw[0]~input_o\) # (!\sw[1]~input_o\))) # (!\sw[2]~input_o\ & (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \right_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y9_N2
\output|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT_TEMP[6]~2_combout\ = (\output|clk_proc:COUNT[10]~q\ & (\left_decoder|Mux0~0_combout\)) # (!\output|clk_proc:COUNT[10]~q\ & ((\right_decoder|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_decoder|Mux0~0_combout\,
	datac => \right_decoder|Mux0~0_combout\,
	datad => \output|clk_proc:COUNT[10]~q\,
	combout => \output|DOUT_TEMP[6]~2_combout\);

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

-- Location: LCCOMB_X10_Y9_N22
\thermo_cntrl|comparitor|bit3|compx1_mag[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|comparitor|bit3|compx1_mag[1]~0_combout\ = \sw[2]~input_o\ $ (((\sw[6]~input_o\) # (!\pb[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[3]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \thermo_cntrl|comparitor|bit3|compx1_mag[1]~0_combout\);

-- Location: LCCOMB_X10_Y9_N0
\thermo_cntrl|comparitor|bit4|compx1_mag[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\ = (\sw[0]~input_o\ & (\elon_mux|dout[0]~2_combout\ & (\elon_mux|dout[1]~1_combout\ $ (!\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & (!\elon_mux|dout[0]~2_combout\ & (\elon_mux|dout[1]~1_combout\ $ 
-- (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \elon_mux|dout[1]~1_combout\,
	datac => \elon_mux|dout[0]~2_combout\,
	datad => \sw[1]~input_o\,
	combout => \thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\);

-- Location: LCCOMB_X10_Y9_N2
\thermo_cntrl|comparitor|bit4|compx1_mag[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|comparitor|bit4|compx1_mag[1]~6_combout\ = (\thermo_cntrl|comparitor|bit3|compx1_mag[1]~0_combout\) # ((\sw[3]~input_o\ $ (\elon_mux|dout[3]~3_combout\)) # (!\thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thermo_cntrl|comparitor|bit3|compx1_mag[1]~0_combout\,
	datab => \thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\,
	datac => \sw[3]~input_o\,
	datad => \elon_mux|dout[3]~3_combout\,
	combout => \thermo_cntrl|comparitor|bit4|compx1_mag[1]~6_combout\);

-- Location: LCCOMB_X9_Y9_N0
\thermo_cntrl|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|output[0]~0_combout\ = (\pb[1]~input_o\ & (\pb[2]~input_o\ & (\pb[0]~input_o\ & \thermo_cntrl|comparitor|bit4|compx1_mag[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \thermo_cntrl|comparitor|bit4|compx1_mag[1]~6_combout\,
	combout => \thermo_cntrl|output[0]~0_combout\);

-- Location: LCCOMB_X10_Y9_N10
\thermo_cntrl|comparitor|bit4|compx1_mag[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|comparitor|bit4|compx1_mag[0]~7_combout\ = (\thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\ & (\sw[2]~input_o\ $ (((\pb[3]~input_o\ & !\sw[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\,
	datac => \sw[6]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~7_combout\);

-- Location: LCCOMB_X10_Y9_N30
\thermo_cntrl|comparitor|bit4|compx1_mag[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|comparitor|bit4|compx1_mag[0]~2_combout\ = (\elon_mux|dout[1]~1_combout\ & (((\elon_mux|dout[0]~2_combout\) # (!\sw[1]~input_o\)) # (!\sw[0]~input_o\))) # (!\elon_mux|dout[1]~1_combout\ & (!\sw[1]~input_o\ & ((\elon_mux|dout[0]~2_combout\) # 
-- (!\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \elon_mux|dout[1]~1_combout\,
	datac => \elon_mux|dout[0]~2_combout\,
	datad => \sw[1]~input_o\,
	combout => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~2_combout\);

-- Location: LCCOMB_X10_Y9_N18
\thermo_cntrl|comparitor|bit4|compx1_mag[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|comparitor|bit4|compx1_mag[0]~4_combout\ = (\elon_mux|dout[2]~0_combout\ & ((\thermo_cntrl|comparitor|bit4|compx1_mag[0]~2_combout\) # ((!\thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\ & !\sw[2]~input_o\)))) # 
-- (!\elon_mux|dout[2]~0_combout\ & (((\thermo_cntrl|comparitor|bit4|compx1_mag[0]~2_combout\ & !\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elon_mux|dout[2]~0_combout\,
	datab => \thermo_cntrl|comparitor|bit4|compx1_mag[1]~3_combout\,
	datac => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~2_combout\,
	datad => \sw[2]~input_o\,
	combout => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~4_combout\);

-- Location: LCCOMB_X10_Y9_N24
\thermo_cntrl|comparitor|bit4|compx1_mag[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\ = (\elon_mux|dout[3]~3_combout\ & ((\thermo_cntrl|comparitor|bit4|compx1_mag[0]~4_combout\) # ((!\thermo_cntrl|comparitor|bit4|compx1_mag[0]~7_combout\ & !\sw[3]~input_o\)))) # 
-- (!\elon_mux|dout[3]~3_combout\ & (((!\sw[3]~input_o\ & \thermo_cntrl|comparitor|bit4|compx1_mag[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~7_combout\,
	datab => \elon_mux|dout[3]~3_combout\,
	datac => \sw[3]~input_o\,
	datad => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~4_combout\,
	combout => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\);

-- Location: LCCOMB_X9_Y9_N26
\thermo_cntrl|output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|output[0]~1_combout\ = (\thermo_cntrl|output[0]~0_combout\ & \thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \thermo_cntrl|output[0]~0_combout\,
	datad => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\,
	combout => \thermo_cntrl|output[0]~1_combout\);

-- Location: LCCOMB_X9_Y9_N24
\thermo_cntrl|output[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|output\(1) = (!\thermo_cntrl|comparitor|bit4|compx1_mag[1]~6_combout\ & \thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thermo_cntrl|comparitor|bit4|compx1_mag[1]~6_combout\,
	datad => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\,
	combout => \thermo_cntrl|output\(1));

-- Location: LCCOMB_X9_Y9_N2
\thermo_cntrl|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \thermo_cntrl|output[2]~2_combout\ = (\thermo_cntrl|output[0]~0_combout\ & !\thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \thermo_cntrl|output[0]~0_combout\,
	datad => \thermo_cntrl|comparitor|bit4|compx1_mag[0]~5_combout\,
	combout => \thermo_cntrl|output[2]~2_combout\);

-- Location: LCCOMB_X10_Y9_N12
\right_decoder|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux6~0_combout\ = (\sw[2]~input_o\ & (!\sw[1]~input_o\ & ((\sw[3]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\ & (\sw[3]~input_o\ $ (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \right_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y9_N16
\left_decoder|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux6~0_combout\ = (\elon_mux|dout[2]~0_combout\ & (!\elon_mux|dout[1]~1_combout\ & ((\elon_mux|dout[3]~3_combout\) # (!\elon_mux|dout[0]~2_combout\)))) # (!\elon_mux|dout[2]~0_combout\ & (\elon_mux|dout[0]~2_combout\ & 
-- (\elon_mux|dout[3]~3_combout\ $ (!\elon_mux|dout[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elon_mux|dout[0]~2_combout\,
	datab => \elon_mux|dout[2]~0_combout\,
	datac => \elon_mux|dout[3]~3_combout\,
	datad => \elon_mux|dout[1]~1_combout\,
	combout => \left_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y9_N14
\output|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT[0]~0_combout\ = (\output|clk_proc:COUNT[10]~q\ & ((\left_decoder|Mux6~0_combout\))) # (!\output|clk_proc:COUNT[10]~q\ & (\right_decoder|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_decoder|Mux6~0_combout\,
	datab => \left_decoder|Mux6~0_combout\,
	datad => \output|clk_proc:COUNT[10]~q\,
	combout => \output|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y9_N12
\right_decoder|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux4~0_combout\ = (\sw[2]~input_o\ & (\sw[3]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (\sw[1]~input_o\ & (!\sw[0]~input_o\ & !\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \right_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y9_N6
\left_decoder|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux4~0_combout\ = (\elon_mux|dout[2]~0_combout\ & (\elon_mux|dout[3]~3_combout\ & ((\elon_mux|dout[1]~1_combout\) # (!\elon_mux|dout[0]~2_combout\)))) # (!\elon_mux|dout[2]~0_combout\ & (!\elon_mux|dout[0]~2_combout\ & 
-- (\elon_mux|dout[1]~1_combout\ & !\elon_mux|dout[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elon_mux|dout[2]~0_combout\,
	datab => \elon_mux|dout[0]~2_combout\,
	datac => \elon_mux|dout[1]~1_combout\,
	datad => \elon_mux|dout[3]~3_combout\,
	combout => \left_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y9_N22
\output|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT[2]~2_combout\ = (\output|clk_proc:COUNT[10]~q\ & ((\left_decoder|Mux4~0_combout\))) # (!\output|clk_proc:COUNT[10]~q\ & (\right_decoder|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_decoder|Mux4~0_combout\,
	datac => \left_decoder|Mux4~0_combout\,
	datad => \output|clk_proc:COUNT[10]~q\,
	combout => \output|DOUT[2]~2_combout\);

-- Location: LCCOMB_X10_Y9_N26
\right_decoder|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux3~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\sw[2]~input_o\)) # (!\sw[0]~input_o\ & (!\sw[2]~input_o\ & \sw[3]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \right_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y9_N28
\left_decoder|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux3~0_combout\ = (\elon_mux|dout[1]~1_combout\ & ((\elon_mux|dout[2]~0_combout\ & (\elon_mux|dout[0]~2_combout\)) # (!\elon_mux|dout[2]~0_combout\ & (!\elon_mux|dout[0]~2_combout\ & \elon_mux|dout[3]~3_combout\)))) # 
-- (!\elon_mux|dout[1]~1_combout\ & (!\elon_mux|dout[3]~3_combout\ & (\elon_mux|dout[2]~0_combout\ $ (\elon_mux|dout[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elon_mux|dout[2]~0_combout\,
	datab => \elon_mux|dout[0]~2_combout\,
	datac => \elon_mux|dout[1]~1_combout\,
	datad => \elon_mux|dout[3]~3_combout\,
	combout => \left_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y9_N24
\output|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT[3]~3_combout\ = (\output|clk_proc:COUNT[10]~q\ & ((\left_decoder|Mux3~0_combout\))) # (!\output|clk_proc:COUNT[10]~q\ & (\right_decoder|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output|clk_proc:COUNT[10]~q\,
	datac => \right_decoder|Mux3~0_combout\,
	datad => \left_decoder|Mux3~0_combout\,
	combout => \output|DOUT[3]~3_combout\);

-- Location: LCCOMB_X10_Y9_N20
\left_decoder|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \left_decoder|Mux2~0_combout\ = (\elon_mux|dout[1]~1_combout\ & (((\elon_mux|dout[0]~2_combout\ & !\elon_mux|dout[3]~3_combout\)))) # (!\elon_mux|dout[1]~1_combout\ & ((\elon_mux|dout[2]~0_combout\ & ((!\elon_mux|dout[3]~3_combout\))) # 
-- (!\elon_mux|dout[2]~0_combout\ & (\elon_mux|dout[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \elon_mux|dout[2]~0_combout\,
	datab => \elon_mux|dout[0]~2_combout\,
	datac => \elon_mux|dout[1]~1_combout\,
	datad => \elon_mux|dout[3]~3_combout\,
	combout => \left_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y9_N30
\right_decoder|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \right_decoder|Mux2~0_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\sw[3]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & ((!\sw[3]~input_o\))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \right_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y9_N20
\output|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output|DOUT[4]~4_combout\ = (\output|clk_proc:COUNT[10]~q\ & (\left_decoder|Mux2~0_combout\)) # (!\output|clk_proc:COUNT[10]~q\ & ((\right_decoder|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \left_decoder|Mux2~0_combout\,
	datac => \right_decoder|Mux2~0_combout\,
	datad => \output|clk_proc:COUNT[10]~q\,
	combout => \output|DOUT[4]~4_combout\);

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


