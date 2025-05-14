library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer_tb is 
end RingBuffer_tb;

architecture behavioral of RingBuffer_tb is
    
	component RingBuffer is port(
		DAV, CTS, clk, Reset: in std_logic;
		D: in std_logic_vector(3 downto 0);
		Q: out std_logic_vector(3 downto 0);
		Wreg, DAC: out std_logic
);
end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal Reset_tb, clk_tb, DAV_tb, CTS_tb, Wreg_tb, DAC_tb: std_logic; 
	signal D_tb, Q_tb : std_logic_vector(3 downto 0);

    begin

        --Unit Under Test

        UUT: RingBuffer port map(
			DAV => DAV_tb, 
			CTS => CTS_tb, 
			clk => clk_tb, 
			Reset => Reset_tb,
			D => D_tb,
			Q => Q_tb,
			Wreg => Wreg_tb, 
			DAC => DAC_tb
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



			-- Escrever
			Reset_tb <= '1';
			D_tb <= "1010";
			DAV_tb <= '0';
			CTS_tb <= '0';
			wait for MCLK_PERIOD*2;

			Reset_tb <= '0';
			wait for MCLK_PERIOD*2;

			DAV_tb <= '1';
			wait for MCLK_PERIOD*2;

			DAV_tb <= '0';
			wait for MCLK_PERIOD*2;

			-- Ler
			CTS_tb  <= '1';
			wait for MCLK_PERIOD*4;

			CTS_tb  <= '0';
			wait for MCLK_PERIOD*2;
			
			-- Reset
			Reset_tb <= '1';
			wait for MCLK_PERIOD*2;

          	wait;
          	end process;
			 
end behavioral;