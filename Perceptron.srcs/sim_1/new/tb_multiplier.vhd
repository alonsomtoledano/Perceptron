library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_multiplier is
--Port();
end tb_multiplier;

architecture Behavioral of tb_multiplier is
    component multiplier is
         port(
            X, W: in std_logic_vector(7 downto 0);
            MUL: out std_logic_vector(7 downto 0)
          );
    end component;
    
    signal X, W, MUL: std_logic_vector(7 downto 0);
    
    
begin
    DUT: multiplier port map(X, W, MUL);
    
    process begin
        X <= "00000111"; W <= "00000011"; wait;
    end process;

end Behavioral;