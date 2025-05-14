library ieee;
use ieee.std_logic_1164.all;

entity KeyScan is
port(
	Kscan: in std_logic;
	Line: in std_logic_vector(3 downto 0);
	clk: in std_logic;
	Reset: in std_logic;
	K: out std_logic_vector(3 downto 0);
	Kpress: out std_logic;
	Col: out std_logic_vector(2 downto 0)
);
end KeyScan;

architecture behavioral of KeyScan is

component KeyScan_Cont is
port(
	CE, Reset, clk: in std_logic;
	Q: out std_logic_vector(3 downto 0)
);
end component;

component KeyScan_Decoder is
port(
	S: in std_logic_vector(1 downto 0);
	Col: out std_logic_vector(2 downto 0)
);
end component;

component KeyScan_Mux is
port(
	Line: in std_logic_vector(3 downto 0);
	S: in std_logic_vector(1 downto 0);
	Y: out std_logic
);
end component;

signal term: std_logic_vector(3 downto 0);

begin

KeyScan_Cont_U0: KeyScan_Cont port map(
	CE => Kscan,
	Reset => Reset,
	clk => clk,
	Q => term
);
KeyScan_Decoder_U0: KeyScan_Decoder port map(
	S(0) => term(2),
	S(1) => term(3),
	Col => Col
);
KeyScan_Mux_U0: KeyScan_Mux port map(
	Line => Line,
	S(0) => term(0),
	S(1) => term(1),
	Y => Kpress
);

K <= term; 

end behavioral;