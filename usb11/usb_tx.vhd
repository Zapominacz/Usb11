library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity usb_tx is
    port ( d_p : out  STD_LOGIC; -- D+
           d_m : out  STD_LOGIC; -- D-
           clk_60mhz : in  STD_LOGIC; --clock 5x USB 1.1 (12 MHz)
           busy : out  STD_LOGIC; -- is operation occurs
			  sent : out  STD_LOGIC; -- byte received pulse
           tx_byte :in  std_logic_vector(7 downto 0));
end usb_tx;

architecture behavioral of usb_tx is

	-- wave synchronization
	signal wave_length_counter : std_logic_vector(2 downto 0) := (others => '0');
	-- range (0 - 4), used to determine position in usb signal
	
	-- NRZI encoding
	signal decoded_bit : std_logic;
	signal last_d_p : std_logic;

begin

	nrzi_encoder : process(clk_60mhz, d_p)
		begin
		if (rising_edge(clk_60mhz) and wave_length_counter = 4) then
			if(decoded_bit = '0') then
				last_dp <= not last_dp;
			else 
				last_d_p <= last_dp;
			end if;
		end if;
	end process nrzi_encoder;
	

end behavioral;

