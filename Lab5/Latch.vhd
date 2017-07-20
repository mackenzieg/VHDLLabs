library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Latch_Saver IS Port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	latch			: in std_logic;
	sync			: in std_logic;
	enable		: in std_logic;
	
	data_out		: out std_logic
);
END ENTITY;
 
Architecture definition of Latch_Saver is 

	signal output : std_logic := '0';

begin

reg: PROCESS (clk, reset)
BEGIN
	IF (reset = '0') THEN
		output <= '0';
	ELSIF(enable = '1') then
		if (rising_edge(clk)) then
			output <= (output or sync) and (not latch);
		ELSE
			output <= output;
		END IF;
	end if;
END PROCESS;

data_out <= output;

END ARCHITECTURE definition;