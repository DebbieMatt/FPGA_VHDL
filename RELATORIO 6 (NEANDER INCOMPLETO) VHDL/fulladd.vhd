
library IEEE;
use IEEE.std_logic_1164.all;
entity fulladd is
port(
a : in STD_LOGIC;
b : in STD_LOGIC;
cin : in STD_LOGIC;
cout : out STD_LOGIC;
s : out STD_LOGIC
);
end fulladd;
architecture fulladd of fulladd is
component halfadd
port (
a : in STD_LOGIC;
b : in STD_LOGIC;
c : out STD_LOGIC;
s : out STD_LOGIC
);
end component;
signal c1 : STD_LOGIC;
signal c2 : STD_LOGIC;
signal s1 : STD_LOGIC;
begin
U1 : halfadd
port map(
a => a, b => b, c => c1, s => s1);
U2 : halfadd
port map(
a => s1, b => cin, c => c2, s => s);
cout <= c2 or c1;
end fulladd;