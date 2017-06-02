library ieee;
use ieee.std_logic_1164.all;

library work;

entity VHDL_polarity_switch IS PORT (
		POLARITY_CNTRL, IN_1, IN_2, IN_3, IN_4 : in bit;
		OUT_1, OUT_2, OUT_3, OUT_4 : out bit
	);
END VHDL_polarity_switch;

architecture polarity_switch of VHDL_polarity_switch IS BEGIN
	OUT_1 <= POLARITY_CNTRL xor IN_1;
	OUT_2 <= POLARITY_CNTRL xor IN_2;
	OUT_3 <= POLARITY_CNTRL xor IN_3;
	OUT_4 <= POLARITY_CNTRL xor IN_4;
END polarity_switch;