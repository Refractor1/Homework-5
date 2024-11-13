library ieee;
use ieee.std_logic_1164.all;

entity adder_16bit is
	port (
		in_x    : in std_logic_vector(15 downto 0);
		in_y    : in std_logic_vector(15 downto 0);
		out_s   : out std_logic_vector(15 downto 0);
		out_c   : out std_logic
		);
end entity adder_16bit;


architecture behavior of adder_16bit is

component half_adder is
	port (
		in_a   : in std_logic;
		in_b   : in std_logic;
		out_s  : out std_logic;
		out_c  : out std_logic
		);
end component;


component full_adder is
	port (
		in_a     : in std_logic;
		in_b     : in std_logic;
		in_carry : in std_logic;
		out_s    : out std_logic;
		out_c    : out std_logic
		);
end component;

signal add_sum : std_logic;
signal add_carry1 : std_logic;
signal add_carry2: std_logic;
signal add_carry3: std_logic;
signal add_carry4 : std_logic;
signal add_carry5: std_logic;
signal add_carry6: std_logic;
signal add_carry7 : std_logic;
signal add_carry8: std_logic;
signal add_carry9: std_logic;
signal add_carry10 : std_logic;
signal add_carry11: std_logic;
signal add_carry12: std_logic;
signal add_carry13 : std_logic;
signal add_carry14: std_logic;
signal add_carry15: std_logic;
	
begin --Corrected the reversed output pin indices.
	C0 : half_adder port map (in_x(0), in_y(0), out_s(0), add_carry1);
	C1 : full_adder port map (in_x(1), in_y(1), add_carry1, out_s(1), add_carry2);
	C2 : full_adder port map (in_x(2), in_y(2), add_carry2, out_s(2), add_carry3);
	C3 : full_adder port map (in_x(3), in_y(3), add_carry3, out_s(3), add_carry4);
	C4 : full_adder port map (in_x(4), in_y(4), add_carry4, out_s(4), add_carry5);
	C5 : full_adder port map (in_x(5), in_y(5), add_carry5, out_s(5), add_carry6);
	C6 : full_adder port map (in_x(6), in_y(6), add_carry6, out_s(6), add_carry7);
	C7 : full_adder port map (in_x(7), in_y(7), add_carry7, out_s(7), add_carry8);
	C8 : full_adder port map (in_x(8), in_y(8), add_carry8, out_s(8), add_carry9);
	C9 : full_adder port map (in_x(9), in_y(9), add_carry9, out_s(9), add_carry10);
	C10 : full_adder port map (in_x(10), in_y(10), add_carry10, out_s(10), add_carry11);
	C11 : full_adder port map (in_x(11), in_y(11), add_carry11, out_s(11), add_carry12);
	C12 : full_adder port map (in_x(12), in_y(12), add_carry12, out_s(12), add_carry13);
	C13 : full_adder port map (in_x(13), in_y(13), add_carry13, out_s(13), add_carry14);
	C14 : full_adder port map (in_x(14), in_y(14), add_carry14, out_s(14), add_carry15);
	C15 : full_adder port map (in_x(15), in_y(15), add_carry15, out_s(15), out_c);	
	
end architecture;
