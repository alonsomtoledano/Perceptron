library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sumador is
    Port (
        A, B: in std_logic_vector(15 downto 0);
        Y: out std_logic_vector(15 downto 0)
    );
end sumador;

architecture Behavioral of sumador is

begin
    Y <= A + B;
end Behavioral;
