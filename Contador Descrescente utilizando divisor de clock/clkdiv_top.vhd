library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clkdiv_top is 

--Definir as portas do clkdiv_top
port(
	mclk: in std_logic; -- Master clock tipo entrada
	ld: out std_logic_vector (2 downto 0)-- Led tipo saida
	);
end clkdiv_top;

architecture clkdiv_top of clkdiv_top is
--Foi chamado o componente clkdiv 
component clkdiv
port(
	mclk: in std_logic; --clock do tipo entrada
	clr: in std_logic; --clear do tipo entrada
	clk1: out std_logic; -- clock1 do tipo saida
	clk2: out std_logic; -- clock2 do tipo saida
	clk3: out std_logic -- clock3 do tipo saida
	);
end component;
begin
--Ligação dos pinos clkdiv com o clkdiv_top
	C1: clkdiv port map (
		mclk => mclk , --Master clock do clkdiv  ligado no Master clock do clkdiv_top
		clr => '0' ,-- Clear recebe 0
		clk1 => ld(0),-- Clock1 ligado no led 0
		clk2 => ld(1),-- Clock2 ligado no led 1
		clk3 => ld(2) -- Clock ligado no led 2
	);
end clkdiv_top;