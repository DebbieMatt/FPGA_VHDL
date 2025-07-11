
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
entity halfadd is
port(
a : in STD_LOGIC;
b : in STD_LOGIC;
c : out STD_LOGIC;
s : out STD_LOGIC
);
end halfadd;
architecture halfadd of halfadd is
begin
s <= a xor b;
c <= a and b;
end halfadd;