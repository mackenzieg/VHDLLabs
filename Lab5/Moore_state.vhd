library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Moore_state IS Port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	
	vehicle_ns	: in std_logic;
	vehicle_ew	: in std_logic;
	
	night_mode, safe_mode : in std_logic;
	
	latch_clear_ns : out std_logic;
	latch_clear_ew : out std_logic;
	
	-- first bit of each 2 bits are flashing version and second is solid
	-- bit 0,1 are green, 2,3 yellow etc
	north_south		: out std_logic_vector(5 downto 0);
	east_west		: out std_logic_vector(5 downto 0);
	
	state_number   : out std_logic_vector(3 downto 0)
);
END ENTITY;
 
 Architecture definition of Moore_state is
 
 -- Define all the states s16 = night mode, s17 = reduced system
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, s15, s16, s17); -- list all the STATES

 
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

Transition_Section: PROCESS (clk, current_state, vehicle_ns, vehicle_ew) 

BEGIN
     CASE current_state IS
         WHEN S0 =>
				-- If vehicle queue skip states
				if (vehicle_ew = '1') then
					next_state <= s6;
				else
					next_state <= s1;
				end if;
				
         WHEN S1 =>
				if (vehicle_ew = '1') then
					next_state <= s6;
				else
					next_state <= s2;	
				end if;
				
         WHEN S2 =>
				if (vehicle_ew = '1') then
					next_state <= s6;
				else
					next_state <= s3;	
				end if;		
				
         WHEN S3 =>
				if (vehicle_ew = '1') then
					next_state <= s6;
				else
					next_state <= s4;	
				end if;		
				
         WHEN S4 =>
				if (vehicle_ew = '1') then
					next_state <= s6;
				else
					next_state <= s5;		
				end if;
				
         WHEN S5 =>
				next_state <= s6;		
				
         WHEN S6 =>
				next_state <= s7;	
				
         WHEN S7 =>
				-- If night mode of safe mode move over to those states
				if (safe_mode = '1') then
					next_state <= s16;
				elsif (night_mode = '1') then
					next_state <= s17;
				else
					next_state <= s8;	
				end if;
				
			WHEN S8 =>
				if (vehicle_ns = '1') then
					next_state <= s14;
				else
					next_state <= s9;	
				end if;
				
			WHEN S9 =>
				if (vehicle_ns = '1') then
					next_state <= s14;
				else
					next_state <= s10;	
				end if;
				
			WHEN S10 =>
				if (vehicle_ns = '1') then
					next_state <= s14;
				else
					next_state <= s11;
				end if;
				
			WHEN S11 =>
				if (vehicle_ns = '1') then
					next_state <= s14;
				else
					next_state <= s12;	
				end if;
				
			WHEN S12 =>
				if (vehicle_ns = '1') then
					next_state <= s14;
				else
					next_state <= s13;	
				end if;
				
			WHEN S13 =>
				next_state <= s14;
			
			WHEN S14 =>
				next_state <= s15;	
				
			WHEN S15 =>
				if (safe_mode = '1') then
					next_state <= s16;
				elsif (night_mode = '1') then
					next_state <= s17;
				else
					next_state <= s0;	
				end if;
				
			WHEN S16 =>
				-- Switch to other modes depending on inputs
				if (night_mode = '0' and safe_mode = '0') then
					next_state <= s6;
				elsif (night_mode = '0' and safe_mode='1') then
					next_state <= s17;
				elsif (night_mode = '1' and safe_mode='1') then
					next_state <= s17;
				else
					next_state <= s16;
				end if;
				
			WHEN S17 =>
				if (night_mode = '0' and safe_mode = '0') then
					next_state <= s6;
				elsif (night_mode = '1' and safe_mode = '0') then
					next_state <= s16;
				else
					next_state <= s17;
				end if;
				
         WHEN others =>
            next_state <= S0;

		END CASE;
 END PROCESS;
 
 -- Decoders that output signals
state_number <= "0000" when current_state = s0  else
					 "0001" when current_state = s1  else
					 "0010" when current_state = s2  else
					 "0011" when current_state = s3  else
					 "0100" when current_state = s4  else
					 "0101" when current_state = s5  else
					 "0110" when current_state = s6  else
					 "0111" when current_state = s7  else
					 "1000" when current_state = s8  else
					 "1001" when current_state = s9  else
					 "1010" when current_state = s10 else
					 "1011" when current_state = s11 else
					 "1100" when current_state = s12 else
					 "1101" when current_state = s13 else
					 "1110" when current_state = s14 else
					 "1111" when current_state = s15 else
					 "0000" when current_state = s16 else
					 "0000" when current_state = s17;
 
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
					 "100000" when current_state = s15 else
					 
					 "100000" when current_state = s16 else
					 "010000" when current_state = s17;
				
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
					 "001000" when current_state = s15 else
					 
					 "000010" when current_state = s16 else 
					 "000100" when current_state = s17;
					 
latch_clear_ns <= '1' when current_state = s15 else '0';
latch_clear_ew <= '1' when current_state = s7  else '0';

END ARCHITECTURE definition;