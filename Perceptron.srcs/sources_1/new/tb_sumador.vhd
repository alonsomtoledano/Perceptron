library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_sumador is
--  Port ( );
end tb_sumador;

architecture Behavioral of tb_sumador is
    component sumador is
        Port (
            A, B: in std_logic_vector(15 downto 0);
            Y: out std_logic_vector(15 downto 0)
        );
    end component;
    signal A, B: std_logic_vector(15 downto 0);
    signal Y: std_logic_vector(15 downto 0);
begin
    DUT: sumador port map(A, B, Y);
    
    process begin
        A <= "0000000000000001";
        B <= "0000000000001000";
        wait for 10ns;
        wait;
    end process;

end Behavioral;
