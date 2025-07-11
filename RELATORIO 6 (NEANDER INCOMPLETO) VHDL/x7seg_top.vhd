library IEEE;
use IEEE.std_logic_1164.all;

entity x7seg_top is
  port(
      mclk: in std_logic;
		btn: in std_logic;
		a_to_g: out std_logic_vector (6 downto 0);
		an: out std_logic_vector (3 downto 0);
		dp: out std_logic
);
end x7seg_top;

architecture x7seg_top of x7seg_top is
component x7seg
    port(
		   x: in std_logic_vector (15 downto 0);
			clk: in std_logic;
			clr: in std_logic;
			a_to_g: out std_logic_vector (6 downto 0);
			an: out std_logic_vector (3 downto 0);
			dp: out std_logic
);
end component;

signal x: std_logic_vector(15 downto 0);
signal nbtn: std_logic;

begin
     x <= X"AA55";
	  nbtn <= not btn;
	  X1: x7seg port map (
		   x => x,
			clk => mclk,
			clr => nbtn,
			a_to_g => a_to_g,
			an => an,
			dp => dp
);
end x7seg_top;