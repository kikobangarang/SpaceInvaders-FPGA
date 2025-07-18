library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_Cont_FullAdder is 
port(
	A : in std_logic;
	B : in std_logic;
	CYi : in std_logic;
	R : out std_logic;
	CyOut: out std_logic
);
end KeyScan_Cont_FullAdder;

architecture behavioral of KeyScan_Cont_FullAdder is

begin

	R <= (A xor B) xor CYi;
	CyOut <= ((A xor B) and CYi) or (A and B);
	
end behavioral;