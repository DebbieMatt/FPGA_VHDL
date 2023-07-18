library IEEE;
use IEEE.std_logic_1164.all;

entity gates2_top is 
port (
 sw: in STD_logic_vector (1 downto 0);
 ld: out STD_logic_vector (5 downto 0)
);
end gates2_top;

architecture gates2_top of gates2_top is
component gates2_top
port(
 a: in STD_logic;
 b: in STD_logic;
 and_gate: out STD_logic;
 nand_gate: out STD_logic;
 or_gate:  out STD_logic;
 nor_gate:  out STD_logic;
 xor_gate:  out STD_logic;
 xnor_gate: out STD_logic
);
end component;
begin 
U1: gates2 port map (
 a => SW(1),
 b => SW(0),
 and_gate => ld (5),
 nand_gate => ld (4),
 nor_gate => ld (3),
 or_gate => ld (2),
 xnor_gate => ld(1),
 xor_gate => ld (0)
);
end gates2_top;
