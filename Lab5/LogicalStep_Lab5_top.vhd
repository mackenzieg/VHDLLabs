
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
	
	
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE;

	CONSTANT CNTR1_modulo				: 	integer := ;    	-- modulo count for 1Hz cycle generator 1 with 50Mhz clocking input
   CONSTANT CNTR2_modulo				: 	integer := ;    	-- modulo count for 5Hz cycle generator 2 with 50Mhz clocking input
   CONSTANT CNTR1_modulo_sim			: 	integer := 199;   			-- modulo count for cycle generator 1 during simulation
   CONSTANT CNTR2_modulo_sim			: 	integer :=  39;   			-- modulo count for cycle generator 2 during simulation
	
   SIGNAL CNTR1_modulo_value			: 	integer ;   					-- modulo count for cycle generator 1 
   SIGNAL CNTR2_modulo_value			: 	integer ;   					-- modulo count for cycle generator 2 

   SIGNAL clken1,clken2					:  STD_LOGIC; 						-- clock enables 1 & 2

	SIGNAL strobe1, strobe2				:  std_logic;						-- strobes 1 & 2 with each one being 50% Duty Cycle
		

	SIGNAL seg7_A, seg7_B				:  STD_LOGIC_VECTOR(6 downto 0); -- signals for inputs into seg7_mux.
	
BEGIN
----------------------------------------------------------------------------------------------------


MODULO_1_SELECTION:	CnTR1_modulo_value <= CNTR1_modulo when SIM = FALSE else CNTR1_modulo_sim; 

MODULO_2_SELECTION:	CNTR2_modulo_value <= CNTR2_modulo when SIM = FALSE else CNTR2_modulo_sim; 
						

----------------------------------------------------------------------------------------------------
-- Component Hook-up:					

GEN1: 	cycle_generator port map(clkin_50, rst_n, CNTR1_modulo_value, strobe1, clken1);	

GEN2: 	cycle_generator port map(clkin_50, rst_n, CNTR2_modulo_value, strobe2, clken2);	
	
	
	leds(1 downto 0) <= Strobe1 & Strobe2;

-- used for simulations
--	leds(0) <= clken1;
--	leds(1) <= Strobe1;
--	leds(2) <= clken2;
--	leds(3) <= Strobe2;
--	leds(7 downto 4) <= Stae Machine state numbers


END SimpleCircuit;
