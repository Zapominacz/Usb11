library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity newline_fsm is
    Port ( 	received : in std_logic;
				clk : in std_logic;
				busy : in std_logic;
				newline : out  STD_LOGIC
				);
end newline_fsm;

architecture Behavioral of newline_fsm is

signal last_received : std_logic := '1';
signal notify : std_logic := '0';
signal i_newline : std_logic := '0';

begin

	p2 : process(clk, received)
		begin
		if(rising_edge(clk)) then
			last_received <= received;
		end if;
	end process p2;
	
	p3 : process(clk, received)
		begin
		if(rising_edge(clk)) then
			notify <= (not i_newline) and ((not received) and last_received);
		end if;
	end process p3;

	p1 : process(clk, received)
		begin
		if(rising_edge(clk)) then
			i_newline <= (not i_newline) and (notify and (not busy));
		end if;
	end process p1;
	
	newline <= i_newline;

end Behavioral;

