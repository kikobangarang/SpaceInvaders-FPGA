library ieee;
use ieee.std_logic_1164.all; 

entity SpaceInvadersGame is port(
	Linhas: in std_logic_vector(3 downto 0);
	Mclk, Reset, Manut: in std_logic;
	CoinIn : std_logic;

	WrLOut: out std_logic;
	Col: out std_logic_vector(2 downto 0);
	DoutLCD: out std_logic_vector(8 downto 0);
	HexLED0, HexLED1, HexLED2, HexLED3, HexLED4, HexLED5: out std_logic_vector(7 downto 0)
);
end SpaceInvadersGame;

architecture behavioral of SpaceInvadersGame is

component KeyboardReader is port(
	Linhas : in std_logic_vector(3 downto 0);
	Reset, clk, ACK : in std_logic;
	Dval : out std_logic;
	Col : out std_logic_vector(2 downto 0);
	Q : out std_logic_vector(3 downto 0)
);
end component;

component SerialLCDController is port(
	SDX, SCLK, SS, Reset, clk: in std_logic;
	Dout: out std_logic_vector(8 downto 0);
	WrL: out std_logic
);
end component;

component SerialScoreController is port(
	SDX, SCLK, SS, Reset, clk: in std_logic;
	Dout: out std_logic_vector(6 downto 0);
	WrD: out std_logic
);
end component;

component Coinaccept is port(
	Reset, clk, Coinin, accept: in std_logic;
	Coinout: out std_logic
);
end component;

component UsbPort port (
	inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
	outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;

component scoreDisplay is port(
	set	: in std_logic;
	cmd	: in std_logic_vector(2 downto 0);
	data	: in std_logic_vector(3 downto 0);
	HEX0	: out std_logic_vector(7 downto 0);
	HEX1	: out std_logic_vector(7 downto 0);
	HEX2	: out std_logic_vector(7 downto 0);
	HEX3	: out std_logic_vector(7 downto 0);
	HEX4	: out std_logic_vector(7 downto 0);
	HEX5	: out std_logic_vector(7 downto 0)
);
end component;

signal term0, term1, term3, term4, term5, term6, WrDOut: std_logic;
signal term2: std_logic_vector(3 downto 0);
signal DoutSSC: std_logic_vector(6 downto 0);
signal CoinOut_S, accept_S : std_logic;


begin

U0: KeyboardReader port map(
	Linhas => Linhas,
	Reset => Reset, 
	clk => Mclk, 
	ACK => term0,
	Dval => term1,
	Col => Col,
	Q => term2
);

U1: SerialLCDController port map(
	SDX => term3,
	SCLK => term4,
	SS => term5, 
	Reset => Reset, 
	clk => Mclk,
	Dout => DoutLCD,
	WrL => WrLOut
);

U2: SerialScoreController port map(
	SDX => term3, 
	SCLK => term4, 
	SS => term6, 
	Reset => Reset, 
	clk => Mclk,
	Dout => DoutSSC,
	WrD => WrDOut
);

U3: UsbPort port map(
	inputPort(0) => term2(0),
	inputPort(1) => term2(1),
	inputPort(2) => term2(2),
	inputPort(3) => term2(3),
	inputPort(4) => term1,
	inputPort(6) => CoinOut_S,
	inputPort(7) => Manut,
	
	outputPort(0) => term3,
	outputPort(1) => term5,
	outputPort(2) => term6,
	outputPort(3) => term4,
	outputPort(6) => accept_S,
	outputPort(7) => term0
	
);

U4: scoreDisplay port map(
	set => WrDOut,
	cmd(0) => DoutSSC(4),
	cmd(1) => DoutSSC(5),
	cmd(2) => DoutSSC(6),
	data(0) => DoutSSC(0),
	data(1) => DoutSSC(1),
	data(2) => DoutSSC(2),
	data(3) => DoutSSC(3),
	HEX0 => HexLED0,
	HEX1 => HexLED1,
	HEX2 => HexLED2,
	HEX3 => HexLED3,
	HEX4 => HexLED4,
	HEX5 => HexLED5
);

U5: CoinAccept port map(

reset => Reset,
clk => MCLK,
coinin => coinIn,
accept => accept_S,
coinout => Coinout_S
);


end behavioral;