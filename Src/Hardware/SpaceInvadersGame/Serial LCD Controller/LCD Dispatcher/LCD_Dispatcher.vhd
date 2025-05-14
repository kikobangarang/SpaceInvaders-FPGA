library ieee;
use ieee.std_logic_1164.all;

entity LCD_Dispatcher is
port(	
	Din: in std_logic_vector(8 downto 0);
	Dval, clk, Reset: in std_logic;
	WrL, done: out std_logic;
	Dout: out std_logic_vector(8 downto 0)
);
end LCD_Dispatcher;

architecture behavioral of LCD_Dispatcher is

type STATE_TYPE is (STATE_WAITING, STATE_DATA, STATE_ENABLE, STATE_DONE, STATE_WAIT1, STATE_WAIT2, STATE_WAIT3, STATE_WAIT4, STATE_WAIT5, STATE_WAIT6, STATE_WAIT7, STATE_WAIT8, STATE_WAIT9, STATE_WAIT10, STATE_WAIT11);


signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flop's
CurrentState <= STATE_WAITING when Reset = '1' else NextState when rising_edge(clk);

-- Generate Next State
GenerateNextState:
process (CurrentState,Dval, Din)
	begin
		case CurrentState is
			
			when STATE_WAITING => if (Dval = '1') then
				NextState <= STATE_DATA;
				else NextState <= STATE_WAITING;
				end if;
				
			when STATE_DATA => NextState <= STATE_ENABLE;
		
			when STATE_ENABLE => NextState <= STATE_WAIT1;
			
when STATE_WAIT1 => NextState <= STATE_WAIT2;

when STATE_WAIT2 => NextState <= STATE_WAIT3;

when STATE_WAIT3 => NextState <= STATE_WAIT4;

when STATE_WAIT4 => NextState <= STATE_WAIT5;

when STATE_WAIT5 => NextState <= STATE_WAIT6;

when STATE_WAIT6 => NextState <= STATE_WAIT7;

when STATE_WAIT7 => NextState <= STATE_WAIT8;

when STATE_WAIT8 => NextState <= STATE_WAIT9;

when STATE_WAIT9 => NextState <= STATE_WAIT10;

when STATE_WAIt10 => NextState <= STATE_WAIT11;

when STATE_WAIT11 => NextState <= STATE_DONE;

																								
			
			when STATE_DONE => if(Dval = '0') then
				NextState <= STATE_WAITING;
				else NextState <= STATE_DONE;
				end if;
	end case;
end process;

--Generate Outputs

Dout <= Din;
WrL <= '0' when (CurrentState = STATE_DONE OR CurrentState = STATE_Data OR CurrentState = STATE_WAITING) else '1';
Done <= '1' when (CurrentState = STATE_DONE) else '0';

end behavioral;