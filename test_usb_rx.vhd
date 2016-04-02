LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_usb_rx IS
END test_usb_rx;
 
ARCHITECTURE behavior OF test_usb_rx IS 

    COMPONENT usb_rx
    port ( d_p : in  STD_LOGIC;
           d_m : in  STD_LOGIC;
           clk_60mhz : in  STD_LOGIC;
           busy : out  STD_LOGIC;
			  received : out  STD_LOGIC;
           rx_byte : out  std_logic_vector(7 downto 0));
    END COMPONENT;
    
   --Inputs
   signal d_p : std_logic := '0';
   signal d_m : std_logic := '1';
   signal clk_60mhz : std_logic := '1';

 	--Outputs
   signal received : std_logic;
	signal busy : std_logic;
   signal rx_byte : std_logic_vector(7 downto 0);

	constant FREQUENCY : REAL := (60.0 * 1000.0 * 1000.0); 
	constant PEROID : TIME := 1 sec / FREQUENCY;
	constant HALF_PEROID : TIME := PEROID / 2;
	constant QUARTER_PEROID : TIME := PEROID / 4;
 
	constant SYNC_PATTERN : std_logic_vector(7 downto 0) := "01010100";
	constant INPUT_PATTERN : std_logic_vector(31 downto 0) := "11111111000000001111111101010100";
	--zawiera SYNC_PATTERN
	constant INPUT_DATA : std_logic_vector(23 downto 0) := X"6C3EEF"; --A5DE67
	
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: usb_rx PORT MAP (
          d_p => d_p,
          d_m => d_m,
          clk_60mhz => clk_60mhz,
          received => received,
			 busy => busy,
          rx_byte => rx_byte
        );

	clk_60mhz <= not clk_60mhz after HALF_PEROID;
	
   -- Simulation process
   simulation: process	
		begin
		d_p <= '1';
		d_m <= '0';
		wait for PEROID * 3; -- padding
		--sync pattern
		l1 : for i in 7 downto 0 loop
			d_p <= SYNC_PATTERN(i);
			d_m <= not SYNC_PATTERN(i);
			l2 : for j in 4 downto 0 loop
				wait for PEROID;
			end loop l2;
		end loop l1;
		--Input data
		l3 : for i in 23 downto 0 loop
			d_p <= INPUT_DATA(i);
			d_m <= not INPUT_DATA(i);
			l4 : for j in 4 downto 0 loop
				wait for PEROID;
			end loop l4;
		end loop l3;
		d_p <= '0';
		d_m <= '0';
		wait for 2 * 5 * PEROID;
		d_p <= '1';
		d_m <= '0';
		wait for 5 * PEROID;
   end process simulation;

END;
