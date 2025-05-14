library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister_FFD is
port(	
	clk : in std_logic;
	Reset : in std_logic;
	SET : in std_logic;		
	D : in std_logic;		
	EN : in std_logic;
	Q : out std_logic
);
end ShiftRegister_FFD;

architecture behavioral OF ShiftRegister_FFD IS

begin

Q <= '0' when Reset = '1' else '1' when SET = '1' else D when rising_edge(clk) and EN = '1';

end behavioral;