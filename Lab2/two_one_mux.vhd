library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Multiplexer that takes two 8 bit signals and select one to output
entity four_one_mux is
   port (
			 toggle 		: in  std_logic_vector(1 downto 0) := "00";
			 in_1 		: in  std_logic_vector(7 downto 0);	
			 in_2 		: in  std_logic_vector(7 downto 0);
			 in_3 		: in  std_logic_vector(7 downto 0);
			 in_4 		: in  std_logic_vector(7 downto 0);
			 dout			: out	std_logic_vector(7 downto 0)
        );
end entity four_one_mux;

architecture two_one_mux of two_one_mux is begin

	-- Toggle between in1, 2, 3, 4 as output depending on toggle bits (four to one mux)
	with toggle select
		dout <= (in_1) when "00",
						 (in_2)  when "01",
						 (in_3) when "10",
						 (in_4) when "11";

end architecture two_one_mux;
