----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2019 07:07:38 PM
-- Design Name: 
-- Module Name: tb_multiplier - Behavioral
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

entity tb_multiplier is
--  Port ( );
end tb_multiplier;

architecture Behavioral of tb_multiplier is
    component multiplier is
        port(
            X, W: in std_logic_vector(7 downto 0);
            MUL: out std_logic_vector(15 downto 0)
        );
    end component;
    signal X, W: std_logic_vector(7 downto 0);
    signal MUL: std_logic_vector(15 downto 0);
begin
    TB: multiplier port map(X, W, MUL);
    
    process begin
        X <= "00000010";
        W <= "00000100";
        wait for 10ns;
        wait;
    end process;
end Behavioral;
