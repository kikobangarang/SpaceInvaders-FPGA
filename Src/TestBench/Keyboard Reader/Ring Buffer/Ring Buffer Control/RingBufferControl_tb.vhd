library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl_tb is 
end RingBufferControl_tb;

architecture behavioral of RingBufferControl_tb is
    
	component RingBufferControl is port(
		Reset, clk, DAV, CTS, full, empty: in std_logic;
		Wr, selPG, Wreg, DAC, incPut, incGet: out std_logic
);
end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal Reset_tb, clk_tb, DAV_tb,  CTS_tb, full_tb, empty_tb, Wr_tb, selPG_tb, Wreg_tb, DAC_tb, incPut_tb, incGet_tb: std_logic; 

    begin

        --Unit Under Test

        UUT: RingBufferControl port map(
			    Reset => Reset_tb, 
				clk => clk_tb, 
				DAV => DAV_tb, 
				CTS => CTS_tb, 
				full => full_tb, 
				empty => empty_tb,
				Wr => Wr_tb, 
				selPG => selPG_tb, 
				Wreg => Wreg_tb, 
				DAC => DAC_tb, 
				incPut => incPut_tb, 
				incGet => incGet_tb
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
			DAV_tb <= '0';
			CTS_tb <= '0';
			full_tb <= '0';
			empty_tb <= '1';
			wait for MCLK_PERIOD*2;

			Reset_tb <= '0';
			wait for MCLK_PERIOD*2;

			DAV_tb <= '1';
			wait for MCLK_PERIOD*2;

			DAV_tb <= '0';
			wait for MCLK_PERIOD*2;



			-- Ler

			empty_tb  <= '0';
			wait for MCLK_PERIOD*2;

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