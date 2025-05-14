library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck is
port(	
	data, init, clk: in std_logic;
	err: out std_logic
);
end ParityCheck;

architecture behavioral of ParityCheck is

component ParityCheck_Counter is
port(	
	init, data, clk: in std_logic;
	err: out std_logic
);
end component;

begin

ParityCheckCounter_U0: ParityCheck_Counter port map(
	init => init, 
	data => data, 
	clk => clk,
	err => err
);

end behavioral;