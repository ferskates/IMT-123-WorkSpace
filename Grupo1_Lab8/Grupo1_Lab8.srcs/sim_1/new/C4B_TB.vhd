----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2022 06:02:22
-- Design Name: 
-- Module Name: C4B_TB - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity C4B_TB is
--  Port ( );
end C4B_TB;

architecture Behavioral of C4B_TB is
component Contador4bits is
Port ( clk, reset : in std_logic;
       Q : out std_logic_vector (3 downto 0) );
end component Contador4bits;

signal clk0 : std_logic;
signal reset0 : std_logic;
signal s0 : std_logic_vector (3 downto 0);

begin

dut: Contador4bits port map(
    clk=>clk0,
    reset=>reset0,
    Q=>s0);
process
begin
reset0<='1';
clk0<='0';
wait for 50 ns;

reset0<='1';
clk0<='1';
wait for 50 ns;

reset0<='1';
clk0<='0';
wait for 50 ns;

reset0<='1';
clk0<='1';
wait for 50 ns;

reset0<='1';
clk0<='0';
wait for 50 ns;

reset0<='1';
clk0<='1';
wait for 50 ns;

reset0<='1';
clk0<='0';
wait for 50 ns;

reset0<='1';
clk0<='1';
wait for 50 ns;

reset0<='1';
clk0<='0';
wait for 50 ns;

reset0<='1';
clk0<='1';
wait for 50 ns;

reset0<='1';
clk0<='0';
wait for 50 ns;

reset0<='1';
clk0<='1';
wait for 50 ns;

reset0<='1';
clk0<='0';
wait for 50 ns;

reset0<='0';
clk0<='1';
wait for 50 ns;

end process;
end Behavioral;
