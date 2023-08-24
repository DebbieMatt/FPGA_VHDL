-- mux 88
library IEEE;
use IEEE.std_logic_1164.all;
library EXAMPLE6;
entity mux88 is
port(
s : in std_logic;
a : in STD_LOGIC_VECTOR(7 downto 0);
b : in STD_LOGIC_VECTOR(7 downto 0);
y : out STD_LOGIC_VECTOR(7 downto 0)
);
end mux88;
architecture mux88 of mux88 is
begin
 process (s,a,b)
 begin 
 case s is 
 when '0' =>
 y <= a;
when others =>
 y <= b;
 end case;
 end process;
end mux88;