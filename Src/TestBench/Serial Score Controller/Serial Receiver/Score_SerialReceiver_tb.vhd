library ieee;
use ieee.std_logic_1164.all;

entity Score_SerialReceiver_tb is 
end Score_SerialReceiver_tb;

architecture behavioral of Score_SerialReceiver_tb is
    
component Score_SerialReceiver is
port(
	SDX, SCLK, SS, accept, Reset, clk: in std_logic;
	D: out std_logic_vector(6 downto 0);
	DXval: out std_logic
);
end component;
   
-- UUT Signals
constant MCLK_PERIOD : time := 20ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal SDX_tb, accept_tb, SCLK_tb, SS_tb, Reset_tb, clk_tb, WrL_tb: std_logic;
signal Dout_tb: std_logic_vector(6 downto 0);


begin

	--Unit Under Test

      UUT: Score_SerialReceiver port map(
				SDX => SDX_tb, 
				SCLK => SCLK_tb, 
				SS => SS_tb, 
				Reset => Reset_tb, 
				accept => accept_tb,
				clk => clk_tb, 
				DXval => WrL_tb,
				D => Dout_tb
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

					accept_tb <= '0';
					SDX_tb <= '0';
					SS_tb <= '1';
					SCLK_tb <= '0';
					Reset_tb <= '1';
					wait for MCLK_PERIOD;

					Reset_tb <= '0';
					wait for MCLK_PERIOD;

					-- SS ATIVO
					SS_tb <= '0';
					wait for MCLK_PERIOD;
					
					
					-- ESCREVER 011 0000

					-- 0
					SDX_tb <= '0';
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
					wait for MCLK_PERIOD;
					SCLK_tb <= '1';
					wait for MCLK_PERIOD;
					SCLK_tb <= '0';
					wait for MCLK_PERIOD;
									

					-- SS inativo
					SS_tb <= '1';
					wait for MCLK_PERIOD;
					accept_tb <= '1';
					wait for MCLK_PERIOD;
					accept_tb <= '0';

------------------------------------------------------------------

					
					-- SS ATIVO
					SS_tb <= '0';
					wait for MCLK_PERIOD;
					
					
					-- ESCREVER 000 0010

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
									

					-- SS inativo
					SS_tb <= '1';
					wait for MCLK_PERIOD;
															accept_tb <= '1';
					wait for MCLK_PERIOD;
					accept_tb <= '0';



          wait;
          end process;
			 
end behavioral;