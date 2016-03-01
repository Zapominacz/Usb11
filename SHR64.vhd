library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SHR64 is
    Port ( Din : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  CE : in STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR ( 63 downto 0) );
end SHR64;

architecture Behavioral of SHR64 is
	signal iQ : std_logic_vector (63 downto 0);
begin
	Q <= iQ;
	process(Clk)
	begin
		if(rising_edge(Clk) and CE = '1') then
			iQ(63 downto 0) <= iQ(62 downto 0) & Din;
		end if;
	end process;

end Behavioral;

