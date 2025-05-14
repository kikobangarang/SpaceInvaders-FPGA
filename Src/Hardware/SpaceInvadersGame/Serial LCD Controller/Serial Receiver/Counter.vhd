library ieee;
use ieee.std_logic_1164.all;

entity Counter is
port(	
	clear, clk: in std_logic;
	Q: out std_logic_vector(3 downto 0)
);
end Counter;

architecture behavioral of Counter is

component Counter_Adder port(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	CYi : in std_logic;
	S : out std_logic_vector(3 downto 0)
);
end component;

component Counter_Reg port(
	D : in std_logic_vector(3 downto 0);
	CLK : in std_logic;
	E : in std_logic;
	Reset : in std_logic;
	Q : out std_logic_vector(3 downto 0)
);
end component;

signal term0, term1 : std_logic_vector(3 downto 0);

begin

Counter_Adder_U0: Counter_Adder port map(
	A => term0,
	B(3) => '0',
	B(2) => '0',
	B(1) => '0',
	B(0) => '1',
	CYi => '0',
	S => term1
);


Counter_Reg_U0: Counter_Reg port map(
	D => term1,
	clk => clk,
	E => '1',
	Reset => clear,
	Q => term0
);

Q <= term0;

end behavioral;