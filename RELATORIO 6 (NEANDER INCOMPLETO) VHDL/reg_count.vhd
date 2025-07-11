library IEEE;
use IEEE.std_logic_1164.all;

entity reg_count is 
port ( 
   pc_input: in std_logic_vector (7 downto 0);
	pc_output: out std_logic_vector (7 downto 0);
	incCarga: in std_logic;
	clkPC: in std_logic 
);
end reg_count;

architecture reg_count of reg_count is 
component adder8
port(
a : in STD_LOGIC_VECTOR(7 downto 0);
b : in STD_LOGIC_VECTOR(7 downto 0);
cin : in STD_LOGIC;
cout : out STD_LOGIC;
s : out STD_LOGIC_VECTOR(7 downto 0)
);
end component;
component mux88 
port(
s : in std_logic;
a : in STD_LOGIC_VECTOR(7 downto 0);
b : in STD_LOGIC_VECTOR(7 downto 0);
y : out STD_LOGIC_VECTOR(7 downto 0)
);
end component;
component reg  
port (
clk: in std_logic ;
clr: in std_logic ;
d: in std_logic_vector (7 downto 0);
q: out std_logic_vector (7 downto 0)
);
end component;

signal adder_out: std_logic_vector (7 downto 0);
signal mux_out: std_logic_vector (7 downto 0);
signal reg_out: std_logic_vector (7 downto 0);


begin
   SUM8: adder8  port map (
	a => reg_out, 
   b => X"01",
   cin => '0', 
   s => adder_out
	);
   MUX: mux88 port map (
      s => incCarga, 
      a => pc_input,
      b => adder_out,
      y => mux_out 
	);
	R: reg port map (
       clk => clkPC, 
       clr => '0', 
       d => mux_out, 
       q => reg_out 
	);
   pc_output <= reg_out ;

end reg_count;