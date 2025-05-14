library ieee;
use ieee.std_logic_1164.all;

entity BufferControl is
port(
	Reset, clk, Load, ACK: in std_logic;
	OBfree, Wreg, Dval: out std_logic
);
end BufferControl;

architecture behavioral of BufferControl is

type STATE_TYPE is (STATE_WAIT_LOAD, STATE_REGISTER, STATE_WAIT_ACK, STATE_WAIT_NOT_LOAD);

signal CurrentState, NextState: STATE_TYPE;

begin

-- Flip-Flop's
CurrentState <= STATE_WAIT_LOAD when Reset = '1' else NextState when rising_edge(clk);

-- Generate Next State
GenerateNextState:
process (CurrentState, Load, ACK)
	begin
		case CurrentState is
			when STATE_WAIT_LOAD => if(Load = '1') then NextState <= STATE_REGISTER;
				else NextState <= STATE_WAIT_LOAD;
					end if;
					
			when STATE_REGISTER => NextState <= STATE_WAIT_ACK;

					
			when STATE_WAIT_ACK => if(ACK = '1') then NextState <= STATE_WAIT_NOT_LOAD;
				else NextState <= STATE_WAIT_ACK;
					end if;
					
			when STATE_WAIT_NOT_LOAD => if(ACK = '0') then NextState <= STATE_WAIT_LOAD;
				else NextState <= STATE_WAIT_NOT_LOAD;
					end if;
					
		end case;
	end process;

OBfree <= '1' when (CurrentState = STATE_WAIT_LOAD) else '0';
Dval <= '1' when (CurrentState = STATE_WAIT_ACK) else '0';
Wreg <= '1' when (CurrentState = STATE_REGISTER) else '0';

end behavioral;