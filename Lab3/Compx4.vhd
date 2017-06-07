library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compx4 is
   port (
			 in_a 		: in  std_logic_vector(3 downto 0);
			 in_b 		: in  std_logic_vector(3 downto 0);
			 mag			: out	std_logic_vector(2 downto 0)
        );
end entity Compx4;

architecture Compx4 of Compx4 is 

component Compx4 is
   port (
			 single_in_a 		: in  std_logic;
			 single_in_b 		: in  std_logic;
			 single_mag			: out	std_logic_vector(2 downto 0)
        );
end component;

type comparitors is array (o to 3) of std_logic_vector(2 downto 0);

signal greater : std_logic := 0;
signal equal 	: std_logic := 1;
signal smaller : std_logic := 0;

begin

	bit1 : Compx1 port map (in_a(i), in_b(i), comparitors(0));
	bit2 : Compx1 port map (in_a(i), in_b(i), comparitors(0));
	bit3 : Compx1 port map (in_a(i), in_b(i), comparitors(0));
	bit4 : Compx1 port map (in_a(i), in_b(i), comparitors(0));

	mag <= "010";

end architecture Compx4;