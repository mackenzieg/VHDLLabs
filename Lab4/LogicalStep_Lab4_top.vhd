
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
		clkin_50		: in	std_logic;
		rst_n			: in	std_logic;
		pb				: in	std_logic_vector(3 downto 0);
		sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
		leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
		seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
		seg7_char1  : out	std_logic;							-- seg7 digi selectors
		seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab4_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS

component register_4bit is
	port (
	right_shift_input 						: in std_logic;
	left_shift_input 						: in std_logic;
	load					: in std_logic;
	shift_direction	: in std_logic;
	clk 					: in std_logic;
	output				: out std_logic_vector(3 downto 0)
	);
end component;
	
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE; 	-- set to TRUE for simulation runs otherwise keep at 0.
   CONSTANT CLK_DIV_SIZE				: 	INTEGER := 24;    -- size of vectors for the counters

   SIGNAL 	Main_CLK						:  STD_LOGIC; 			-- main clock to drive sequencing of State Machine

	SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); -- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
	
	SIGNAL	Simple_States 				: std_logic_vector(7 downto 0);
	SIGNAL	Left0_Right1				: std_logic;

----------------------------------------------------------------------------------------------------
BEGIN

-- CLOCKING GENERATOR WHICH DIVIDES THE INPUT CLOCK DOWN TO A LOWER FREQUENCY

BinCLK: PROCESS(clkin_50, rst_n) is
   BEGIN
		IF (rising_edge(clkin_50)) THEN -- binary counter increments on rising clock edge
         bin_counter <= bin_counter + 1;
      END IF;
   END PROCESS;

Clock_Source:
				Main_Clk <= 
				clkin_50 when sim = TRUE else				-- for simulations only
				std_logic(bin_counter(23));								-- for real FPGA operation
					
---------------------------------------------------------------------------------------------------

leds(7) <= Main_Clk;

reg : register_4bit port map (not pb(0), not pb(1), not pb(2), not pb(3), Main_Clk, leds(3 downto 0));



END SimpleCircuit;
