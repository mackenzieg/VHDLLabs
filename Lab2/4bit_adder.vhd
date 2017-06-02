library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity four_bit_adder is
   port (
			 in_1 		: in  std_logic_vector(3 downto 0);	
			 in_2 		: in  std_logic_vector(3 downto 0);
			 add 			: out  std_logic_vector(7 downto 0)
        );
end entity four_bit_adder;

architecture four_bit_adder of four_bit_adder is
	
	signal a : unsigned(7 downto 0);
	signal b : unsigned(7 downto 0);
   
begin
	a <= "0000" & unsigned(in_1);
	b <= "0000" & unsigned(in_2);
	add <= std_logic_vector(a + b);
end architecture four_bit_adder;
