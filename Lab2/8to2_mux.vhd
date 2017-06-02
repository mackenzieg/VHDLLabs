library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity eight_to_two_mux is
   port (
			 toggle 		: in  std_logic := '0';
			 in_1 		: in  std_logic_vector(7 downto 0);	
			 in_2 		: in  std_logic_vector(7 downto 0);
			 dout			: out	std_logic_vector(7 downto 0)
        );
end entity eight_to_two_mux;

architecture eight_to_two_mux of eight_to_two_mux is begin
	dout(0) <= (in_1(0)) WHEN (toggle = '0')	ELSE (in_2(0));
	dout(1) <= (in_1(1)) WHEN (toggle = '0')	ELSE (in_2(1));
	dout(2) <= (in_1(2)) WHEN (toggle = '0')	ELSE (in_2(2));
	dout(3) <= (in_1(3)) WHEN (toggle = '0')	ELSE (in_2(3));
	dout(4) <= (in_1(4)) WHEN (toggle = '0')	ELSE (in_2(4));
	dout(5) <= (in_1(5)) WHEN (toggle = '0')	ELSE (in_2(5));
	dout(6) <= (in_1(6)) WHEN (toggle = '0')	ELSE (in_2(6));
   dout(7) <= (in_1(7)) WHEN (toggle = '0')	ELSE (in_2(7));
end architecture eight_to_two_mux;
