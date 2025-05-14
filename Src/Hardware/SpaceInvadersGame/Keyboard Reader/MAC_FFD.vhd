library ieee;
use ieee.std_logic_1164.all;

entity MAC_FFD is
port(	
	clk : in std_logic;
	Reset : in std_logic;
	Set : in std_logic;
	D : in std_logic;
	EN : in std_logic;
	Q : out std_logic
);
end MAC_FFD;

architecture behavioral of MAC_FFD is

begin


Q <= '0' when Reset = '1' else '1' when Set = '1' else D when rising_edge(clk) and EN = '1';


end behavioral;