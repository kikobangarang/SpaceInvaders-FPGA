LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Counter_Adder is
port(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	CYi : in std_logic;
	S : out std_logic_vector(3 downto 0)
);
end Counter_Adder;

architecture behavioral of Counter_Adder is

component Counter_Adder_FullAdder port(
	A : in std_logic;
	B : in std_logic;
	CYi : in std_logic;
	R : out std_logic;
	CyOut: out std_logic
);
end component;

signal term: std_logic_vector(3 downto 0);

begin 

Counter_Adder_FullAdder_U0: Counter_Adder_FullAdder port map(
	A => A(0),
	B => B(0),
	CYi => CYi,
	R => S(0),
	CyOut => term(0)
);

Counter_Adder_FullAdder_U1: Counter_Adder_FullAdder port map(
	A => A(1),
	B => B(1),
	CYi => term(0),
	R => S(1),
	CyOut => term(1)
);

Counter_Adder_FullAdder_U2: Counter_Adder_FullAdder port map(
	A => A(2),
	B => B(2),
	CYi => term(1),
	R => S(2),
	CyOut => term(2)
);

Counter_Adder_FullAdder_U3: Counter_Adder_FullAdder port map(
	A => A(3),
	B => B(3),
	CYi => term(2),
	R => S(3),
	CyOut => term(3)
);
end behavioral;