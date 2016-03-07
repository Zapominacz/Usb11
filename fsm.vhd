library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity fsm is
    Port ( DP : in  STD_LOGIC; -- D+
           DM : in  STD_LOGIC; -- D-
           Clk_60Mhz : in  STD_LOGIC; --clock 5x USB 1.1 (12 MHz)
           synced : out  STD_LOGIC; -- is synced
           data : out  std_logic_vector(63 downto 0)); -- output bit from USB
end fsm;

architecture Behavioral of fsm is

	signal wave_counter : std_logic_vector(2 downto 0) := "111";
	-- 111 not initialized, 110 - error, need resync
	signal last_dp : std_logic; 
	-- last saved DP position
	signal sync_pattern : std_logic_vector(7 downto 0) := X"80";
	-- sync pattern defined in USB 1.1 specification
	signal sync_position : std_logic_vector(2 downto 0);
	-- current index in sync pattern
	signal is_synced : std_logic;
	-- indicates is data is synced when is 1
	signal bit_counter : std_logic_vector(5 downto 0);
	-- indicates how many bits was sent next
	signal bits_vector: std_logic_vector (63 downto 0);
	-- vector for saving first 64 bits after sync
	signal buffer_filled: std_logic;
	-- checks if vector is filled
	
begin
	wave_listener : process (Clk_60Mhz, DP) 
	begin
		if(rising_edge(Clk_60Mhz)) then
			if(wave_counter(2) = '1') then --init lub inny powód np. osi¹gniecie 4
				wave_counter <= (others => '0'); --zerowanie licznika
			end if;
			if(wave_counter > "000" and wave_counter < "110") then 
			--sprawdzanie czy nie ma przek³amañ (z³e taktowanie)
				if(last_dp /= DP) then
					wave_counter <= "110"; -- error;
				end if;
			else
				last_dp <= DP; --zapisanie ostatniego
			end if;
		end if;
	end process wave_listener;
	
	sync_listener : process (Clk_60Mhz) 
	begin
		if(rising_edge(Clk_60Mhz) and is_synced = '0') then
			if(wave_counter(2 downto 1) = "11") then --not init or error
				sync_position <= (others => '0');
				is_synced <= '0';
			elsif(wave_counter = "010") then -- in the middle of wave 
				if(sync_pattern(to_integer(unsigned(sync_position))) = DP) then
					if(sync_position = "111") then 
						is_synced <= '1'; -- gdy zgodna na ostaniej pozycji: mówimy ¿e jest ok i zerujemy licznik
					end if;
					sync_position <= sync_position + 1; -- gdy zgodna - inkrementujemy
				else -- gdy nie jest zgodna - reset
					sync_position <= (others => '0');
				end if;
			end if;
		end if;
	end process sync_listener;
	

	register_process : process(Clk_60Mhz)
	begin
		if(rising_edge(Clk_60Mhz)) then
			if(wave_counter(2 downto 1) = "11") then --init lub error - czyœcimy
				bit_counter <= (others => '0');
				bits_vector <= (others => '0');
				buffer_filled <= '0';
			elsif(buffer_filled = '0' and wave_counter = "010" and is_synced = '1') then
				bits_vector <= bits_vector(62 downto 0) & DP; --gdy jest sync i jesteœmy  w œrodku fali, dodajemy bit do data
				bit_counter <= bit_counter + 1;
				if(bit_counter = "111111") then
					buffer_filled <= '1';
				end if;
			end if;
		end if;
	end process register_process;
	
	-- out states
	data <= bits_vector;
	synced <= is_synced;
end Behavioral;

