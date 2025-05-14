library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck_Counter is
port(	
	init, data, clk: in std_logic;
	err: out std_logic
);
end ParityCheck_Counter;

architecture behavioral of ParityCheck_Counter is

component ParityCheck_Counter_Adder port(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	CYi : in std_logic;
	S : out std_logic_vector(3 downto 0);
	C4: out std_logic
);
end component;

component ParityCheck_Counter_Reg port(
	D : in std_logic_vector(3 downto 0);
	clk : in std_logic;
	E : in std_logic;
	Reset : in std_logic;
	Q : out std_logic_vector(3 downto 0)
);
end component;

signal term0, term1 : std_logic_vector(3 downto 0);

begin

ParityCheck_Counter_Adder_U0: ParityCheck_Counter_Adder port map(
	A => term0,
	B(3) => '0',
	B(2) => '0',
	B(1) => '0',
	B(0) => data,
	CYi => '0',
	S => term1
);

ParityCheck_Counter_Reg_U0: ParityCheck_Counter_Reg port map(
	D => term1,
	clk => clk,
	E => '1',
	Reset => init,
	Q => term0
);

err <= term0(0);

end behavioral;