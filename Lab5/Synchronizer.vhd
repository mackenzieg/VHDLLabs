library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Synchronizer 
Entity Synchronizer IS Port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	input			: in std_logic;
	
	data_out		: out std_logic
);
END ENTITY;
 
Architecture definition of Synchronizer is 

	signal intern: std_logic;
	signal output: std_logic;

begin

Input_register: PROCESS (clk, reset)
BEGIN
-- if reset set inten to 0
	IF (reset = '0') THEN
		intern <= '0';
	ELSIF(rising_edge(clk)) THEN
	-- pull in value on rising edge
		intern <= input;
	ELSE
		intern <= intern;
	END IF;
END PROCESS;

Output_register: process (clk, reset)
begin
	if (reset <= '0') then
		output <= '0';
	elsif(rising_edge(clk)) then
	-- pull in value on rising edge
		output <= intern;
	else
		output <= output;
	end if;
end process;

data_out <= output;

END ARCHITECTURE definition;