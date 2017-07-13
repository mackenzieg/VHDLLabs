library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------
-- 7-segment display driver. It displays a 4-bit number on a 7-segment
-- This is created as an entity so that it can be reused many times easily
--


entity SevenSegment is port (

	input		:  in std_logic_vector(2 downto 0); -- bit 3 is red, 1 is green
   
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end SevenSegment;

architecture Behavioral of SevenSegment is

-- 
-- The following statements convert a 4-bit input, called dataIn to a pattern of 7 bits
-- The segment turns on when it is '1' otherwise '0'
--
begin
   with input select						     --GFEDCBA        3210      -- data in   
	sevenseg <= 
										 "0000001" when "001",
										 "0001000" when "010",
										 "1000000" when "100",
										 "0000000" when others;
end architecture Behavioral; 
----------------------------------------------------------------------
