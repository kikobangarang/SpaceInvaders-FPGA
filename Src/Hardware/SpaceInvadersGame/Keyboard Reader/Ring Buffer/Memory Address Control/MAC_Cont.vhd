library ieee;
use ieee.std_logic_1164.all;

entity MAC_Cont is
port(	
	CE, Reset, clk: in std_logic;
	Q: out std_logic_vector(2 downto 0)
);
end MAC_Cont;

architecture behavioral of MAC_Cont is

component MAC_Cont_Adder port(
	A : in std_logic_vector(2 downto 0);
	B : in std_logic_vector(2 downto 0);
	CYi : in std_logic;
	S : out std_logic_vector(2 downto 0)
);
end component;

component MAC_Cont_Reg port(
	D : in std_logic_vector(2 downto 0);
	clk : in std_logic;
	E : in std_logic;
	Reset : in std_logic;
	Q : out std_logic_vector(2 downto 0)
);
end component;

signal term0, term1 : std_logic_vector(2 downto 0);

begin

Adder_0: MAC_Cont_Adder port map(
	A => term0,
	B(2) => '0',
	B(1) => '0',
	B(0) => CE,
	CYi => '0',
	S => term1
);


MAC_Cont_Reg_U0: MAC_Cont_Reg port map(
	D => term1,
	clk => clk,
	E => '1',
	Reset => Reset,
	Q => term0
);

Q <= term0;

end behavioral;