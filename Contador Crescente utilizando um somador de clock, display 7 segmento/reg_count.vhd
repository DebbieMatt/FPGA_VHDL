library IEEE;
use IEEE.std_logic_1164.all;

entity reg_count is
port (
s: in std_logic;
clk_reg_count: in std_logic ;
clr_reg_count: in std_logic ;
d_reg_count: in std_logic_vector (7 downto 0);
q_reg_count: out std_logic_vector (7 downto 0)
-- adder_out: out std_logic_vector (7 downto 0 )
);
end reg_count;
architecture structural of reg_count is 
signal full_adder_out: std_logic_vector (7 downto 0);
signal reg_out: std_logic_vector (7 downto 0);
signal mux_out: std_logic_vector (7 downto 0);
component reg 
port (
clk: in std_logic ;
clr: in std_logic ;
d: in std_logic_vector (7 downto 0);
q: out std_logic_vector (7 downto 0)
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
component adder8
port(
a : in STD_LOGIC_VECTOR(7 downto 0);
b : in STD_LOGIC_VECTOR(7 downto 0);
cin : in STD_LOGIC;
cout : out STD_LOGIC;
s : out STD_LOGIC_VECTOR(7 downto 0)
);
end component;
begin
ADDER_BEHAVIORAL: adder8 port map (
 a => X"01",
 b => reg_out,
 cin => '0',
 -- cout => ... não conectado.
 s => full_adder_out);
MUX: mux88 port map (
 s => s,
 a => d_reg_count, 
 b => full_adder_out, 
 y => mux_out );
R: reg port map (
 clk => clk_reg_count,
clr => clr_reg_count,
d => mux_out,
q => reg_out
);
q_reg_count <= reg_out;
-- adder_out <= full_adder_out;
end structural;