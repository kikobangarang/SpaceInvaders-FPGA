library ieee;
use ieee.std_logic_1164.all;

entity Compare9 is
port(	
	Data: in std_logic_vector(3 downto 0);
	R: out std_logic
);
end Compare9;

architecture behavioral of Compare9 is

begin

R <= Data(3) and not Data(2) and not Data(1) and Data(0);

end behavioral;