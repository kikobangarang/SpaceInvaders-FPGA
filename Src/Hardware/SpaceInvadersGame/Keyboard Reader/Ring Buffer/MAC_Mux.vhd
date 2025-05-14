library ieee;
use ieee.std_logic_1164.all;

entity MAC_Mux is
port(
	incPutOut, incGetOut: in std_logic_vector(2 downto 0);
	putGet: in std_logic;
	Address: out std_logic_vector(2 downto 0)
);
end MAC_Mux ;

architecture behavioral of MAC_Mux is

begin

Address <= incPutOut when putGet = '1' else incGetOut;

end behavioral;