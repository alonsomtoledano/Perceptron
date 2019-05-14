library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity sumador is
    Port (
        A, B: in unsigned(7 downto 0);
        Y: out unsigned(7 downto 0)
    );
end sumador;

architecture Behavioral of sumador is

begin
    Y <= A + B;
end Behavioral;
