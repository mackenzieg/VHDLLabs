
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab5_top IS
   PORT
	(
   clkin_50		: in	std_logic;							-- The 50 MHz FPGA Clockinput
	rst_n			: in	std_logic;							-- The RESET input (ACTIVE LOW)
	pb				: in	std_logic_vector(3 downto 0); -- The push-button inputs (ACTIVE LOW)
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab5_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab5_top IS


component cycle_generator port (
          clkin      		: in  std_logic;
			 rst_n				: in  std_logic;
			 modulo 				: in  integer;	
			 strobe_out			: out	std_logic;
			 full_cycle_out	: out std_logic
  );
end component;

component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
   );
end component;
	
component SevenSegment is port (

	input		:  in std_logic_vector(2 downto 0); -- bit 3 is red, 1 is green
   
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end component;

component Moore_state is port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	
	vehicle_ns	: in std_logic;
	vehicle_ew	: in std_logic;
	
	night_mode, safe_mode : in std_logic;
	
	latch_clear_ns : out std_logic;
	latch_clear_ew : out std_logic;

	north_south		: out std_logic_vector(5 downto 0);
	east_west		: out std_logic_vector(5 downto 0);
	
	state_number   : out std_logic_vector(3 downto 0)
);
end component;

component Synchronizer IS Port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	input			: in std_logic;
	
	data_out		: out std_logic
);
END component;

component Latch_Saver is port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	latch			: in std_logic;
	sync			: in std_logic;
	enable		: in std_logic;
	
	data_out		: out std_logic
);
end component;
	
	
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE;

	CONSTANT CNTR1_modulo				: 	integer := 25000000;    	-- modulo count for 1Hz cycle generator 1 with 50Mhz clocking input
   CONSTANT CNTR2_modulo				: 	integer := 5000000;    	-- modulo count for 5Hz cycle generator 2 with 50Mhz clocking input
   CONSTANT CNTR1_modulo_sim			: 	integer := 199;   			-- modulo count for cycle generator 1 during simulation
   CONSTANT CNTR2_modulo_sim			: 	integer :=  39;   			-- modulo count for cycle generator 2 during simulation
	
   SIGNAL CNTR1_modulo_value			: 	integer;   					-- modulo count for cycle generator 1 
   SIGNAL CNTR2_modulo_value			: 	integer;   					-- modulo count for cycle generator 2 

   SIGNAL clken1,clken2					:  STD_LOGIC; 						-- clock enables 1 & 2

	SIGNAL strobe1, strobe2				:  std_logic;						-- strobes 1 & 2 with each one being 50% Duty Cycle
		

	SIGNAL seg7_A, seg7_B				:  STD_LOGIC_VECTOR(6 downto 0); -- signals for inputs into seg7_mux.
	
	signal left_display, right_display: std_logic_vector(6 downto 0);

	signal north_south, east_west		: std_logic_vector(5 downto 0);
	
	signal left_input, right_input	: std_logic_vector(2 downto 0);
	
	signal synced_ns, synced_ew	: std_logic;
	
	signal clear_ns: std_logic;
	signal clear_ew: std_logic;
	
	-- vehicle waiting in direction
	signal vehicle_ns: std_logic;
	signal vehicle_ew: std_logic;
	
	-- current state of mealy state
	signal current_state: std_logic_vector(3 downto 0);
	
	-- night or reduced mode on
	signal night_mode, reduced_mode: std_logic;

	
BEGIN
----------------------------------------------------------------------------------------------------

	MODULO_1_SELECTION:	CNTR1_modulo_value <= CNTR1_modulo when SIM = FALSE else CNTR1_modulo_sim; 

	MODULO_2_SELECTION:	CNTR2_modulo_value <= CNTR2_modulo when SIM = FALSE else CNTR2_modulo_sim; 
						

----------------------------------------------------------------------------------------------------
-- Component Hook-up:					

	GEN1: 	cycle_generator port map(clkin_50, rst_n, CNTR1_modulo_value, strobe1, clken1);	

	GEN2: 	cycle_generator port map(clkin_50, rst_n, CNTR2_modulo_value, strobe2, clken2);	

	Left_Segment 	: SevenSegment port map(left_input, left_display);
	Right_segment 	: SevenSegment port map(right_input, right_display);

	Display_driver:	segment7_mux port map (clkin_50, left_display, right_display, seg7_data, seg7_char1, seg7_char2);
	
	-- Generate moore state component
	state_machine:	Moore_state port map (strobe1, rst_n, vehicle_ns, vehicle_ew, night_mode, reduced_mode, clear_ns, clear_ew,  north_south, east_west, current_state);
	
	-- flash led with strobe1 if night mode and strobe 2 if not to change between 1hz and 5hz
	left_input(2) <= north_south(5) or (north_south(4) and not reduced_mode and strobe2) or (north_south(4) and reduced_mode and strobe1);
	left_input(1) <= north_south(3) or (north_south(2) and strobe2);
	left_input(0) <= north_south(1) or (north_south(0) and strobe2);
							
	-- flash led with strobe1 if night mode and strobe 2 if not to change between 1hz and 5hz
	right_input(2) <= east_west(5) or (east_west(4) and strobe2);
	right_input(1) <= east_west(3) or (east_west(2) and not reduced_mode and strobe2) or (east_west(2) and reduced_mode and strobe1);
	right_input(0) <= east_west(1) or (east_west(0) and strobe2);
	
	-- sync inputs for moore state
	ns_sync: Synchronizer port map (clkin_50, rst_n, not pb(0), synced_ns);
	ew_sync: Synchronizer port map (clkin_50, rst_n, not pb(1), synced_ew);
	
	-- sync inputs for moore state
	ns_latch: Latch_Saver port map (clkin_50, rst_n, clear_ns, synced_ns, clken2, vehicle_ns);
	ew_latch: Latch_Saver port map (clkin_50, rst_n, clear_ew, synced_ew, clken2, vehicle_ew);
	
	night_mode_sync: Synchronizer port map (clkin_50, rst_n, sw(0), night_mode);
	
	reduced_mode_sync: Synchronizer port map (clkin_50, rst_n, sw(1), reduced_mode);
		
	leds(1 downto 0) <= Strobe1 & strobe2;
	leds(5 downto 2) <= current_state;

	leds(6) <= night_mode or reduced_mode;
	leds(7) <= vehicle_ns or vehicle_ew;

--	leds(0) <= clken1;
--	leds(1) <= Strobe1;
--	leds(2) <= clken2;
--	leds(3) <= Strobe2;
--	leds(7 downto 4) <= current_state;


END SimpleCircuit;
