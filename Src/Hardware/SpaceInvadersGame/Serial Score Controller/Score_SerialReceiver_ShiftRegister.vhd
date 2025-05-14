library ieee;
use ieee.std_logic_1164.all;

entity Score_SerialReceiver_ShiftRegister is
port(	
	data : in std_logic;
	clk : in std_logic;
	enableShift : in std_logic;
	Reset : in std_logic;
	D : out std_logic_vector(6 downto 0)
);
end Score_SerialReceiver_ShiftRegister;

architecture behavioral of Score_SerialReceiver_ShiftRegister is



signal reg: std_logic_vector(6 downto 0);

begin

process(clk)
    begin
            if enableShift = '1' and rising_edge(clk) then
                reg <= data & reg(6 downto 1);
            end if;
    end process;

D <= reg;


end behavioral;