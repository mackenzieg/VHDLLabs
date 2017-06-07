library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compx1 is
   port (
			 in_a 		: in  std_logic;	
			 in_b 		: in  std_logic;
			 mag			: out	std_logic_vector(2 downto 0)
        );
end entity Compx1;

architecture Compx1 of Compx1 is begin

	mag(0) <= not in_a and in_b;

	mag(1) <= in_a xnor in_b;
	
	mag(2) <= in_a and not in_b;

	--with in_a & in_b select
	--	mag <= "100" when "10",
	--			 "001" when "01",
	--			 "010" when others;

end architecture Compx1;