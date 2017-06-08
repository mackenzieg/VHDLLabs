library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compx4 is
   port (
			 compx4_in_a 		: in  std_logic_vector(3 downto 0);
			 compx4_in_b 		: in  std_logic_vector(3 downto 0);
			 compx4_mag			: out std_logic_vector(1 downto 0)
        );
end entity Compx4;

architecture Compx4 of Compx4 is 

component Compx1 is
   port (
			 compx1_in_a 		: in  std_logic;
			 compx1_in_b 		: in  std_logic;
			 compx1_previous  : in  std_logic_vector(1 downto 0);
			 compx1_mag			: out std_logic_vector(1 downto 0)
        );
end component;

-- type comparitors is array (0 to 3) of std_logic_vector(2 downto 0);

signal bus1 : 	std_logic_vector(1 downto 0);
signal bus2 : 	std_logic_vector(1 downto 0);
signal bus3 : 	std_logic_vector(1 downto 0);

begin

	bit1 : Compx1 port map (compx4_in_a(0), compx4_in_b(0), "11", bus1);
	bit2 : Compx1 port map (compx4_in_a(1), compx4_in_b(1), bus1, bus2);
	bit3 : Compx1 port map (compx4_in_a(2), compx4_in_b(2), bus2, bus3);
	bit4 : Compx1 port map (compx4_in_a(3), compx4_in_b(3), bus3, compx4_mag);

end architecture Compx4;