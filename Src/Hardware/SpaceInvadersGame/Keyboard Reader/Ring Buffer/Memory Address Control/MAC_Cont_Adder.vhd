LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity MAC_Cont_Adder is
port(
	A : in std_logic_vector(2 downto 0);
	B : in std_logic_vector(2 downto 0);
	CYi : in std_logic;
	S : out std_logic_vector(2 downto 0)
);
end MAC_Cont_Adder;

architecture behavioral of MAC_Cont_Adder is

component MAC_Cont_FullAdder port(
	A : in std_logic;
	B : in std_logic;
	CYi : in std_logic;
	R : out std_logic;
	CyOut: out std_logic
);
end component;

signal term: std_logic_vector(2 downto 0);

begin 

FullAdder_U0: MAC_Cont_FullAdder port map(
	A => A(0),
	B => B(0),
	CYi => CYi,
	R => S(0),
	CyOut => term(0)
);

FullAdder_U1: MAC_Cont_FullAdder port map(
	A=> A(1),
	B=> B(1),
	CYi=> term(0),
	R=> S(1),
	CyOut=> term(1)
);

FullAdder_U2: MAC_Cont_FullAdder port map(
	A=> A(2),
	B=> B(2),
	CYi=> term(1),
	R=> S(2),
	CyOut=> term(2)
);

end behavioral;