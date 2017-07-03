library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Moore_SM_Example IS Port
(
 clk_input, rst_n, I0,I1,I2,I3,I4,I5,I6,I7	: IN std_logic;
 MSM_Done												: OUT std_logic
 );
END ENTITY;
 
 
 
 Architecture MSM of Moore_SM_Example is
 
  
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7); -- list all the STATES

 
 SIGNAL current_state, next_state	:  STATE_NAMES;   -- signals of type STATE_NAMES

BEGIN

 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 
-- REGISTER LOGIC PROCESS
-- add clock and any related inputs for state machine register section into Sensitivity List 

Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= S0;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	ELSE
		current_state <= current_state;
	END IF;
END PROCESS;	



-- TRANSTION LOGIC PROCESS (to be combinational only)
-- add all transition inputs for state machine into Transition section Sensitivity List 
-- make sure that all conditional statement options are complete otherwise VHDL will infer LATCHES.

Transition_Section: PROCESS (I0,I1,I2,I3,I4,I5,I6,I7, current_state) 

BEGIN
     CASE current_state IS
         WHEN S0 =>		
            IF (I0 ='1') THEN 
               next_state <= S1;
            ELSE 
               next_state <= S0;
            END IF;
				
         WHEN S1 =>
            IF ( I1 ='1') THEN 
               next_state <= S2;
            ELSE 
               next_state <= S1;
            END IF;			
				
         WHEN S2 =>
            IF ( I2 ='1') THEN 
               next_state <= S3;
            ELSE 
               next_state <= S2;
            END IF;			
				
         WHEN S3 =>
            IF ( I3 ='1') THEN 
               next_state <= S4;
            ELSE 
               next_state <= S3;
            END IF;			
				
         WHEN S4 =>
            IF ( I4r ='1') THEN 
               next_state <= S5;
            ELSE 
               next_state <= S4;
            END IF;			
				
         WHEN S5 =>
            IF ( I5 ='1') THEN 
               next_state <= S6;
            ELSE 
               next_state <= S5;
            END IF;			
				
         WHEN S6 =>
            IF ( I6 ='1') THEN 
               next_state <= S7;
            ELSE 
               next_state <= S6;
            END IF;
				
         WHEN S7 =>
            IF ( I7 ='1') THEN 
               next_state <= S0;
            ELSE 
               next_state <= S7;
            END IF;
				
         WHEN others =>
               next_state <= S0;

		END CASE;
 END PROCESS;

 Decoder_Section: MSM_Done <= '1' when current_state = S7 else '0';


END ARCHITECTURE MSM;
