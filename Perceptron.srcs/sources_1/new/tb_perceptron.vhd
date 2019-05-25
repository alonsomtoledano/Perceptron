----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2019 07:16:58 PM
-- Design Name: 
-- Module Name: tb_perceptron - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_perceptron is
--  Port ( );
end tb_perceptron;

architecture Behavioral of tb_perceptron is

    component perceptron is
        Port (X1, X2, W1, W2: in std_logic_vector(7 downto 0);
              Y: out std_logic
        );
    end component;
    
    signal X1, X2, W1, W2: std_logic_vector(7 downto 0);
    signal Y: std_logic;
    
begin

    DUT:perceptron port map (X1, X2, W1, W2, Y);
  
    process begin
        X1 <= "00001000";
        W1 <= "00000001";
        X2 <= "00000010";
        W2 <= "00000001";
        wait for 30ns;
        wait;
    end process;


end Behavioral;
