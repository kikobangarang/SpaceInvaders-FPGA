library ieee;
use ieee.std_logic_1164.all;

entity Compare7 is
port(	
	Data: in std_logic_vector(3 downto 0);
	R: out std_logic
);
end Compare7;

architecture behavioral of Compare7 is

begin

R <= not Data(3) and Data(2) and Data(1) and Data(0);

end behavioral;