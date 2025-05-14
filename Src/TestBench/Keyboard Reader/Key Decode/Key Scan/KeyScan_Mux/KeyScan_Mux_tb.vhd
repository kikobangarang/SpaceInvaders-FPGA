library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_Mux_tb is
end KeyScan_Mux_tb;

architecture behavioral of KeyScan_Mux_tb is

component KeyScan_Mux is port(
	Line : in std_logic_vector(3 downto 0);
	S : in std_logic_vector(1 downto 0);
	Y : out std_logic
);
end component;		

-- UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Line_tb : std_logic_vector(3 downto 0);
signal S_tb : std_logic_vector(1 downto 0);
signal Y_tb : std_logic;

begin

-- Unit Under Test
UUT: KeyScan_Mux port map(
	Line => Line_tb,
	S => S_tb,
	Y => Y_tb
);
					
stimulus: process
begin

    Line_tb <= "0000";
    S_tb <= "00";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "01";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "10";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "11";
    wait for MCLK_PERIOD*2;
    
    Line_tb <= "0001";
    S_tb <= "00";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "01";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "10";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "11";
    wait for MCLK_PERIOD*2;
    
    Line_tb <= "0010";
    S_tb <= "00";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "01";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "10";
    wait for MCLK_PERIOD*2;
    
    S_tb <= "11";
    wait for MCLK_PERIOD*2;
	
	Line_tb <= "0011";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "0100";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "0101";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "0110";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "0111";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "1000";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "1001";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "1010";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "1011";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "1100";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "1101";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "1110";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
	Line_tb <= "1111";
	S_tb <= "00";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "01";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "10";
	wait for MCLK_PERIOD*2;
	
	S_tb <= "11";
	wait for MCLK_PERIOD*2;
	
wait;
end process;

end behavioral;