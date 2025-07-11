library IEEE;
use IEEE.std_logic_1164.all;

entity reg_count_top is
port (
      mclk: in std_logic;
	   btn_clk: in std_logic; --botão de clock
		btn_sel: in std_logic; --botão de seleção
		a_to_g: out std_logic_vector(6 downto 0);
		an: out std_logic_vector(3 downto 0);
		dp: out std_logic
);
end reg_count_top;

architecture structural of reg_count_top is

component clkdiv
port (
	mclk: in std_logic ;
	clr: in std_logic ;
	clk25: out std_logic;
	clk190: out std_logic ;
	clk3: out std_logic ); 

end component;
component clock_pulse
port (
	inp: in std_logic;
	cclk: in std_logic ;
	clr: in std_logic ;
	outp: out std_logic
	);
end component;

component x7seg
port (
	x: in std_logic_vector(15 downto 0);
	clk: in std_logic ;
	clr: in std_logic ;
	a_to_g: out	std_logic_vector (6 downto 0);
	an:     out std_logic_vector (3 downto 0);
	dp: out std_logic 
	);
end component;

component reg_count
port ( 
   pc_input: in std_logic_vector (7 downto 0);
	pc_output: out std_logic_vector (7 downto 0);
	incCarga: in std_logic;
	clkPC: in std_logic 
);
end component;
signal nbtn_clk: std_logic; -- 1 bit
signal sclk190hz: std_logic; --1 bit
signal output_pulse: std_logic; -- 1 bit
signal reg_output: std_logic_vector(7 downto 0); --8 bits

begin
   nbtn_clk <= not btn_clk;
   divider: clkdiv port map(
   mclk => mclk,
	clr => '0',
	clk190 => sclk190hz
);	
   
	clkpulse: clock_pulse port map(
	inp => nbtn_clk,
	cclk => sclk190hz,
	clr => '0',
	outp => output_pulse
);
  
  reg_count: reg_count port map(    
 pc_input => X"AA",
	pc_output => reg_output,
	incCarga => btn_sel,
	clkPC => output_pulse
);
   
	disp7seg: x7seg port map(
	x => X"00" & reg_output,
	clk => mclk,
	clr => '0',
	a_to_g => a_to_g,
	an => an,
	dp => dp
);


end structural;