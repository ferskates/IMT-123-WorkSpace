----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2022 02:06:19
-- Design Name: 
-- Module Name: FF_JK_D - Behavioral
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

entity FF_JK_D is
    port (
        Q, nQ : out std_logic;
        clock, J, K : in std_logic
    );
end entity;

architecture arch_flipFlopJK of FF_JK_D is

    signal internalQ : std_logic;

begin

    Q <= internalQ;
    nQ <= not internalQ;

    main_process : process (clock)
    begin

        if rising_edge (clock) then
            report "Procesando tic tac.. clock=" & std_logic'image(clock);
            report "    J=" & std_logic'image(J);
            report "    K=" & std_logic'image(K);

            if J = '0' and K = '0' then
                internalQ <= internalQ;
            elsif J = '0' and K = '1' then
                internalQ <= '0';
            elsif J = '1' and K = '0' then
                internalQ <= '1';
            else
                internalQ <= not internalQ;
            end if;
        end if;
        report "    internalQ=" & std_logic'image(internalQ);

    end process;

end architecture;