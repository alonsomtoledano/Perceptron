library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity perceptron is
    -- TRESSHOLD CONFIGURADO EN comparator.vhdl
    Port (X1, X2, W1, W2: in std_logic_vector(7 downto 0);
          Y: out std_logic
    );
end perceptron;

architecture Structural of perceptron is
    component multiplier is
       port(
            X, W: in std_logic_vector(7 downto 0);
            MUL: out std_logic_vector(15 downto 0)
      );
    end component;
    
    component sumador is 
        Port (A, B: in std_logic_vector(15 downto 0);
              Y: out std_logic_vector(15 downto 0)
        );
    end component;
    
    component comparator is
        Port (A: in std_logic_vector(15 downto 0);
          AEB: out std_logic
    );
    end component;
    
    signal mult1, mult2, sum_y: std_logic_vector(15 downto 0);
    signal comp: std_logic;
begin
    MULT_1: multiplier port map(X1, W1, mult1);
    MULT_2: multiplier port map(X2, W2, mult2);
    SUM: sumador port map(mult1, mult2, sum_y);
    COMPARADOR: comparator port map(sum_y, comp);
    
    Y <= comp;
end Structural;
