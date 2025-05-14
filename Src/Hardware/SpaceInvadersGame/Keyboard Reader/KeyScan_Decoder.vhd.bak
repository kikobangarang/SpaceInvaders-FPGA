library ieee;
use ieee.std_logic_1164.all;


entity KeyScan_Decoder is
port(
	S: in std_logic_vector(1 downto 0);
	Col: out std_logic_vector(2 downto 0)
);
end KeyScan_Decoder;

architecture behavioral of KeyScan_Decoder is

begin

Col(0)<= not (not S(0) and not S(1));
Col(1)<= not (S(0) and not S(1));
Col(2)<= not (not S(0) and S(1));

end behavioral;