
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

component Moore_state_machine IS Port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	comparison  : in std_logic_vector(1 downto 0);
	output		: out std_logic_vector(3 downto 0)
	);
END component;

component Compx4 is
   port (
			 compx4_in_a 		: in  std_logic_vector(3 downto 0);
			 compx4_in_b 		: in  std_logic_vector(3 downto 0);
			 compx4_mag			: out std_logic_vector(1 downto 0)
        );
end component;

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
	
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE; 	-- set to TRUE for simulation runs otherwise keep at 0.
   CONSTANT CLK_DIV_SIZE				: 	INTEGER := 24;    -- size of vectors for the counters

   SIGNAL 	Main_CLK						:  STD_LOGIC; 			-- main clock to drive sequencing of State Machine

	SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); -- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
	
	SIGNAL	Simple_States 				: std_logic_vector(7 downto 0);
	SIGNAL	Left0_Right1				: std_logic;
	
	signal   comparison					: std_logic_vector(1 downto 0);
	
	signal   current_state				: std_logic_vector(3 downto 0);
	
	signal seg7_a, seg7_b : std_logic_vector(6 downto 0);

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

comp : Compx4 port map (sw(7 downto 4), sw(3 downto 0), comparison);

state_machine : Moore_state_machine port map (Main_Clk, '0', comparison, current_state);

-- Display the desired temp and current temp
left_decoder: SevenSegment port map (current_state, seg7_b);
right_decoder: SevenSegment port map (sw(3 downto 0), seg7_a);

output : segment7_mux port map (clkin_50, seg7_b, seg7_a, seg7_data, seg7_char1, seg7_char2);

END SimpleCircuit;
