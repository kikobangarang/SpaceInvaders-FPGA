library ieee;
use ieee.std_logic_1164.all;

entity KeyboardReader_tb is 
end KeyboardReader_tb;

architecture behavioral of KeyboardReader_tb is
    
	component KeyboardReader is port(
		Linhas : in std_logic_vector(3 downto 0);
		Reset, clk, ACK : in std_logic;
		Dval : out std_logic;
		Col : out std_logic_vector(2 downto 0);
		Q : out std_logic_vector(3 downto 0)
);
end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20 ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal Reset_tb, clk_tb, ACK_tb, Dval_tb : std_logic; 
	signal Line_tb, Q_tb : std_logic_vector(3 downto 0);
	signal Col_tb: std_logic_vector(2 downto 0);


    begin

        --Unit Under Test

        UUT: KeyboardReader port map(
			Linhas => Line_tb,
			Reset => Reset_tb, 
			clk => clk_tb, 
			ACK => ACK_tb,
			Dval => Dval_tb,
			Col => Col_tb,
			Q => Q_tb
        );

        clk_gen : process
        begin
	        clk_tb <= '0';
	        wait for MCLK_HALF_PERIOD;

	        clk_tb <= '1';
	        wait for MCLK_HALF_PERIOD;

        end process;

		
        stimulus: process
        begin
			
			Reset_tb <= '1';
			wait for MCLK_PERIOD;
			Reset_tb <= '0';
			Line_tb <= "1111";
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;

			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;


			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;

			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;

			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;

			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1110";
			wait for MCLK_PERIOD*20;
			Line_tb <= "1111";
			wait for MCLK_PERIOD*60;

			ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;
ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;ACK_tb <= '1';
			wait for MCLK_PERIOD*10;
			ACK_tb <= '0';
			wait for MCLK_PERIOD*10;

          	wait;
          	end process;
			 
end behavioral;