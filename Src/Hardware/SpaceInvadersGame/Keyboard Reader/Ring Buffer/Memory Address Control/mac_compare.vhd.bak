library ieee;
use ieee.std_logic_1164.all;

entity MAC_Compare is
port(
	incPutOut, incGetOut: in std_logic_vector(2 downto 0);
	Q: out std_logic
);
end MAC_Compare;

architecture behavioral of MAC_Compare is

begin

Q <= (incPutOut(2) and incGetOut(2)) and (incPutOut(1) and incGetOut(1)) and (incPutOut(0) and incGetOut(0));

end behavioral;