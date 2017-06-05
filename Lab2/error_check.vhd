library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Defines an enity for adding two 8 bit signals and output an 8 bit added signal
entity adder_8bit is
   port (
			 buttons		: in  std_logic_vector(3 downto 0);
			 leds 		: out  std_logic_vector(7 downto 0);
			 digit_A 	: out  std_logic_vector(7 downto 0);
			 digit_B 	: out  std_logic_vector(7 downto 0)
        );
end entity adder_8bit;

architecture adder_8bit of adder_8bit is
	
	signal error: std_logic;
   
begin

	error <= buttons(3) and buttons(2) or buttons(2) and buttons(1) and buttons(1) and buttons(0);
	
	with error select
		digit_A <= ("0000") when '0',
			("1000")  when '1';
			
	with error select
		leds <= ("00000000") when '0',
			("11111111")  when '1';


end architecture adder_8bit;
