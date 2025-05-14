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

Q <= (incPutOut(2) xnor incGetOut(2)) and (incPutOut(1) xnor incGetOut(1)) and (incPutOut(0) xnor incGetOut(0));

end behavioral;