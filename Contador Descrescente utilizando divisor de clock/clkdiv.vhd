library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

-- Definir as portas do clkdiv
entity clkdiv is 
	port(
	mclk: in std_logic; --clock do tipo entrada
	clr: in std_logic; --clear do tipo entrada
	clk1: out std_logic; -- clock1 do tipo saida
	clk2: out std_logic; -- clock2 do tipo saida
	clk3: out std_logic -- clock3 do tipo saida
	);
end clkdiv;


architecture clkdiv of clkdiv is

signal q: std_logic_vector (25 downto 0); --Definir um vetor de 26 bits, que o intepretador vai definir como os flip-flop.

begin
		--divisor de clock
		
process(mclk, clr)
   begin
    if (clr = '1') then -- Condição: quando o clear = 1, colocara todos os flip-flop em 0.
	    q <= "00" & X"000000";
    else -- Caso contrario 
	    if mclk'event and mclk = '1' then -- Quando ocorrer o evento de subida do clock q recebe q+1
	       q <= q+1; -- Como foi utilizado a função downto o bit menos significativo são os da direita
       end if;
   end if;
end process;
-- Ligação das saidas do divisor de clock com os bits mais significativos do vetor de bits.
clk1 <= q(23); -- saida clock ligada no bit 24
clk2 <= q(24); -- saida clock ligada no bit 25
clk3 <= q(25); -- saida clock ligada no bit 26
end clkdiv;