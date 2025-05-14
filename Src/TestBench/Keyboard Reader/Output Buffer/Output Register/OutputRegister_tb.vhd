library ieee;
use ieee.std_logic_1164.all;

entity OutputRegister_tb is 
end OutputRegister_tb;

architecture behavioral of OutputRegister_tb is
    
	component OutputRegister is port(	
		D : in std_logic_vector(3 downto 0);
		clk : in std_logic;
		E : in std_logic;
		Reset : in std_logic;
		Q : out std_logic_vector(3 downto 0)
);
end component;
   
    -- UUT Signals
    constant MCLK_PERIOD : time := 20ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

	signal D_tb, Q_tb : std_logic_vector(3 downto 0);
	signal clk_tb, E_tb, Reset_tb : std_logic; 


    begin

        --Unit Under Test

        UUT: OutputRegister port map(
			    D => D_tb,
				clk => clk_tb,
				E => E_tb,
				Reset => Reset_tb,
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

					-- Verificar palavra "1001" e dar reset apos confirmacao

					D_tb <= "0000";
					E_tb <= '0';
					Reset_tb <= '1';
					wait for MCLK_PERIOD*2;

					Reset_tb <= '0';
					wait for MCLK_PERIOD*2;
					
					E_tb <= '1';
					D_tb <= "1001";
					wait for MCLK_PERIOD*4;

					Reset_tb <= '1';
					wait for MCLK_PERIOD;


          wait;
          end process;
			 
end behavioral;