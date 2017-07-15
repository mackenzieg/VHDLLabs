library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Moore_state IS Port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	
	-- first bit of each 2 bits are flashing version and second is solid
	-- bit 0,1 are green, 2,3 yellow etc
	north_south		: out std_logic_vector(5 downto 0);
	east_west		: out std_logic_vector(5 downto 0)
);
END ENTITY;
 
 Architecture definition of Moore_state is
 
 -- Define all the states
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, s15); -- list all the STATES

 
 SIGNAL current_state, next_state	:  STATE_NAMES;   -- signals of type STATE_NAMES
 
begin

Register_Section: PROCESS (clk, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '0') THEN
		current_state <= S0;
	ELSIF(rising_edge(clk)) THEN
		current_state <= next_State;
	ELSE
		current_state <= current_state;
	END IF;
END PROCESS;	


Transition_Section: PROCESS ( clk, current_state) 

BEGIN
     CASE current_state IS
         WHEN S0 =>
				next_state <= s1;
				
         WHEN S1 =>
				next_state <= s2;	
				
         WHEN S2 =>
				next_state <= s3;			
				
         WHEN S3 =>
				next_state <= s4;			
				
         WHEN S4 =>
				next_state <= s5;				
				
         WHEN S5 =>
				next_state <= s6;			
				
         WHEN S6 =>
				next_state <= s7;	
				
         WHEN S7 =>
				next_state <= s8;	
				
			WHEN S8 =>
				next_state <= s9;	
				
			WHEN S9 =>
				next_state <= s10;	
				
			WHEN S10 =>
				next_state <= s11;	
				
			WHEN S11 =>
				next_state <= s12;	
				
			WHEN S12 =>
				next_state <= s13;	
				
			WHEN S13 =>
				next_state <= s14;	
				
			WHEN S14 =>
				next_state <= s15;	
				
			WHEN S15 =>
				next_state <= s0;	
	
         WHEN others =>
            next_state <= S0;

		END CASE;
 END PROCESS;
 
north_south <=  "000001" when current_state = s0 else 
					 "000001" when current_state = s1 else 
					 
					 "000010" when current_state = s2 else 
					 "000010" when current_state = s3 else 
					 "000010" when current_state = s4 else 
					 "000010" when current_state = s5 else 
					 
					 "001000" when current_state = s6 else 
					 "001000" when current_state = s7 else 
					 
					 "100000" when current_state = s8 else 
					 "100000" when current_state = s9 else 
					 "100000" when current_state = s10 else
					 "100000" when current_state = s11 else 
					 "100000" when current_state = s12 else 
					 "100000" when current_state = s13 else 
					 "100000" when current_state = s14 else 
					 "100000" when current_state = s15;
				
east_west <= 	 "100000" when current_state = s0 else 
					 "100000" when current_state = s1 else 
					 "100000" when current_state = s2 else 
					 "100000" when current_state = s3 else 
					 "100000" when current_state = s4 else 
					 "100000" when current_state = s5 else 
					 "100000" when current_state = s6 else 
					 "100000" when current_state = s7 else 
					 
					 "000001" when current_state = s8 else 
					 "000001" when current_state = s9 else 
					 
					 "000010" when current_state = s10 else
					 "000010" when current_state = s11 else 
					 "000010" when current_state = s12 else 
					 "000010" when current_state = s13 else 
					 
					 "001000" when current_state = s14 else 
					 "001000" when current_state = s15;

END ARCHITECTURE definition;