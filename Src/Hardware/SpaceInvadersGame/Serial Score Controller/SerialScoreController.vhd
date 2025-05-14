library ieee;
use ieee.std_logic_1164.all;

entity SerialScoreController is
port(
	SDX, SCLK, SS, Reset, clk: in std_logic;
	Dout: out std_logic_vector(6 downto 0);
	WrD: out std_logic
);
end SerialScoreController;

architecture behavioral of SerialScoreController is

component Score_SerialReceiver is 
port(
	SDX, SCLK, SS, accept, clk, Reset: in std_logic;
	D: out std_logic_vector(6 downto 0);
	DXval: out std_logic
);
end component;

component Score_Dispatcher is
port(
	Din: in std_logic_vector(6 downto 0);
	Dval, clk, Reset: in std_logic;
	WrD, done: out std_logic;
	Dout: out std_logic_vector(6 downto 0)
);
end component;



signal term0: std_logic_vector(6 downto 0);
signal term1, term2: std_logic;


begin

Score_SerialReceiver_U0: Score_SerialReceiver port map(
	SDX => SDX, 
	SCLK => SCLK, 
	SS => SS, 
	accept => term2, 
	Reset => Reset,
	CLK => CLK,
	D => term0,
	DXval => term1
);


Score_Dispatcher_U0: Score_Dispatcher port map(
	Din => term0,
	Dval => term1,
	clk => clk,
	Reset => Reset,
	WrD => WrD,
	done => term2,
	Dout => Dout
);


end behavioral;