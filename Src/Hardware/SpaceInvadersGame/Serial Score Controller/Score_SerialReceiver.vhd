library ieee;
use ieee.std_logic_1164.all;

entity Score_SerialReceiver is 
port(
	SDX, SCLK, SS, accept, Reset, clk: in std_logic;
	D: out std_logic_vector(6 downto 0);
	DXval: out std_logic
);
end Score_SerialReceiver;

architecture behavioral of Score_SerialReceiver is

component ParityCheck is
port(
	data, init, clk: in std_logic;
	err: out std_logic
);
end component;

component Counter is
port(
	Clear, clk: in std_logic;
	Q: out std_logic_vector(3 downto 0)
);
end component;

component Score_SerialReceiver_ShiftRegister is
port(
	data : in std_logic;
	clk : in std_logic;
	enableShift : in std_logic;
	reset : in std_logic;
	D : out std_logic_vector(6 downto 0)
);
end component;

component SerialControl is 
port(
	Reset, clk, enRX, accept, dFlag, pFlag, RXerror: in std_logic;
	wr, init, DXval: out std_logic
);
end component;

component Compare8 is
port(	
	Data: in std_logic_vector(3 downto 0);
	R: out std_logic
);
end component;

component Compare7 is
port(	
	Data: in std_logic_vector(3 downto 0);
	R: out std_logic
);
end Component;


signal term0, term1, term2, term3, term4 : std_logic;
signal term5 : std_logic_vector(3 downto 0);

begin

SerialControl_U0: SerialControl port map(
	Reset => Reset,
	clk => clk,
	enRX => SS,
	accept => accept,
	dFlag => term0,
	pFlag => term1,
	RXerror => term2,
	wr => term3,
	init => term4,
	DXval => DXval
);

ParityCheck_U0: ParityCheck port map(
	Data => SDX, 
	Init => term4, 
	clk => SCLK,
	err => term2
);

Counter_U0: Counter port map(
	Clear => term4,
	clk => SCLK,
	Q => term5
);

Compare8_U0: Compare8 port map(
	Data => term5,
	R => term1
);


Compare7_U0: Compare7 port map(
	Data => term5,
	R => term0
);

Score_SerialReceiver_ShiftRegister_U0: Score_SerialReceiver_ShiftRegister port map(
	Data => SDX,
	clk => SCLK,
	enableShift => term3,
	Reset => Reset,
	D => D
);


end behavioral;