library ieee;
use ieee.std_logic_1164.all;

entity Compare8 is
port(	
	Data: in std_logic_vector(3 downto 0);
	R: out std_logic
);
end Compare8;

architecture behavioral of Compare8 is

begin

R <= Data(3) and not Data(2) and not Data(1) and not Data(0);

end behavioral;