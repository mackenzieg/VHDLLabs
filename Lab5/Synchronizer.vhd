library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Synchronizer IS Port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	latch			: in std_logic;
	sync_input	: in std_logic;
	
	data_out		: out std_logic;
);
END ENTITY;
 
Architecture definition of Synchronizer is 

	signal intern: std_logic;
	signal output: std_logic;
	
	signal data:	std_logic;

begin

Input_register: PROCESS (clk, reset)
BEGIN
	IF (reset = '0') THEN
		intern <= '0';
	ELSIF(rising_edge(clk)) THEN
		intern <= data;
	ELSE
		intern <= intern;
	END IF;
END PROCESS;

Output_register: process (clk, reset)
begin
	if (reset <= '0') then
		output <= '0';
	elsif(rising_edge(clk)) then
		output <= intern;
	else
		output <= output;
	end if;
end process;

data_out <= output;

data <= not latch and (sync_input xor output);

END ARCHITECTURE definition;