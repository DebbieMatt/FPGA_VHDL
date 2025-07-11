
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity adder8 is
port(
a : in STD_LOGIC_VECTOR(7 downto 0);
b : in STD_LOGIC_VECTOR(7 downto 0);
cin : in STD_LOGIC;
cout : out STD_LOGIC;
s : out STD_LOGIC_VECTOR(7 downto 0)
);
end adder8;

architecture behavioral of adder8 is
begin
 process (a,b,cin)
 variable temp: std_logic_vector (7 downto 0);
 begin
 temp := a+b;
 if (cin = '1') then
 temp := temp +1;
 end if;
 s <= temp;
 cout <= '0';
end process;
end behavioral;
