library ieee;
use ieee.std_logic_1164.all;

entity MAC_Cont_Reg is
port(	
	D : in std_logic_vector(2 downto 0);
	clk : in std_logic;
	E : in std_logic;
	Reset : in std_logic;
	Q : out std_logic_vector(2 downto 0)
);
end MAC_Cont_Reg;

architecture behavioral of MAC_Cont_Reg is

component MAC_FFD port(	
	clk : in std_logic;
	Reset : in std_logic;
	Set : in std_logic;
	D : in std_logic;
	EN : in std_logic;
	Q : out std_logic
);
end component;

begin

FFD_U0: MAC_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => D(2),
		EN => E,
		Q => Q(2)
);

FFD_U1: MAC_FFD port map(
		clk => clk,
		RESET => Reset,
		SET => '0',
		D => D(1),
		EN => E,
		Q => Q(1)
);

FFD_U2: MAC_FFD port map(
		clk => clk,
		Reset => Reset,
		Set => '0',
		D => D(0),
		EN => E,
		Q => Q(0)
);

end behavioral;