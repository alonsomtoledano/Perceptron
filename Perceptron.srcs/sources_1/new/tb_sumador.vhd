library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_sumador is
--  Port ( );
end tb_sumador;

architecture Behavioral of tb_sumador is
    component sumador is
        Port (
            A, B: in unsigned(7 downto 0);
            Y: out unsigned(7 downto 0)
        );
    end component;
    signal A, B: unsigned(7 downto 0);
    signal Y: unsigned(7 downto 0);
begin
    DUT: sumador port map(A, B, Y);
    
    process begin
        A <= "00000001";
        B <= "00001000";
        wait for 10ns;
        wait;
    end process;

end Behavioral;
