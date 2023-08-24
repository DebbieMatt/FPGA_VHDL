library IEEE;
use IEEE.std_logic_1164.all;

entity clock_pulse_top is
  port (
   mclk: in std_logic;
	btn: in std_logic;
	ld: out std_logic_vector (3 downto 0)
  );
end clock_pulse_top;

architecture clock_pulse_top of clock_pulse_top is
component clkdiv is
 port (
     mclk: in std_logic;
	  clr: in std_logic;
	  clk25: out std_logic;
	  clk190: out std_logic;
	  clk3: out std_logic
  );
end component;
component clock_pulse is
 port (
    inp: in std_logic;
	 cclk: in std_logic;
	 clr: in std_logic;
    outp: out std_logic
  );
end component;

component ring4 is
port(
    clk: in std_logic;
	 clr: in std_logic;
    q: out std_logic_vector (3 downto 0)
  );
end component;


signal sys_clock: std_logic;
signal fclock: std_logic;
signal invq: std_logic_vector (3 downto 0);
begin
   C1: clkdiv port map (
	   mclk => mclk, 
		clr =>'0',
		clk190 => sys_clock
	);
	
	C2: clock_pulse port map (
	   inp => btn, 
		clr => '0',
		cclk => sys_clock,
		outp => fclock 
	);
	
	C3: ring4 port map (
	  clk => fclock,
	  clr => '0',
	  q => invq
	);
   ld <= not invq;

end clock_pulse_top;