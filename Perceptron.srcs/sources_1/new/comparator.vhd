library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
    Port (A: in std_logic_vector(15 downto 0);
          AEB: out std_logic
    );
end comparator;

architecture Behavioral of comparator is
    signal TRESSHOLD: std_logic_vector(15 downto 0);
begin
    TRESSHOLD <= "0000000000001000";
    process(A) begin   
        if(A > TRESSHOLD) then
            AEB <= '1';
        else
            AEB <= '0';
        end if;     
    end process;

end Behavioral;
