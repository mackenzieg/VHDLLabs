library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Multiplexer that takes two 8 bit signals and select one to output
entity two_one_mux is
   port (
			 toggle 		: in  std_logic := '0';
			 in_1 		: in  std_logic_vector(7 downto 0);	
			 in_2 		: in  std_logic_vector(7 downto 0);
			 dout			: out	std_logic_vector(7 downto 0)
        );
end entity two_one_mux;

architecture two_one_mux of two_one_mux is begin
	-- Toggle between in_1 as output and in_2 as output depending on toggle bit
	dout <= (in_1) WHEN (toggle = '0') ELSE (in_2);
end architecture two_one_mux;
