----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2022 02:10:21
-- Design Name: 
-- Module Name: FF_JK_TB - Behavioral
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

entity FF_JK_TB is
-- Port ();
end FF_JK_TB;

architecture arch_flipFlopJK_tb of FF_JK_TB is

    component FF_JK_D is
        port (
            Q, nQ : out std_logic;
            clock, J, K : in std_logic
        );
    end component;

    signal testStatus, testNotStatus, testJ, testK : std_logic;
    signal testClock : std_logic := '0';
    signal tics : integer := 0;

begin

    testing_unit: FF_JK_D port map (
        Q => testStatus,
        nQ => testNotStatus,
        clock => testClock,
        J => testJ,
        K => testK
    );

    generate_100Mhzs_clock : process
    begin

        report "Tic tac.. testClock=" & std_logic'image(testClock);
        testClock <= not testClock;

        if testClock = '1' then tics <= tics + 1; end if;
        if tics >= 40 then wait; end if;

        wait for 5 ns; -- Tiempo de espera en un flanco de reloj.

    end process;

    main_process : process
    begin

        wait for 15 ns;
        testJ <= '0'; testK <= '0'; wait for 10 ns;
        testJ <= '0'; testK <= '1'; wait for 10 ns;
        testJ <= '1'; testK <= '0'; wait for 10 ns;
        testJ <= '1'; testK <= '1'; wait for 50 ns;

        testJ <= '0'; testK <= '0'; wait for 10 ns;
        testJ <= '0'; testK <= '1'; wait for 10 ns;
        testJ <= '1'; testK <= '0'; wait for 10 ns;
        testJ <= '1'; testK <= '1'; wait for 50 ns;

        testJ <= '0'; testK <= '0'; wait for 10 ns;
        testJ <= '0'; testK <= '1'; wait for 10 ns;
        testJ <= '1'; testK <= '0'; wait for 10 ns;
        testJ <= '1'; testK <= '1'; wait for 50 ns;
        wait;

    end process;

end architecture;
