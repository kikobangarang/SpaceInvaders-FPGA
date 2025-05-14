library ieee;
use ieee.std_logic_1164.all;

entity SerialLCDController is
port(
	SDX, SCLK, SS, Reset, clk: in std_logic;
	Dout: out std_logic_vector(8 downto 0);
	WrL: out std_logic
);
end SerialLCDController;

architecture behavioral of SerialLCDController is

component LCD_SerialReceiver is 
port(
	SDX, SCLK, SS, accept, clk, Reset: in std_logic;
	D: out std_logic_vector(8 downto 0);
	DXval: out std_logic
);
end component;

component LCD_Dispatcher is
port(
	Din: in std_logic_vector(8 downto 0);
	Dval, clk, Reset: in std_logic;
	WrL, done: out std_logic;
	Dout: out std_logic_vector(8 downto 0)
);
end component;



signal term0: std_logic_vector(8 downto 0);
signal term1, term2: std_logic;


begin 

LCD_SerialReceiver_U0: LCD_SerialReceiver port map(
	SDX => SDX, 
	SCLK => SCLK, 
	SS => SS, 
	accept => term2, 
	Reset => Reset,
	CLK => CLK,
	D => term0,
	DXval => term1
);


LCDDispatcher_U0: LCD_Dispatcher port map(
	Din => term0,
	Dval => term1,
	clk => clk,
	Reset => Reset,
	WrL => WrL,
	done => term2,
	Dout => Dout
);


end behavioral;