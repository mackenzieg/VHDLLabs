library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Multiplexer that takes four 4 bit signals and selects one to output depending on toggle bits
entity two_one_mux is
   port (
			 toggle 	: in  std_logic := '0';
			 in_1 	: in  std_logic_vector(3 downto 0);	
			 in_2 	: in  std_logic_vector(3 downto 0);
			 dout		: out	std_logic_vector(3 downto 0)
        );
end entity two_one_mux;

architecture two_one_mux of two_one_mux is begin

	-- Toggle between in1, 2, 3, 4 as output depending on toggle bits (four to one mux)
	with toggle select
		dout <= (in_1) when '0',
				  (in_2) when '1';

end architecture two_one_mux;
