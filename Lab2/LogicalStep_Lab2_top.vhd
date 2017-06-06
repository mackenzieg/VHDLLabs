library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb					: in	std_logic_vector(3 downto 0);
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is
--
-- Components Used ---
------------------------------------------------------------------- 


	-- Define SevenSegment component
   component SevenSegment port (
		hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
		sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
	); 
   end component;
	
	-- Define segment7_mux component
	component segment7_mux port (
			 clk        : in  std_logic;
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
   ); 
   end component;
	
	-- Define four_one_mux component
	component four_one_mux port (
				 toggle 		: in  std_logic_vector(1 downto 0);	
				 in_1 		: in  std_logic_vector(7 downto 0);	
				 in_2 		: in  std_logic_vector(7 downto 0);
				 in_3 		: in  std_logic_vector(7 downto 0);	
				 in_4 		: in  std_logic_vector(7 downto 0);	
				 dout			: out	std_logic_vector(7 downto 0)
			  );
	end component;
	
	-- Define adder_8bit component
	component adder_8bit port (
			 in_1 		: in  std_logic_vector(7 downto 0);	
			 in_2 		: in  std_logic_vector(7 downto 0);
			 add 			: out  std_logic_vector(7 downto 0)
        );
	end component;
	
	-- Define logic_proccessor component
	component logic_proccessor port (
			 hex_A 		: in  std_logic_vector(3 downto 0);	
			 hex_B		: in  std_logic_vector(3 downto 0);
			 push_B		: in  std_logic_vector(2 downto 0);
			 logic_out 	: out  std_logic_vector(3 downto 0)
        );
	end component;
	
-- Create any signals, or temporary variables to be used
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--

	signal seg7_A		: std_logic_vector(6 downto 0);
   signal seg7_B		: std_logic_vector(6 downto 0);
	
	signal hex_A		: std_logic_vector(3 downto 0);
	signal hex_B		: std_logic_vector(3 downto 0);
	
	-- Bus that contains data for segment displays
	signal seg_bus 	: std_logic_vector(7 downto 0);
	-- Bus that contains output of 8bit summer
	signal sum_bus 	: std_logic_vector(7 downto 0);
	
	-- Bus that contains output of logic processor
	signal logic_bus 	: std_logic_vector(3 downto 0);
	
	signal error 		: std_logic;
	
	
-- Here the circuit begins

begin

	-- Calculates the error bit. If any more than one switch is pushed then error.
	error <= (not pb(0) or not pb(1) or not pb(3)) and 
				(not pb(1) or not pb(2) or not pb(3)) and 
				(not pb(2) or not pb(1) or not pb(0)) and 
				(not pb(2) or not pb(3) or not pb(0));

   hex_B <= sw(3 downto 0);
   hex_A <= sw(7 downto 4);
	
	LeftSegment: SevenSegment port map (seg_bus(3 downto 0), seg7_A);
   RightSegment: SevenSegment port map (seg_bus(7 downto 4), seg7_B);
	
	-- Adds hexA to hexB and outputs it to sum_bus
	Adder: adder_8bit port map ("0000" & hex_A, "0000" & hex_B, sum_bus);
	
	Logic: logic_proccessor port map (hex_A, hex_B, (not pb(2 downto 0)), logic_bus);
	
	-- Defines the mux for switching between the two segment displays -> output to segment displays
	SegmentMux: segment7_mux port map (clkin_50, seg7_A, seg7_B, seg7_data, seg7_char2, seg7_char1);
	-- Defines mux that switches between hex display, sum and two other inputs which we tie to an error message.
	SumDisplayMux: four_one_mux port map (error & not pb(3), hex_A & hex_B, sum_bus, "10001000", "10001000", seg_bus);
	-- Defines mux that switches between sum, logic and two other inputs which we tie to an error message.
	SumLogicMux: four_one_mux port map (error & not pb(3), "0000" & logic_bus, sum_bus, "11111111", "11111111", leds);
 
end SimpleCircuit;

