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
  component SevenSegment port (
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;
	
	component segment7_mux port (
          clk        : in  std_logic;
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
   ); 
   end component;
	
	component eight_to_two_mux port (
				 toggle 		: in  std_logic;
				 in_1 		: in  std_logic_vector(7 downto 0);	
				 in_2 		: in  std_logic_vector(7 downto 0);
				 dout			: out	std_logic_vector(7 downto 0)
			  );
	end component;
	
	component four_bit_adder port (
			 in_1 		: in  std_logic_vector(3 downto 0);	
			 in_2 		: in  std_logic_vector(3 downto 0);
			 add 			: out  std_logic_vector(7 downto 0)
        );
	end component;
	
-- Create any signals, or temporary variables to be used
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--
	signal add_1		: std_logic_vector(3 downto 0);
	signal add_2		: std_logic_vector(3 downto 0);
	signal seg7_A		: std_logic_vector(6 downto 0);
   signal seg7_B		: std_logic_vector(6 downto 0);
	signal hex_A		: std_logic_vector(3 downto 0);
	signal hex_B		: std_logic_vector(3 downto 0);
	
	signal seg_bus 	: std_logic_vector(7 downto 0);
	
	signal sum_bus 	: std_logic_vector(7 downto 0);
	
	
-- Here the circuit begins

begin
   hex_B <= sw(3 downto 0);
   hex_A <= sw(7 downto 4);
	
	INST1: SevenSegment port map (seg_bus(3 downto 0), seg7_A);
   INST2: SevenSegment port map (seg_bus(7 downto 4), seg7_B);
	
   INST3: segment7_mux port map (clkin_50, seg7_A, seg7_B, seg7_data, seg7_char2, seg7_char1);
	
	INST4: eight_to_two_mux port map (not pb(3), hex_A & hex_B, sum_bus, seg_bus);
	
	INST5: four_bit_adder port map (hex_A, hex_B, sum_bus);
   
 
end SimpleCircuit;

