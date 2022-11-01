----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.09.2022 01:11:16
-- Design Name: 
-- Module Name: Flip_Flop_D - Behavioral
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

entity Flip_Flop_D is
    port (
        Q, nQ : out std_logic;
        clock, D : in std_logic
    );
end entity;

architecture arch_FlipFlopD of Flip_Flop_D is

    signal internalQ : std_logic;

begin

    Q <= internalQ;
    nQ <= not internalQ;

    main_process : process (clock)
    begin

        if rising_edge (clock) then
            report "Procesando tic tac.. clock=" & std_logic'image(clock);
            report "    D=" & std_logic'image(D);

            internalQ <= D;

        end if;
        report "    internalQ=" & std_logic'image(internalQ);

    end process;

end architecture;