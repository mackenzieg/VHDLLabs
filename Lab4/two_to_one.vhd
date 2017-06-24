library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Multiplexer that takes two 4 bit signals and selects one to output depending on toggle bit
entity two_one_mux is
   port (
			 toggle 	: in  std_logic := '0';
			 in_1 	: in  std_logic;	
			 in_2 	: in  std_logic;
			 dout		: out	std_logic
        );
end entity two_one_mux;

architecture two_one_mux of two_one_mux is begin

	-- Toggle between in1, 2 as output depending on toggle bit (two to one mux)
	with toggle select
		dout <= (in_1) when '0',
				  (in_2) when '1';

end architecture two_one_mux;
