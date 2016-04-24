library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sof_filter is
    Port ( DIRdy : out  STD_LOGIC;
           DI : out  STD_LOGIC_VECTOR(7 downto 0);
			  should_block : out  STD_LOGIC;
			  new_line : in  STD_LOGIC;
           received : in  STD_LOGIC;
           rx_byte : in  STD_LOGIC_VECTOR(7 downto 0);
           clk : in  STD_LOGIC);
end sof_filter;

architecture Behavioral of sof_filter is

signal i_should_block : std_logic := '0';
signal first_packet : std_logic := '0';
signal last_newline : std_logic := '0';

begin

	p1 : process(clk, received, new_line, first_packet)
		begin
		if(rising_edge(clk)) then
			if(received = '1' and first_packet = '1') then
				first_packet <= '0';
			elsif(last_newline = '1' and new_line = '0') then
				first_packet <= '1';
			end if;
			last_newline <= new_line;
		end if;
	end process p1;

	p2 : process(clk, first_packet, rx_byte)
		begin
		if(rising_edge(clk) and first_packet = '1') then
			if(rx_byte = X"A5") then
				i_should_block <= '1';
			else
				i_should_block <= '0';
			end if;
		end if;
	end process p2;
	
	p3 : process(clk, received, i_should_block)
		begin
		if(rising_edge(clk)) then
			DIRdy <= received and (not i_should_block);
		end if;
	end process p3;
	
	DI <= rx_byte;
	should_block <= i_should_block;

end Behavioral;
