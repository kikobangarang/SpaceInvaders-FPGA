library ieee;
use ieee.std_logic_1164.all;

entity KeyDecode is 
port(
	Reset: in std_logic;
	CLK: in std_logic;
	Line: in std_logic_vector(3 downto 0);
	Kack: in std_logic;
	Col: out std_logic_vector(2 downto 0);
	Kval: out std_logic;
	K: out std_logic_vector(3 downto 0)
);
end KeyDecode;

architecture behavioral of KeyDecode is

component KeyScan is 
port(
	Kscan: in std_logic;
	Line: in std_logic_vector(3 downto 0);
	clk: in std_logic;
	Reset: in std_logic;
	K: out std_logic_vector(3 downto 0);
	Kpress: out std_logic;
	Col: out std_logic_vector(2 downto 0)
);
end component;

component KeyControl is
port(
	Reset: in std_logic;
	clk: in std_logic;
	Kack: in std_logic;
	Kpress: in std_logic;
	Kval: out std_logic;
	Kscan: out std_logic
);
end component;

signal term0, term1: std_logic;

begin

KeyScan_Unit0: KeyScan port map(
	Kscan => term0, 
	Line => Line,
	CLK => CLK,
	Reset => Reset,
	K => K,
	Kpress => term1,
	Col => Col
);

KeyControl_Unit0: KeyControl port map(
	Reset => Reset,
	CLK => CLK,
	Kack => Kack,
	Kpress => term1,
	Kval => Kval,
	Kscan => term0
);


end behavioral;