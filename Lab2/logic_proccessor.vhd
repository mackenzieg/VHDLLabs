library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic_proccessor is
   port (
			 hex_A 		: in  std_logic_vector(3 downto 0);	
			 hex_B		: in  std_logic_vector(3 downto 0);
			 push_B		: in  std_logic_vector(2 downto 0);
			 logic_out 	: out std_logic_vector(3 downto 0)
        );
end entity logic_proccessor;

architecture logic_proccessor of logic_proccessor is begin

	with push_B select
		logic_out <= (hex_A and hex_B) when "001",
						 (hex_A or hex_B)  when "010",
						 (hex_A xor hex_B) when "100",
			          "0000" when others;

end architecture logic_proccessor;
