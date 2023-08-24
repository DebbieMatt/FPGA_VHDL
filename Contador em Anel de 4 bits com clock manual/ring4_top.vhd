library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ring4_top is
  port (
      mclk: in std_logic;  
      ld : out std_logic_vector (3 downto 0)
  );
end ring4_top;


architecture ring4_top of ring4_top is 
component clkdiv
  port(
	   mclk: in std_logic;
		clr: in std_logic;
	   clk25: out std_logic; -- 25 MHz
		clk190: out std_logic; -- 190 kHz
		clk3: out std_logic   -- 3Hz
	);
end component;
component ring4 
 port (
      clk: in std_logic;
		clr: in std_logic;
		q:  out  std_logic_vector (3 downto 0)
  );
end component;
signal sys_clock: std_logic;
begin
  C1: clkdiv port map (
     mclk => mclk, 
	  clr => '0',
	  clk3 => sys_clock
  );
  
  C2: ring4 port map (
     clk => sys_clock,
     clr => '0',
     q => ld
  );

end ring4_top;