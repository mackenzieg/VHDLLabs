library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compx1 is
   port (
			 compx1_in_a 		: in  std_logic;
			 compx1_in_b 		: in  std_logic;
			 compx1_previous  : in  std_logic_vector(1 downto 0);
			 compx1_mag			: out std_logic_vector(1 downto 0)
        );
end entity Compx1;

architecture Compx1 of Compx1 is begin

	compx1_mag(1) <= ((not compx1_in_a) and (not compx1_in_b) and compx1_previous(1)) or ((compx1_in_a) and (compx1_in_b) and (compx1_previous(1)));

	compx1_mag(0) <= ((compx1_in_b) and (compx1_previous(0))) or ((compx1_previous(0)) and (not compx1_in_a)) or ((not compx1_in_a) and (compx1_in_b) and (not compx1_previous(1))); 

end architecture Compx1;