library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer is
port(	
	D : in std_logic_vector(3 downto 0);
	Load, Reset, ACK, clk: in std_logic;
	Q : out std_logic_vector(3 downto 0);
	OBfree, Dval : out std_logic
);
end OutputBuffer;

architecture behavioral of OutputBuffer is

component OutputRegister is
port(	
	D : in std_logic_vector(3 downto 0);
	clk : in std_logic;
	E : in std_logic;
	Reset : in std_logic;
	Q : out std_logic_vector(3 downto 0)
);
end component;

component BufferControl is
port(
	Reset, clk, Load, ACK: in std_logic;
	OBfree, Wreg, Dval: out std_logic
);
end component;

signal term0: std_logic;

begin 

BufferControl_U0: BufferControl port map(
	Reset => Reset, 
	clk => clk, 
	Load => Load, 
	ACK => ACK,
	OBfree => OBfree, 
	Wreg => term0, 
	Dval => Dval
);

OutputRegister_U0: OutputRegister port map(
	D => D,
	clk => term0,
	E => '1',
	Reset => Reset,
	Q => Q
);

end behavioral;