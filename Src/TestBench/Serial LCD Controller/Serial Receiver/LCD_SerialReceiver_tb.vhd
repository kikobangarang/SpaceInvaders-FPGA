library ieee;
use ieee.std_logic_1164.all;

entity LCD_SerialReceiver_tb is 
end LCD_SerialReceiver_tb;

architecture behavioral of LCD_SerialReceiver_tb is
    component SerialLCDController is port(
    	SDX, SCLK, SS, Reset, clk: in std_logic;
		Dout: out std_logic_vector(8 downto 0);
		wrl: out std_logic
	);
	end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal SDX_tb, SCLK_tb, SS_tb, accept_tb, Reset_tb, clk_tb: std_logic;
	signal D_tb: std_logic_vector(8 downto 0);
	signal wrl_tb: std_logic;


    begin

        --Unit Under Test

        UUT:SerialLCDController port map(
			    SDX => SDX_tb, 
				SCLK => SCLK_tb, 
				SS => SS_tb, 
				Reset => Reset_tb,
				clk => clk_tb,
				Dout => D_tb,
				wrl  => wrl_tb
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

					
					SDX_tb <= '0';
					SS_tb <= '1';
					SCLK_tb <= '0';
					wait for MCLK_PERIOD*2;

					SS_tb <= '0';
					wait for MCLK_PERIOD*2;
					
					-- Palavra a ser enviada = 1110100101

					-- 1
					SDX_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
					
					-- 1
					SDX_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
					
					-- 1
					SDX_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
					
					-- 0
					SDX_tb <= '0';
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
					
					-- 1
					SDX_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
					
					-- 0
					SDX_tb <= '0';
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
					
					-- 0
					SDX_tb <= '0';
					wait for MCLK_PERIOd;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
					
					-- 1
					SDX_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
					
					-- 0
					SDX_tb <= '0';
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;





					-- 1
					SDX_tb <= '1';
					wait for MCLK_PERIOD*2;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD*2;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD*2;

					SS_tb <= '1';
					wait for MCLK_PERIOD*2;

					
          wait;
          end process;
			 
end behavioral;