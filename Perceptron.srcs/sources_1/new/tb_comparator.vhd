library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_comparator is
--  Port ( );
end tb_comparator;

architecture Behavioral of tb_comparator is
    component comparator is
        Port (A: in std_logic_vector(15 downto 0);
          AEB: out std_logic
    );
    end component;
    
    signal A: std_logic_vector(15 downto 0);
    signal AEB: std_logic;
begin
    DUT: comparator port map(A, AEB);
    
    process begin
        A <= "0000000011111111";
        wait for 10ns;
        A <= "0000000000000000";
        wait for 10ns;
        wait;
    end process;
end Behavioral;
