library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clkdiv is
   port(
	   mclk: in std_logic;
		clr: in std_logic;
	   clk25: out std_logic; -- 25 MHz
		clk190: out std_logic; -- 190 kHz
		clk3: out std_logic   -- 3Hz
	);
end clkdiv;

architecture clkdiv of clkdiv is 
signal q: std_logic_vector (23 downto 0);
begin
   -- clock divider
	process (mclk , clr )
	begin
	  if (clr = '1') then
	      q <= X"000000";
	  else
	     if mclk'event and mclk = '1' then
		     q <= q+1;
	     end if;
	  end if;
	end process;
	clk25 <= q(0);
	clk190 <= q(17);
	clk3 <= q(23);
end clkdiv ;