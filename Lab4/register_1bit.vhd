library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_1bit is port(
	d 			: in std_logic;
	load		: in std_logic;
	clk 		: in std_logic;
	q			: out std_logic
);

end register_1bit;

architecture description of register_1bit is begin

	process(clk) begin
		if (clk'event and clk='1') then
			if (load = '1') then
				q <= d;
			end if;
		end if;
	end process;
	
end description;