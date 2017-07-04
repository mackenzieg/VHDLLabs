library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_register_8bit is port (
	clock: in std_logic;
	shift_direction: in std_logic;
	reset: in std_logic := '0';
	output: out std_logic_vector(7 downto 0)
); 
end entity;

architecture definition of shift_register_8bit is 

	signal current_state: std_logic_vector(7 downto 0);

begin

shift: process (clock, reset) is begin
	if (reset = '1') then
		current_state <= "00000001";
	elsif (rising_edge(clock)) then
		if (shift_direction = '1') then
			current_state(7 downto 0) <= current_state(0) & current_state(7 downto 1);
		else
			current_state(7 downto 0) <= current_state(6 downto 0) & current_state(7);
		end if;
	end if;
	output <= current_state;
end process;

end architecture definition;
