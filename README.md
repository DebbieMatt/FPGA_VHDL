# Projetos FPGA com Quartus II e VHDL

<p align="center">
  <a href="https://skillicons.dev">
    <img src="https://github.com/DebbieMatt/Arq_VHDL/blob/45812f323ae63c5405bf425adb605f396c3a6c22/21169439.png" alt="FPGA Logo"/>
  </a>
</p>

![VHDL](https://img.shields.io/badge/VHDL-543978?style=for-the-badge&logo=v&logoColor=white)
![Status](https://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=orange&style=for-the-badge)
![Quartus](https://img.shields.io/badge/Intel%20Quartus%20II-0071C5?style=for-the-badge&logo=intel&logoColor=white)

> Repositório dedicado ao desenvolvimento de projetos em FPGA utilizando VHDL e Intel® Quartus® II. Contém implementações de circuitos digitais desenvolvidos na disciplina de Arquitetura de Computadores, com foco na placa Altera Cyclone IV EP4CE6E22C8N.

## 📋 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Estrutura do Repositório](#-estrutura-do-repositório)
- [Hardware e Software](#-hardware-e-software)
- [Instalação](#-instalação)
- [Como usar](#-como-usar)
- [Projetos Implementados](#-projetos-implementados)
- [Recursos Adicionais](#-recursos-adicionais)
- [Contribuindo](#-contribuindo)
- [Licença](#-licença)

## 🎯 Sobre o Projeto

Este repositório apresenta uma coleção abrangente de projetos em VHDL (VHSIC Hardware Description Language) desenvolvidos para FPGA (Field-Programmable Gate Array). Os projetos cobrem desde conceitos básicos de lógica digital até implementações mais complexas de sistemas digitais.

### Objetivos de Aprendizado

- Dominar a sintaxe e semântica da linguagem VHDL
- Implementar circuitos combinacionais e sequenciais
- Desenvolver sistemas digitais em hardware reconfigurável
- Trabalhar com periféricos: LEDs, displays 7 segmentos, botões
- Compreender o fluxo de design em FPGA: síntese, compilação e programação
- Criar e testar sistemas embarcados em hardware

## 📁 Estrutura do Repositório

```
FPGA_VHDL/
├── Aula 05-09/
│   ├── adder8.vhd              # Somador de 8 bits
│   ├── clkdiv.vhd              # Divisor de clock
│   ├── clock_pulse.vhd         # Gerador de pulso de clock
│   ├── fulladd.vhd             # Somador completo
│   ├── halfadd.vhd             # Meio somador
│   ├── mux88.vhd               # Multiplexador 8 para 1
│   ├── reg.vhd                 # Registrador
│   ├── reg_count.vhd           # Contador com registrador
│   ├── reg_count_top.vhd       # Módulo top-level
│   ├── x7seg.vhd               # Decodificador display 7 segmentos
│   ├── reg_count_top.qpf       # Arquivo de projeto Quartus
│   ├── reg_count_top.qsf       # Configurações do projeto
│   ├── Pinagem.png             # Diagrama de pinagem
│   └── output_files/           # Arquivos de saída da compilação
│
├── Aula 29-08/                 # Aula de introdução
│
├── Contador Crescente utilizando um somador de clock, display 7 segmento/
│   └── Implementação de contador ascendente
│
├── Contador Descrescente utilizando divisor de clock/
│   └── Implementação de contador descendente
│
├── Contador em Anel de 4 bits com clock manual/
│   └── Ring counter com controle manual
│
├── EXEMPLO DE AULA 3 E 4 (VHDL)/
│   └── Exemplos introdutórios de VHDL
│
├── EXERCICIOS E LIVRO DE VHDL/
│   └── VHDL_Descricao_e_Sintese_de_Circuitos_Di.pdf
│
├── Memoria/
│   └── Implementações de memória
│
├── RELATORIO 6 (NEANDER INCOMPLETO) VHDL/
│   └── Projeto do processador Neander
│
├── RELATÓRIOS DE VHDL/
│   └── Documentação dos projetos
│
└── Recursos/
    ├── 21169439.png
    └── H53c90ef80d4a44a183b01f666aeac046R.jpg_220x220q75.jpg_.jpg
```

## 💻 Hardware e Software

### Hardware Necessário

#### Placa FPGA **Altera Cyclone IV EP4CE6E22C8N**

Especificações principais:
- **Família**: Cyclone IV E
- **Elementos Lógicos**: 6.272 LEs
- **Memória Embarcada**: 270 Kbits
- **Multiplicadores 9x9**: 30
- **PLLs**: 2
- **Pinos de I/O**: 91

**Periféricos da Placa:**
- LEDs para saída visual
- Botões para entrada
- Display 7 segmentos
- Clock de 50 MHz
- Interface USB-Blaster para programação

### Software Necessário

#### Intel® Quartus® II Web Edition

**Versão Recomendada**: 13.1 ou superior

**Download**: [Intel® Quartus® II Web Edition](https://www.intel.com/content/www/us/en/software-kit/666221/intel-quartus-ii-web-edition-design-software-version-13-1-for-windows.html)

**Componentes Inclusos:**
- Compilador VHDL/Verilog
- Ferramenta de síntese
- Simulador ModelSim-Altera (opcional)
- RTL Viewer (visualização de esquemático)
- TimeQuest Timing Analyzer
- Programador USB-Blaster

#### Sistemas Operacionais Suportados
- Windows 7/8/10/11 (64-bit recomendado)
- Linux (diversas distribuições)
- macOS (com limitações)

### Requisitos Mínimos do Sistema

| Componente | Mínimo | Recomendado |
|------------|---------|-------------|
| Processador | Intel Core 2 Duo / AMD Athlon X2 | Intel Core i5 / AMD Ryzen 5 |
| RAM | 4 GB | 8 GB ou mais |
| Espaço em Disco | 5 GB | 10 GB ou mais |
| Resolução | 1280x720 | 1920x1080 |

## 🚀 Instalação

### 1. Clone o Repositório

```bash
git clone https://github.com/DebbieMatt/Arq_VHDL.git
cd Arq_VHDL
```

### 2. Instalação do Quartus II

#### Windows
1. Baixe o instalador do [site oficial da Intel](https://www.intel.com/content/www/us/en/software-kit/666221/intel-quartus-ii-web-edition-design-software-version-13-1-for-windows.html)
2. Execute o instalador como Administrador
3. Selecione os componentes:
   - ✅ Quartus II Software
   - ✅ ModelSim-Altera Edition (para simulação)
   - ✅ Cyclone IV Device Support
4. Siga as instruções na tela
5. Reinicie o computador após a instalação

#### Linux
```bash
# Baixe o arquivo .run do site da Intel
chmod +x QuartusSetup-13.1.0.162.run
sudo ./QuartusSetup-13.1.0.162.run

# Configure as variáveis de ambiente
export QUARTUS_ROOTDIR=/opt/altera/13.1/quartus
export PATH=$PATH:$QUARTUS_ROOTDIR/bin
```

### 3. Configuração do Driver USB-Blaster (Linux)

```bash
# Crie o arquivo de regras udev
sudo nano /etc/udev/rules.d/51-altera-usb-blaster.rules

# Adicione a seguinte linha:
SUBSYSTEM=="usb", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6001", MODE="0666"

# Recarregue as regras
sudo udevadm control --reload-rules
```

## 📚 Projetos Implementados

### 1. Circuitos Combinacionais

#### Meio Somador (halfadd.vhd)
Implementa a soma de dois bits sem carry de entrada.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfadd is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end halfadd;

architecture Behavioral of halfadd is
begin
    S <= A XOR B;
    C <= A AND B;
end Behavioral;
```

#### Somador Completo (fulladd.vhd)
Soma de dois bits com carry de entrada.

#### Somador de 8 Bits (adder8.vhd)
Somador completo de 8 bits com carry.

### 2. Circuitos Sequenciais

#### Registrador (reg.vhd)
Armazena dados de forma síncrona com o clock.

#### Contador (reg_count.vhd)
Contador binário programável.

#### Divisor de Clock (clkdiv.vhd)
Reduz a frequência do clock para visualização em LEDs.

```vhdl
-- Exemplo de divisor de clock
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clkdiv is
    Generic ( DIV_FACTOR : integer := 50000000 );
    Port ( clk_in  : in  STD_LOGIC;
           reset   : in  STD_LOGIC;
           clk_out : out STD_LOGIC);
end clkdiv;
```

### 3. Sistemas Complexos

#### Contador com Display 7 Segmentos
Sistema completo que conta de 0 a 9 e exibe no display.

**Componentes:**
- Contador binário
- Divisor de clock
- Decodificador BCD para 7 segmentos
- Controle de display

#### Contador em Anel (Ring Counter)
Contador circular de 4 bits com controle manual.

#### Processador Neander (Em Desenvolvimento)
Implementação simplificada de um processador educacional.

## 🛠️ Como Usar

### Criando um Novo Projeto

#### 1. Abra o Quartus II

```
File → New Project Wizard
```

#### 2. Configure o Projeto

- **Nome do Projeto**: escolha um nome significativo
- **Diretório**: selecione onde salvar
- **Top-Level Entity**: nome do módulo principal

#### 3. Selecione o Dispositivo

```
Family: Cyclone IV E
Device: EP4CE6E22C8N
```

#### 4. Adicione Arquivos VHDL

```
Project → Add/Remove Files in Project...
```

### Compilação e Programação

#### 1. Análise e Síntese

```bash
# Via GUI
Processing → Start Compilation

# Ou use a tecla de atalho
Ctrl + L
```

#### 2. Pin Assignment (Pinagem)

```
Assignments → Pin Planner
```

Configure os pinos conforme o hardware:

| Sinal | Pino | Descrição |
|-------|------|-----------|
| clk | 23 | Clock 50MHz |
| reset | 88 | Botão de reset |
| led[0] | 84 | LED 0 |
| led[1] | 85 | LED 1 |
| seg7[6:0] | 133-139 | Display 7 segmentos |

#### 3. Recompile o Projeto

Após configurar os pinos, recompile para aplicar as mudanças.

#### 4. Programação da FPGA

```
Tools → Programmer
```

**Passos:**
1. Conecte a placa via USB
2. Clique em "Hardware Setup"
3. Selecione "USB-Blaster"
4. Adicione o arquivo `.sof` (SRAM Object File)
5. Marque "Program/Configure"
6. Clique em "Start"

### Simulação com ModelSim

#### 1. Crie um Testbench

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladd_tb is
end fulladd_tb;

architecture test of fulladd_tb is
    component fulladd
        Port ( A, B, Cin : in  STD_LOGIC;
               S, Cout   : out STD_LOGIC);
    end component;
    
    signal A, B, Cin : STD_LOGIC := '0';
    signal S, Cout   : STD_LOGIC;
    
begin
    uut: fulladd port map (A => A, B => B, Cin => Cin, 
                           S => S, Cout => Cout);
    
    stimulus: process
    begin
        -- Teste 1: 0 + 0 + 0
        A <= '0'; B <= '0'; Cin <= '0';
        wait for 10 ns;
        
        -- Teste 2: 0 + 1 + 0
        A <= '0'; B <= '1'; Cin <= '0';
        wait for 10 ns;
        
        -- Continue os testes...
        wait;
    end process;
end test;
```

#### 2. Execute a Simulação

```
Tools → Run Simulation Tool → RTL Simulation
```

### Exemplo Completo: Contador com Display

#### Estrutura do Projeto

```
contador_display/
├── contador_display_top.vhd  # Módulo top-level
├── contador.vhd              # Lógica do contador
├── clkdiv.vhd                # Divisor de clock
├── bcd_to_7seg.vhd          # Decodificador
└── contador_display.qpf      # Arquivo de projeto
```

#### Código Top-Level

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity contador_display_top is
    Port ( clk     : in  STD_LOGIC;
           reset   : in  STD_LOGIC;
           seg7    : out STD_LOGIC_VECTOR(6 downto 0));
end contador_display_top;

architecture Structural of contador_display_top is
    signal clk_1hz : STD_LOGIC;
    signal count   : STD_LOGIC_VECTOR(3 downto 0);
    
    component clkdiv
        Port ( clk_in  : in  STD_LOGIC;
               reset   : in  STD_LOGIC;
               clk_out : out STD_LOGIC);
    end component;
    
    component contador
        Port ( clk   : in  STD_LOGIC;
               reset : in  STD_LOGIC;
               count : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    component bcd_to_7seg
        Port ( bcd  : in  STD_LOGIC_VECTOR(3 downto 0);
               seg7 : out STD_LOGIC_VECTOR(6 downto 0));
    end component;
    
begin
    div_clk: clkdiv port map (
        clk_in  => clk,
        reset   => reset,
        clk_out => clk_1hz
    );
    
    contador_inst: contador port map (
        clk   => clk_1hz,
        reset => reset,
        count => count
    );
    
    decoder: bcd_to_7seg port map (
        bcd  => count,
        seg7 => seg7
    );
    
end Structural;
```

## 📖 Recursos Adicionais

### Documentação Incluída

- **VHDL_Descricao_e_Sintese_de_Circuitos_Di.pdf**: Livro completo sobre VHDL
- **Relatórios de VHDL**: Documentação detalhada dos projetos
- **Pinagem.png**: Diagramas de conexão dos pinos

### Referências Online

#### Documentação Oficial
- [Intel Quartus II Handbook](https://www.intel.com/content/www/us/en/programmable/documentation/lit-index.html)
- [Cyclone IV Device Handbook](https://www.intel.com/content/www/us/en/programmable/documentation/jbx1444175194478.html)
- [VHDL Language Reference Manual (IEEE Std 1076)](https://ieeexplore.ieee.org/document/4772740)

#### Tutoriais e Guias
- [VHDL Tutorial - FPGA4Student](https://www.fpga4student.com/p/vhdl-tutorial.html)
- [Intel FPGA Training](https://www.intel.com/content/www/us/en/programmable/support/training/overview.html)
- [VHDL Cookbook - Peter J. Ashenden](http://vhdl-online.de/vhdl_cookbook/)

#### Comunidades e Fóruns
- [Intel FPGA Forum](https://community.intel.com/t5/Intel-FPGA/ct-p/fpga)
- [FPGA Reddit Community](https://www.reddit.com/r/FPGA/)
- [Stack Overflow - VHDL Tag](https://stackoverflow.com/questions/tagged/vhdl)

### Ferramentas Complementares

- **GTKWave**: Visualizador de formas de onda (alternativa gratuita ao ModelSim)
- **GHDL**: Simulador VHDL open-source
- **Sigasi**: IDE avançado para VHDL (versão estudante gratuita)

## 🤝 Contribuindo

Contribuições são essenciais para melhorar este repositório educacional!

### Como Contribuir

1. **Fork este repositório**
   
2. **Clone seu fork:**
   ```bash
   git clone https://github.com/seu-usuario/Arq_VHDL.git
   cd Arq_VHDL
   ```

3. **Crie uma branch:**
   ```bash
   git checkout -b feature/novo-projeto
   ```

4. **Faça suas alterações e commit:**
   ```bash
   git add .
   git commit -m 'feat: adiciona implementação de memória RAM'
   ```

5. **Push para sua branch:**
   ```bash
   git push origin feature/novo-projeto
   ```

6. **Abra um Pull Request**

### Diretrizes de Contribuição

#### Para Novos Projetos VHDL:
- ✅ Código bem comentado em português
- ✅ Testbench funcional incluído
- ✅ Arquivo `.qpf` do projeto Quartus
- ✅ Documentação do projeto (README interno)
- ✅ Diagrama de blocos ou esquemático
- ✅ Lista de pinos utilizados

#### Padrões de Código VHDL:
```vhdl
-- Cabeçalho obrigatório
-------------------------------------------------
-- Projeto: Nome do Projeto
-- Descrição: Breve descrição
-- Autor: Seu Nome
-- Data: DD/MM/YYYY
-- Revisão: X.X
-------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity nome_entidade is
    Generic (
        PARAM1 : integer := 10
    );
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        saida : out STD_LOGIC
    );
end nome_entidade;
```

#### Nomenclatura:
- **Entities**: `nome_descritivo` (snake_case)
- **Signals**: `nome_sinal` (snake_case)
- **Constants**: `NOME_CONSTANTE` (UPPER_CASE)
- **Generics**: `NOME_GENERIC` (UPPER_CASE)

### Áreas que Precisam de Contribuição

- 🔧 Finalização do projeto Neander
- 📝 Mais testbenches para projetos existentes
- 🎓 Tutoriais passo a passo
- 🌐 Tradução de comentários para inglês
- 🐛 Correção de bugs e otimizações
- 📊 Exemplos de uso de IPs Intel (PLLs, FIFOs, RAMs)

Para mais detalhes, consulte [CONTRIBUTING.md](CONTRIBUTING.md)

## 👥 Colaboradores

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/DebbieMatt" title="Autora do Projeto">
        <img src="https://avatars.githubusercontent.com/u/112919058?v=4" width="100px;" alt="Foto da Débora"/><br>
        <sub>
          <b>Débora Mateus</b>
        </sub>
      </a>
    </td>
  </tr>
</table>

## 📝 Licença

Este projeto está sob a licença MIT. Consulte o arquivo [LICENSE.md](LICENSE.md) para mais informações.

---

## 🔍 Troubleshooting

### Problemas Comuns

#### 1. USB-Blaster não detectado
```bash
# Windows: Reinstale os drivers
# Linux: Verifique permissões USB
sudo usermod -a -G plugdev $USER
```

#### 2. Erro de compilação: "Device not found"
- Verifique se selecionou o dispositivo correto: **EP4CE6E22C8N**
- Confirme se o suporte para Cyclone IV está instalado

#### 3. Display 7 segmentos não funciona
- Verifique a pinagem no Pin Planner
- Confirme se o display é anodo ou catodo comum
- Teste com código simples de LED primeiro

#### 4. Clock muito rápido/lento
- Ajuste o fator de divisão em `clkdiv.vhd`
- Clock da placa: 50 MHz
- Para 1 Hz: `DIV_FACTOR = 50000000`

---

<div align="center">

**[⬆ Voltar ao topo](#projetos-fpga-com-quartus-ii-e-vhdl)**

Desenvolvido com 💙 por [Débora Mateus](https://github.com/DebbieMatt)

*"Hardware is hard, but FPGA makes it programmable!"* 🚀

</div>
