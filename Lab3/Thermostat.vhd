library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Thermostat is
   port (
			 current_temp  	: in  std_logic_vector(3 downto 0);
			 desired_temp 		: in  std_logic_vector(3 downto 0);
			 orifices  			: in  std_logic_vector(2 downto 0);
			 vacation_mode		: in  std_logic;
			 
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

signal difference : std_logic_vector(1 downto 0);

signal current_tmp : std_logic_vector(3 downto 0);

signal all_closed : std_logic;

signal furnace_on : std_logic;

signal system_at_temp : std_logic;

signal ac_on		: std_logic;

signal blower_on	: std_logic;

begin

	current_tmp <= (current_temp) when (vacation_mode = '0') else ("0100");

	all_closed <= (not orifices(0) and not orifices(1) and not orifices(2));

	comparitor : Compx4 port map (current_tmp, desired_temp, difference);

	furnace_on <= (not difference(0) and difference(1)) and all_closed;
	system_at_temp <= (difference(0) and difference(1));
	ac_on <= (not difference(0) and not difference(1)) and all_closed;
	blower_on <= (ac_on or system_at_temp) and all_closed;
	
	output <= blower_on & ac_on & system_at_temp & furnace_on;
	

end architecture Thermostat;