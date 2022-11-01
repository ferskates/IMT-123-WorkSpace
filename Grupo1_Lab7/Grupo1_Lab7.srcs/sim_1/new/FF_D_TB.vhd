----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.09.2022 01:32:38
-- Design Name: 
-- Module Name: FF_D_TB - Behavioral
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

entity FF_D_TB is
--  Port ( );
end FF_D_TB;

architecture arch_flipFlopD_tb of FF_D_TB is

    component Flip_Flop_D is
        port (
            Q, nQ : out std_logic;
            clock, D : in std_logic
        );
    end component;

    signal testStatus, testNotStatus, testD : std_logic;
    signal testClock : std_logic := '0';
    signal tics : integer := 0;

begin

    testing_unit: Flip_Flop_D port map (
        Q => testStatus,
        nQ => testNotStatus,
        clock => testClock,
        D => testD
    );

    generate_100Mhzs_clock : process
    begin

        report "Tic tac.. testClock=" & std_logic'image(testClock);
        testClock <= not testClock;

        if testClock = '1' then tics <= tics + 1; end if;
        if tics >= 20 then wait; end if;

        wait for 5 ns; -- Tiempo de espera en un flanco de reloj.

    end process;

    main_process : process
    begin

        wait for 15 ns;
        testD <= '0'; wait for 20 ns;
        testD <= '1'; wait for 30 ns;
        testD <= '0'; wait for 20 ns;
        testD <= '1'; wait for 30 ns;
        testD <= '0';
        wait;

    end process;

end architecture;
