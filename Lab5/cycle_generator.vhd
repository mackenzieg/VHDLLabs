LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

Entity cycle_generator IS port (
          clkin      		: in  std_logic;
			 rst_n				: in  std_logic;
			 modulo 				: in  integer;	
			 strobe_out			: out	std_logic;
			 full_cycle_out	: out std_logic
   );
end entity;

ARCHITECTURE counter OF cycle_generator IS

	SIGNAL bin_counter					: UNSIGNED(31 DOWNTO 0);
	SIGNAL terminal_count				: std_logic;
	SIGNAL half_cycle, full_cycle		: std_logic;
	SIGNAL strobe							: std_logic;

	BEGIN

	half_cycle <= terminal_count;
	full_cycle_out <= full_cycle;
	strobe_out <= strobe;

	
MODULO_COUNTING: PROCESS(clkin, rst_n) IS
   BEGIN

	  IF (rst_n = '0') THEN
		  bin_counter <= to_unsigned(modulo,32);
		  terminal_count <= '0';
	
	  ELSIF (rising_edge(clkin)) THEN					-- binary counter decrements on rising clock edge.
			IF(bin_counter = 0) THEN
																	-- when bin_counter reaches 0 
				bin_counter <= to_unsigned(modulo,32); -- reload the (converted integer to 32 bit unsigned signal type) modulo value 
				terminal_count <= '1';						-- and output a terminal_count signal
			ELSE
				bin_counter <= bin_counter - 1;
				terminal_count <= '0';
			END IF;
	  ELSE
			bin_counter <= bin_counter;
			terminal_count <= terminal_count;
			
	  END IF;
   END PROCESS;
	

Strobe_gen: PROCESS(clkin, rst_n, terminal_count) IS			-- Strobe is with 50% duty cycle
   BEGIN
		if (rst_n = '0') then
			strobe <= '0';
		elsif (rising_edge(clkin) and terminal_count = '1') then
			strobe <= not strobe;
		else
			strobe <= strobe;
		end if;
	END PROCESS;

	
CLKEN_GEN: PROCESS(clkin, rst_n, strobe, terminal_count) IS				-- full_cycle is one "clkin" cycle in duration and occure once for every two occurrences of half_cycle
   BEGIN
		if (rst_n = '0') then
			full_cycle <= '0';
		elsif (rising_edge(clkin)) then
			full_cycle <= strobe and terminal_count;
		end if;
	END PROCESS;

END Architecture;

