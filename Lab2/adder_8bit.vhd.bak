library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_4bit is
   port (
			 in_1 		: in  std_logic_vector(3 downto 0);	
			 in_2 		: in  std_logic_vector(3 downto 0);
			 add 			: out  std_logic_vector(7 downto 0)
        );
end entity adder_4bit;

architecture adder_4bit of adder_4bit is
	
	signal a : unsigned(7 downto 0);
	signal b : unsigned(7 downto 0);
   
begin
	a <= "0000" & unsigned(in_1);
	b <= "0000" & unsigned(in_2);
	add <= std_logic_vector(a + b);
end architecture adder_4bit;
