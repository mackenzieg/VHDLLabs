library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity two_one_mux is
   port (
			 toggle 		: in  std_logic := '0';
			 in_1 		: in  std_logic_vector(7 downto 0);	
			 in_2 		: in  std_logic_vector(7 downto 0);
			 dout			: out	std_logic_vector(7 downto 0)
        );
end entity two_one_mux;

architecture two_one_mux of two_one_mux is begin
	dout <= (in_1) WHEN (toggle = '0') ELSE (in_2);
end architecture two_one_mux;
