library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ring4 is
	port (
		clk: in std_logic;
		clr: in std_logic;
		q: out std_logic_vector(3 downto 0)
	);

end ring4;
architecture ring4 of ring4 is
signal qs: std_logic_vector(3 downto 0);
begin
	process (clk, clr)
	begin
		if clr = '1' then
			 qs <= "0001";
		 elsif clk'event and clk = '1' then
		    case qs is
			    when "0001" => qs <= "0010";
				 when "0010"  => qs <= "0100";
				 when "0100"  => qs <= "1000";
				 when "1000"  => qs <= "0001";
				 when others => qs <= "0001";
			 end case;
			 end if;
	end process;
	q <= qs;
end ring4;