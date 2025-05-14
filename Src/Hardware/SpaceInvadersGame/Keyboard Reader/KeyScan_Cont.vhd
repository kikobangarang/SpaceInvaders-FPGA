library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_Cont is
port(	
	CE, Reset, clk: in std_logic;
	Q: out std_logic_vector(3 downto 0)
);
end KeyScan_Cont;

architecture behavioral of KeyScan_Cont is

component KeyScan_Cont_Adder port(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	CYi : in std_logic;
	S : out std_logic_vector(3 downto 0);
	C4: out std_logic
);
end component;

component KeyScan_Cont_Reg port(
	D : in std_logic_vector(3 downto 0);
	clk : in std_logic;
	E : in std_logic;
	Reset : in std_logic;
	Q : out std_logic_vector(3 downto 0)
);
end component;

signal term0, term1 : std_logic_vector(3 downto 0);


begin

Adder_U0: KeyScan_Cont_Adder port map(
	A => term0,
	B(3) => '0',
	B(2) => '0',
	B(1) => '0',
	B(0) => CE,
	CYi => '0',
	S => term1
);


Reg_U0: KeyScan_Cont_Reg port map(
	D => term1,
	clk => clk,
	E => '1',
	Reset => Reset,
	Q => term0
);

Q <= term0;

end behavioral;