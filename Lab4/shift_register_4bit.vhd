library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_register_4bit is port (
	clock: in std_logic;
	shift_direction: in std_logic;
	reset: in std_logic := '0';
	output: out std_logic_vector(3 downto 0)
); 
end entity;

architecture definition of shift_register_4bit is 

	-- Signal of current state
	signal current_state: std_logic_vector(3 downto 0);

begin

shift: process (clock, reset) is begin
	-- If reset high set current state to default
	if (reset = '1') then
		current_state <= "0001";
	elsif (rising_edge(clock)) then
		-- shift right is direction is one
		if (shift_direction = '1') then
			current_state(3 downto 0) <= current_state(0) & current_state(3 downto 1);
		else
		-- shift left is direction is one
			current_state(3 downto 0) <= current_state(2 downto 0) & current_state(3);
		end if;
	end if;
	-- set output to current state
	output <= current_state;
end process;

end architecture definition;
