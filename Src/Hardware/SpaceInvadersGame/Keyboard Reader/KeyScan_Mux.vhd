library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_Mux is
port(
	Linhas: in std_logic_vector(3 downto 0);
	S: in std_logic_vector(1 downto 0);
	Y: out std_logic
);
end KeyScan_Mux;

architecture behavioral of KeyScan_Mux is

begin

Y <= not ((not S(0) and not S(1) and Linhas(0)) or (S(0) and not S(1) and Linhas(1)) or (not S(0) and S(1) and Linhas(2)) or (S(0) and S(1) and Linhas(3)));

end behavioral;