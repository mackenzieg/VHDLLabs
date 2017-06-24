library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_4bit is port(
	right_shift_input 						: in std_logic;
	left_shift_input 						: in std_logic;
	load					: in std_logic;
	shift_direction	: in std_logic := '0';
	clk 					: in std_logic;
	output				: out std_logic_vector(3 downto 0)
);

end register_4bit;

architecture description of register_4bit is 

component register_1bit is
   port (
		d 			: in std_logic;
		load		: in std_logic;
		clk 		: in std_logic;
		q			: out std_logic
   );
end component;

component two_one_mux is
	port (
		toggle 	: in  std_logic;
		in_1 		: in  std_logic;	
		in_2 		: in  std_logic;
		dout		: out	std_logic
	);
end component;

signal first_connection 		: std_logic;
signal second_connection 		: std_logic;
signal third_connection 		: std_logic;
signal fourth_connection 		: std_logic;

signal register_one_input		: std_logic;
signal register_two_input		: std_logic;
signal register_three_input	: std_logic;
signal register_four_input		: std_logic;

begin

	first_mux 	: two_one_mux port map (shift_direction, right_shift_input, first_connection, register_one_input);
	second_mux 	: two_one_mux port map (shift_direction, first_connection, second_connection, register_two_input);
	third_mux 	: two_one_mux port map (shift_direction, second_connection, third_connection, register_three_input);
	fourth_mux 	: two_one_mux port map (shift_direction, third_connection, left_shift_input, register_four_input);

	bit1: register_1bit port map (register_one_input, load, clk, first_connection);
	bit2: register_1bit port map (register_two_input, load, clk, second_connection);
	bit3: register_1bit port map (register_three_input, load, clk, third_connection);
	bit4: register_1bit port map (register_four_input, load, clk, fourth_connection);
	
	output <= fourth_connection & third_connection & second_connection & first_connection;

	
end description;