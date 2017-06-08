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

component Compx4 is
   port (
			 compx4_in_a 		: in  std_logic_vector(3 downto 0);
			 compx4_in_b 		: in  std_logic_vector(3 downto 0);
			 compx4_mag			: out std_logic_vector(1 downto 0)
        );
end component;

component Thermostat is
   port (
			 current_temp  	: in  std_logic_vector(3 downto 0);
			 desired_temp 		: in  std_logic_vector(3 downto 0);
			 orifices  			: in  std_logic_vector(2 downto 0);
			 vacation_mode		: in  std_logic;
			 
			 output				: out std_logic_vector(3 downto 0)
        );
end component;

signal in_a 	: std_logic_vector(3 downto 0);
signal in_b 	: std_logic_vector(3 downto 0);
signal compare 	: std_logic_vector(1 downto 0);

begin
	
	in_a <= sw(3 downto 0);
	in_b <= sw(7 downto 4);
	
	INST1 : Compx4 port map(in_a, in_b, compare);
	
	leds(1 downto 0) <= compare;
	
	--thermo_cntrl : Thermostat port map (in_a, in_b, not pb(2 downto 0), not pb(3), leds(3 downto 0));
	
	--leds(6 downto 4) <= not pb(2 downto 0);
	
 
end Energy_Monitor;

