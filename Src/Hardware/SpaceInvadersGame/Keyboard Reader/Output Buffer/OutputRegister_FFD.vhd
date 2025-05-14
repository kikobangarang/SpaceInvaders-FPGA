library ieee;
use ieee.std_logic_1164.all;

entity OutputRegister_FFD is
port(	
	clk : in std_logic;
	Reset : in STD_LOGIC;
	Set : in std_logic;
	D : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	Q : out std_logic
	);
end OutputRegister_FFD;

architecture behavioral of OutputRegister_FFD is

begin

Q <= '0' when Reset = '1' else '1' when Set = '1' else D when rising_edge(clk) and EN = '1';

end behavioral;