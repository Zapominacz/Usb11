LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_fsm IS
END test_fsm;
 
ARCHITECTURE behavior OF test_fsm IS 

    COMPONENT fsm
    PORT(
         d_p : IN  std_logic;
         d_m : IN  std_logic;
         clk_60mhz : IN  std_logic;
         synced : OUT  std_logic;
         data : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal d_p : std_logic := '0';
   signal d_m : std_logic := '1';
   signal clk_60mhz : std_logic := '1';

 	--Outputs
   signal synced : std_logic;
   signal data : std_logic_vector(63 downto 0);

	constant FREQUENCY : REAL := (60.0 * 1000.0 * 1000.0); 
	constant PEROID : TIME := 1 sec / FREQUENCY;
	constant HALF_PEROID : TIME := PEROID / 2;
	constant QUARTER_PEROID : TIME := PEROID / 4;
 
	constant SYNC_PATTERN : std_logic_vector(7 downto 0) := "01010100";
	constant INPUT_PATTERN : std_logic_vector(31 downto 0) := "11111111000000001111111101010100";
	--zawiera SYNC_PATTERN
	constant INPUT_DATA : std_logic_vector(63 downto 0) := X"6C3EEF3FFFFFFFFF";
	
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm PORT MAP (
          d_p => d_p,
          d_m => d_m,
          clk_60mhz => clk_60mhz,
          synced => synced,
          data => data
        );

	clk_60mhz <= not clk_60mhz after HALF_PEROID;
	
   -- Simulation process
   simulation: process	
		begin
		wait for PEROID * 3; -- padding
		--sync pattern
		l1 : for i in 31 downto 0 loop
			d_p <= INPUT_PATTERN(i);
			d_m <= not INPUT_PATTERN(i);
			l2 : for j in 4 downto 0 loop
				wait for PEROID;
			end loop l2;
		end loop l1;
		--Input data
		l3 : for i in 63 downto 0 loop
			d_p <= INPUT_DATA(i);
			d_m <= not INPUT_DATA(i);
			l4 : for j in 4 downto 0 loop
				wait for PEROID;
			end loop l4;
		end loop l3;
   end process simulation;

END;
