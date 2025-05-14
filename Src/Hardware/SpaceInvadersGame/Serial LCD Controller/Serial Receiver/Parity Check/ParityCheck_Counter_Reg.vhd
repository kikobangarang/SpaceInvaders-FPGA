library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck_Counter_Reg is
port(	
	D : in std_logic_vector(3 downto 0);
	clk : in std_logic;
	E : in std_logic;
	Reset : in std_logic;
	Q : out std_logic_vector(3 downto 0)
);
end ParityCheck_Counter_Reg;

architecture behavioral of ParityCheck_Counter_Reg is

component ParityCheck_Counter_Reg_FFD port(	
		clk : in std_logic;
		Reset : in STD_LOGIC;
		Set : in std_logic;
		D : IN STD_LOGIC;
		EN : IN STD_LOGIC;
		Q : out std_logic
);
end component;

begin

ParityCheck_Counter_Reg_FFD_U0: ParityCheck_Counter_Reg_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => D(3),
		EN => E,
		Q => Q(3)
);

ParityCheck_Counter_Reg_FFD_U1: ParityCheck_Counter_Reg_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => D(2),
		EN => E,
		Q => Q(2)
);

ParityCheck_Counter_Reg_FFD_U2: ParityCheck_Counter_Reg_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => D(1),
		EN => E,
		Q => Q(1)
);

ParityCheck_Counter_Reg_FFD_U3: ParityCheck_Counter_Reg_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => D(0),
		EN => E,
		Q => Q(0)
);

end behavioral;