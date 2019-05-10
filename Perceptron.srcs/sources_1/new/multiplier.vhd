library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplier is
   port(
        X, W: in std_logic_vector(7 downto 0);
        MUL: out std_logic_vector(7 downto 0)
      );
end entity multiplier;

architecture Behavioral of multiplier is
begin
    MUL <= std_logic_vector(unsigned(X) * unsigned(W));
end architecture Behavioral;