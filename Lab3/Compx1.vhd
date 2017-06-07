library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compx1 is
   port (
			 compx1_in_a 		: in  std_logic;
			 compx1_in_b 		: in  std_logic;
			 compx1_previous   	: in  std_logic_vector(1 downto 0);
			 compx1_mag			: out std_logic_vector(1 downto 0)
        );
end entity Compx1;

architecture Compx1 of Compx1 is begin

	mag(1) <= (not in_a) and (not in_b) and previous(1) or (in_a) and (in_b) and (previous(1));

	mag(0) <= (in_b) and (previous(0)) or (previous(0)) and (not in_a) or (not in_a) and (in_b) and (not previous(1)); 

end architecture Compx1;