library ieee;
use ieee.std_logic_1164.all;

entity Compare10 is
port(	
	Data: in std_logic_vector(3 downto 0);
	R: out std_logic
);
end Compare10;

architecture behavioral of Compare10 is

begin

R <= Data(3) and not Data(2) and Data(1) and not Data(0);

end behavioral;