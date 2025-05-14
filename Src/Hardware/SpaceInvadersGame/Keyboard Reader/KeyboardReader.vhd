library ieee;
use ieee.std_logic_1164.all;

entity KeyboardReader is
port(
	Linhas : in std_logic_vector(3 downto 0);
	Reset, clk, ACK : in std_logic;
	Dval : out std_logic;
	Col : out std_logic_vector(2 downto 0);
	Q : out std_logic_vector(3 downto 0)
);
end KeyboardReader;

architecture behavioral of KeyboardReader is

component KeyDecode is
port(
	Reset: in std_logic;
	clk: in std_logic;
	Linhas: in std_logic_vector(3 downto 0);
	Kack: in std_logic;
	Col: out std_logic_vector(2 downto 0);
	Kval: out std_logic;
	K: out std_logic_vector(3 downto 0)
);
end component;

component RingBuffer is
port(
	DAV, CTS, clk, Reset: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0);
	Wreg, DAC: out std_logic
);
end component;

component OutputBuffer is
port(
	D : in std_logic_vector(3 downto 0);
	Load, Reset, ACK, clk: in std_logic;
	Q : out std_logic_vector(3 downto 0);
	OBfree, Dval : out std_logic
);
end component;

signal term0, term1, term3, term5 : std_logic;
signal term2, term4 : std_logic_vector(3 downto 0);

begin

KeyDecode_U0: KeyDecode port map(
	Reset => Reset,
	clk => clk,
	Linhas => Linhas,
	Kack => term0,
	Col => Col,
	Kval => term1,
	K => term2
);

RingBuffer_U0: RingBuffer port map(
	DAV => term1,
	CTS => term3,
	clk => clk,
	Reset => Reset,
	D => term2,
	Q => term4,
	Wreg => term5, 
	DAC => term0
);

OutputBuffer_U0: OutputBuffer port map(
	D => term4,
	Load => term5, 
	Reset => Reset, 
	ACK => ACK, 
	clk => clk,
	Q => Q,
	OBfree => term3, 
	Dval => Dval
);

end behavioral;