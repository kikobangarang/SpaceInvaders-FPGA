library ieee;
use ieee.std_logic_1164.all;

entity Key_Decode_tb is
end Key_Decode_tb;

architecture behavioral of Key_Decode_tb is

component KeyDecode is
port(
		CLK : in std_logic;
        Linhas : in std_logic_vector(3 downto 0);
		Kack : in std_logic;
		Reset : in std_logic;
		Kval : out std_logic;
		Col : out std_logic_vector(2 downto 0);
        K : out std_logic_vector(3 downto 0)
);
end component;



signal kack_tb, kval_tb, clk_tb, reset_tb : std_logic;
signal linha_tb, K03_tb : std_logic_vector(3 downto 0);
signal coluna_tb:std_logic_vector(2 downto 0);

-- UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

begin

-- Unit Under Test
UUT: KeyDecode 
		port map(
		CLK => CLK_tb,
        Linhas => Linha_tb,
		Kack => Kack_tb,
		Reset => Reset_tb,
		Kval => Kval_tb,
		Col => Coluna_tb,
        K => K03_tb
);

clk_gen : process
begin
		clk_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		clk_tb <= '1';
		wait for MCLK_HALF_PERIOD;
end process;





					
	
-- Vaiaveis manipulaveis:
-- clock, linha, reset, Kack.

stimulus: process 
begin
	
	kack_tb <= '0';
	reset_tb <= '1';
	linha_tb(0) <= '1';
	linha_tb(1) <= '1';
	linha_tb(2) <= '1';
	linha_tb(3) <= '1';
	
	WAIT for MCLK_PERIOD;
	reset_tb <= '0';
	WAIT for MCLK_PERIOD*5;

	-- verificar 5
	linha_tb(0) <= '1';
	linha_tb(1) <= '1';
	linha_tb(2) <= '0';
	linha_tb(3) <= '1';

	WAIT for MCLK_PERIOD*5;
	
	Kack_tb <= '1';
	
	wait for MCLK_PERIOD;
	kack_tb <= '0';
	wait for MCLK_PERIOD*5;
	linha_tb(0) <= '1';
	linha_tb(1) <= '1';
	linha_tb(2) <= '1';
	linha_tb(3) <= '1';
	wait for MCLK_PERIOD*5;
	
	kack_tb <= '1';
	wait for MCLK_PERIOD*5;
	
	
	Kack_tb <= '0';
	reset_tb <= '1';
	
wait;
end process;

end architecture;