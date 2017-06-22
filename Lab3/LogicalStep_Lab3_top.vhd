library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab3_top is port (
   clkin_50		: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	
); 
end LogicalStep_Lab3_top;

architecture Energy_Monitor of LogicalStep_Lab3_top is

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

component two_one_mux is
   port (
			 toggle 	: in  std_logic;
			 in_1 	: in  std_logic_vector(3 downto 0);	
			 in_2 	: in  std_logic_vector(3 downto 0);
			 dout		: out	std_logic_vector(3 downto 0)
        );
end component;

component Thermostat is
   port (
			 current_temp  	: in  std_logic_vector(3 downto 0);
			 desired_temp 		: in  std_logic_vector(3 downto 0);
			 orifices  			: in  std_logic_vector(2 downto 0);
			 
			 output				: out std_logic_vector(3 downto 0)
        );
end component;

component Compx4 is
   port (
			 compx4_in_a 		: in  std_logic_vector(3 downto 0);
			 compx4_in_b 		: in  std_logic_vector(3 downto 0);
			 compx4_mag			: out std_logic_vector(1 downto 0)
        );
end component;

signal in_a, in_b, shwoop_bus 	 : std_logic_vector(3 downto 0);
signal compare  : std_logic_vector(1 downto 0);

signal seg7_a, seg7_b : std_logic_vector(6 downto 0);

signal vac_mode : std_logic;

signal temp_comp : std_logic_vector(1 downto 0);

begin
	
	in_a <= sw(3 downto 0);
	in_b <= sw(7 downto 4);
	
	--comp : Compx4 port map (in_a, in_b, temp_comp);
	
	--leds(0) <= not temp_comp(0) and not temp_comp(1);
	--leds(1) <= temp_comp(0) and temp_comp(1);
	--leds(2) <= temp_comp(0) and not temp_comp(1);
	
	vac_mode <= not pb(3);
	
	elon_mux : two_one_mux port map (vac_mode, in_b, "0100", shwoop_bus);
	
	thermo_cntrl : Thermostat port map (in_a, shwoop_bus, not pb(2 downto 0), leds(3 downto 0));
	
	leds(7 downto 4) <= not pb(3 downto 0);
	
	left_decoder: SevenSegment port map (shwoop_bus, seg7_b);
	right_decoder: SevenSegment port map (in_a, seg7_a);
	
	output : segment7_mux port map (clkin_50, seg7_b, seg7_a, seg7_data, seg7_char1, seg7_char2);
	
 
end Energy_Monitor;

