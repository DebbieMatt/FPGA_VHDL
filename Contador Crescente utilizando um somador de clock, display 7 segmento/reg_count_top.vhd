library IEEE;
use IEEE.std_logic_1164.all;

entity reg_count_top is
port(
mclk  : in std_LOGIC;  -- master clock
btn_clk : in STD_LOGIC ;
btn_sel : in STD_LOGIC ;
a_to_g : out std_logic_vector(6 downto 0);  -- saída
an: out std_logic_vector (3 downto 0);
dp: out std_logic
);
end reg_count_top;


architecture structural of reg_count_top is
component reg_count 
port (
s: in std_logic;
clk_reg_count: in std_logic ;
clr_reg_count: in std_logic ;
d_reg_count: in std_logic_vector (7 downto 0);
q_reg_count: out std_logic_vector (7 downto 0)
-- adder_out: out std_logic_vector (7 downto 0 )
);
end component;
component clkdiv 
	port (
	clk: in std_logic ;
	clr: in std_logic ;
	clk25: out std_logic;
	clk190: out std_logic ;
	clk3: out std_logic ); 
end component;
component clock_pulse
	port (
	inp: in std_logic ;
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


signal nbtn_sel: std_logic;
signal nbtn_clk: std_logic;
signal sclk190Hz : std_logic; 
signal output_pulse: std_logic; 
signal reg_output: std_logic_vector (7 downto 0);
begin
   nbtn_sel <= not btn_sel;
	nbtn_clk <= not btn_clk;
	DIVIDER: clkdiv port map (
		clk => mclk , -- master clock
	clr => '0' ,
	-- clk25: out std_logic; -- not connected
	clk190 => sclk190Hz 
	-- clk3: out std_logic  -- not conected
	); 
	
   CLKPULSE: clock_pulse 	port map (
	inp  => nbtn_clk , -- input pulse
	cclk =>  sclk190Hz , -- internal flip flops clock 
	clr => '0' ,
	outp => output_pulse  -- output_pulse
	);
	
	
	
   REGCOUNT: reg_count port map (
	  s => nbtn_sel ,  -- selection
     clk_reg_count => output_pulse  , -- clock  filtered
     clr_reg_count => '0',
     d_reg_count => X"AA" ,
     q_reg_count => reg_output
	  );
	  
	  DISP7SEG: x7seg port map (
	x => X"00" & reg_output, 
	clk => mclk, 
	clr => '0', 
	a_to_g => a_to_g, 
	an => an, 
	dp => dp 
	);

	  
	  
	  
end structural;
