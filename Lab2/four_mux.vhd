library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Multiplexer that takes four 8 bit signals and selects one to output depending on toggle bits
entity four_one_mux is
   port (
			 in_a 		: in  std_logic;
			 in_b 		: in  std_logic;
			 previous   : in  std_logic_vector(1 downto 0);
			 mag		: out std_logic_vector(1 downto 0)
        );
end entity four_one_mux;

architecture four_one_mux of four_one_mux is begin

	-- Toggle between in1, 2, 3, 4 as output depending on toggle bits (four to one mux)
	with toggle select
		dout <= (in_1) when "00",
				  (in_2) when "01",
				  (in_3) when "10",
				  (in_4) when "11";

end architecture four_one_mux;
