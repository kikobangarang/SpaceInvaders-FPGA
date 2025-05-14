library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer is
port(
	DAV, CTS, clk, Reset: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0);
	Wreg, DAC: out std_logic
);
end RingBuffer;

architecture behavioral of RingBuffer is

component RingBufferControl port(
	Reset, clk, DAV, CTS, full, empty: in std_logic;
	Wr, selPG, Wreg, DAC, incPut, incGet: out std_logic
);
end component;

component MemoryAddressControl port(
	putget, incPut, incGet, Reset, clk: in std_logic;
	full, empty: out std_logic;
	Address: out std_logic_vector(2 downto 0)
);
end component;

component RAM 
	generic(
		ADDRESS_WIDTH : natural := 3;
		DATA_WIDTH : natural := 4
	);
	port(
		address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
		wr: in std_logic;
		din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
		dout: out std_logic_vector(DATA_WIDTH - 1 downto 0)
	);
end component;

signal term0, term1, term2, term3, term4, term5: std_logic;
signal term6: std_logic_vector(2 downto 0);
begin

RingBufferControl_U0: RingBufferControl port map(
	
	Reset => Reset, 
	clk => clk, 
	DAV => DAV, 
	CTS => CTS, 
	full => term0, 
	empty => term1,
	Wr => term2, 
	selPG => term3,  
	Wreg => Wreg, 
	DAC => DAC, 
	incPut => term4, 
	incGet => term5
);

MemoryAddressControl_U0: MemoryAddressControl port map(
	putget => term3, 
	incPut => term4, 
	incGet => term5, 
	Reset => Reset, 
	clk => clk,
	full => term0, 
	empty => term1,
	Address => term6
);

RAM_U0: RAM port map(
	address => term6,
	wr => term2,
	din => D,
	dout => Q
);

end behavioral;