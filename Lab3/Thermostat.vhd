library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Thermostat takes in current temp, desired temp, open windows/doors and outputs what devices such as ac, furnace etc are on
entity Thermostat is
   port (
			 current_temp  	: in  std_logic_vector(3 downto 0);
			 desired_temp 		: in  std_logic_vector(3 downto 0);
			 orifices  			: in  std_logic_vector(2 downto 0);
			 
			 output				: out std_logic_vector(3 downto 0)
        );
end entity Thermostat;

architecture Thermostat of Thermostat is 

component Compx4 is
   port (
			 compx4_in_a 		: in  std_logic_vector(3 downto 0);
			 compx4_in_b 		: in  std_logic_vector(3 downto 0);
			 compx4_mag			: out std_logic_vector(1 downto 0)
        );
end component;

signal equal :		std_logic;
signal below_temp : std_logic;
signal above_temp : std_logic;

signal difference : std_logic_vector(1 downto 0);

signal all_closed : std_logic;

signal furnace_on : std_logic;

signal ac_on		: std_logic;

signal blower_on	: std_logic;

begin

	-- Determine if current = desired
	equal <= difference(0) and difference(1);
	-- Determine if current < desired
	below_temp <= difference(0) and not difference(1);
	-- Determine if current > desired
	above_temp <= not difference(0) and not difference(1);

	-- Determine if all doors/ windows are closed
	all_closed <= (not orifices(0) and not orifices(1) and not orifices(2));

	-- 4 bit comparitor that compares the temperatures 
	comparitor : Compx4 port map (current_temp, desired_temp, difference);

	-- Determine if furnace should be on
	furnace_on <= (below_temp) and all_closed;

	-- Determine if ac should be on
	ac_on <= (above_temp) and all_closed;
	
	-- Determine if blower should be on
	blower_on <= (ac_on or furnace_on) and all_closed;
	
	-- Output what devices are on
	output <= blower_on & ac_on & equal & furnace_on;
	

end architecture Thermostat;