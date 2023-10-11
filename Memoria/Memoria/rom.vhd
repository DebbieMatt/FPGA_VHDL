library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity rom is
	port (
		addr: in std_logic_vector (3 downto 0);
		M: out std_logic_vector (7 downto 0)
	);
end rom;

architecture rom of rom is
	type rom_array is array (natural range <>) of std_logic_vector(7 downto 0);
	constant mrom: rom_array := (
		X"01", X"02", X"03", X"04",
		X"05", X"06", X"07", X"08",
		X"09", X"0A", X"0B", X"0C",
		X"0D", X"0E", X"0F", X"10"
	);
begin
	process (addr)
		variable j: integer;
		begin
		j:= conv_integer(addr);
		M <= mrom (j);
	end process;
END rom;