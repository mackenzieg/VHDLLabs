library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Moore_state_machine IS Port
(
	clk 			: in std_logic;
	reset 		: in std_logic;
	comparison  : in std_logic_vector(1 downto 0);
	output		: out std_logic_vector(3 downto 0)
);
END ENTITY;
 
 Architecture definition of Moore_state_machine is
 
  
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, s15); -- list all the STATES

 
 SIGNAL current_state, next_state	:  STATE_NAMES;   -- signals of type STATE_NAMES
 
begin

Register_Section: PROCESS (clk, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		current_state <= S0;
	ELSIF(rising_edge(clk)) THEN
		current_state <= next_State;
	ELSE
		current_state <= current_state;
	END IF;
END PROCESS;	



-- TRANSTION LOGIC PROCESS (to be combinational only)
-- add all transition inputs for state machine into Transition section Sensitivity List 
-- make sure that all conditional statement options are complete otherwise VHDL will infer LATCHES.

--leds(0) <= not comparison(0) and not comparison(1);
--leds(1) <= comparison(0) and comparison(1);
--leds(2) <= comparison(0) and not comparison(1);

Transition_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN S0 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S1;
				-- Not a valid state just stay at s0
            ELSIF (comparison = "01") then
               next_state <= S0;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;
				
         WHEN S1 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S2;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S0;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;		
				
         WHEN S2 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S3;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S1;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;			
				
         WHEN S3 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S4;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S2;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;			
				
         WHEN S4 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S5;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S3;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;			
				
         WHEN S5 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S6;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S4;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;			
				
         WHEN S6 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S7;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S5;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
         WHEN S7 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S8;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S6;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
			WHEN S8 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S9;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S7;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
			WHEN S9 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S10;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S8;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
			WHEN S10 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S11;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S9;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
			WHEN S11 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S12;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S10;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
			WHEN S12 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S13;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S11;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
			WHEN S13 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S14;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S12;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
			WHEN S14 =>
				-- Smaller than increment
            IF (comparison = "00") THEN 
               next_state <= S15;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S13;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
				
			WHEN S15 =>
				-- Invalid state so whatever
            IF (comparison = "00") THEN 
               next_state <= S15;
				-- Bigger than so decrease
            ELSIF (comparison = "01") then
               next_state <= S14;
				-- Equal so do nothing
				ELSE
					next_state <= current_state;
            END IF;	
	
         WHEN others =>
               next_state <= S0;

		END CASE;
 END PROCESS;
 
output <= "0000" when current_state = s0 else 
			 "0001" when current_state = s1 else 
			 "0010" when current_state = s2 else 
			 "0011" when current_state = s3 else 
			 "0100" when current_state = s4 else 
			 "0101" when current_state = s5 else 
			 "0110" when current_state = s6 else 
			 "0111" when current_state = s7 else 
			 "1000" when current_state = s8 else 
			 "1001" when current_state = s9 else 
			 "1010" when current_state = s10 else
			 "1011" when current_state = s11 else 
			 "1100" when current_state = s12 else 
			 "1101" when current_state = s13 else 
			 "1110" when current_state = s14 else 
			 "1111" when current_state = s15;


END ARCHITECTURE definition;