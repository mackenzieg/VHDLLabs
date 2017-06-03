library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Defines an enity for adding two 8 bit signals and output an 8 bit added signal
entity adder_8bit is
   port (
			 in_1 		: in  std_logic_vector(7 downto 0);	
			 in_2 		: in  std_logic_vector(7 downto 0);
			 add 			: out  std_logic_vector(7 downto 0)
        );
end entity adder_8bit;

architecture adder_8bit of adder_8bit is
	
	signal a : unsigned(7 downto 0);
	signal b : unsigned(7 downto 0);
   
begin
	-- Cast to unsigned
	a <= unsigned(in_1);
	b <= unsigned(in_2);
	-- Add unsigned numbers and cast to vector
	add <= std_logic_vector(a + b);
end architecture adder_8bit;
