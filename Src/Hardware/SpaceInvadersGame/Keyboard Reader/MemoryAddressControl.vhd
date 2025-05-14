library ieee;
use ieee.std_logic_1164.all;

entity MemoryAddressControl is
port(
	putget, incPut, incGet, Reset, clk: in std_logic;
	full, empty: out std_logic;
	Address: out std_logic_vector(2 downto 0)
);
end MemoryAddressControl;
	

architecture behavioral of MemoryAddressControl is

component MAC_Cont port(
	CE, Reset, clk: in std_logic;
	Q: out std_logic_vector(2 downto 0)
);
end component;

component MAC_Mux port(
	incPutOut, incGetOut: in std_logic_vector(2 downto 0);
	putGet: in std_logic;
	Address: out std_logic_vector(2 downto 0)
);
end component;

component MAC_Compare port(
	incPutOut, incGetOut: in std_logic_vector(2 downto 0);
	Q: out std_logic
);
end component;

component MAC_FFD port(
	clk : in std_logic;
	Reset : in STD_LOGIC;
	Set : in std_logic;
	D : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	Q : out std_logic
);
end component;


signal term0, term1: std_logic_vector(2 downto 0);
signal term2, term3, En_OR: std_logic;

begin

En_OR <= incget or incput;

MAC_Cont_U0: MAC_Cont port map(
	CE => incPut, 
	Reset => Reset, 
	clk => clk,
	Q => term0
);

MAC_Cont_U1: MAC_Cont port map(
	CE => incGet, 
	Reset => Reset, 
	clk => clk,
	Q => term1
);

MAC_Mux_U0: MAC_Mux port map(
	incPutOut => term0, 
	incGetOut=> term1,
	putGet => putget,
	Address => Address
);

MAC_Compare_U0: MAC_Compare port map(
	incPutOut => term0,
	incGetOut => term1,
	Q => term2
);

MAC_FFD_U0: MAC_FFD port map(
	CLK => CLK,
	RESET => Reset,
	SET => '0',
	D => putget,
	EN => En_OR,
	Q => term3
);

full <= term2 and term3;
empty <= term2 and not term3;

end behavioral;