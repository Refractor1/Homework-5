library ieee;
use ieee.std_logic_1164.all;

-- empty entity because this is just a test script
entity test_Adder is
end entity test_Adder;		

architecture behavior of test_Adder is		
	signal inx, iny, sumout : std_logic_vector(15 downto 0);
	signal carryout : std_logic;
			
begin
	-- map logic variables to inputs and outputs of chip being tested
	UUT : entity work.adder_16bit port map (
		in_x => inx,
		in_y => iny,
		out_s => sumout,
		out_c => carryout
	);
	
	-- the test script
	tb1 : process
	begin		
		
		inx <= "0000000000000001";
		iny <= "0000000000000001";
		
		wait for 10 ns;
		
		assert sumout = "0000000000000010"	report "unable to add";

		inx <= "1111111111111111";
		iny <= "0000000000000001";
		
		wait for 10 ns;
		
		assert carryout = std_logic'('1')	report "unable to carry";
				
	end process;
	
end architecture behavior;