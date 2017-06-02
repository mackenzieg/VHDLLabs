library ieee;
use ieee.std_logic_1164.all;

library work;

entity VHDL_gates IS PORT (
		AND_IN1, AND_IN2, NAND_IN1, NAND_IN2, OR_IN1, OR_IN2, XOR_IN1, XOR_IN2 : in bit;
		AND_OUT, NAND_OUT, OR_OUT, XOR_OUT : out bit
	);
END VHDL_gates;

architecture simple_gates of VHDL_gates IS BEGIN
	AND_OUT <= AND_IN1 and AND_IN2;
	NAND_OUT <= NAND_IN1 nand NAND_IN2;
	OR_OUT <= OR_IN1 or OR_IN2;
	XOR_OUT <= XOR_IN1 xor XOR_IN2;
END simple_gates;
