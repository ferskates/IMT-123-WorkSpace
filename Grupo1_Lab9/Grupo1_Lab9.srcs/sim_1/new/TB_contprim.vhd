----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 06:13:28
-- Design Name: 
-- Module Name: TB_contprim - Behavioral
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

entity TB_contprim is
--  Port ( );
end TB_contprim;

architecture Behavioral of TB_contprim is
component ContPrim is
  Port (clk, rst, en : in std_logic;
        Qs : out std_logic_vector (3 downto 0);
        ys : out std_logic);
end component ContPrim;
signal clk0 : std_logic;
signal rst0 : std_logic;
signal en0 : std_logic;
signal y0 : std_logic;
signal s0 : std_logic_vector (3 downto 0);
begin
dut: ContPrim port map(
    clk=>clk0,
    rst=>rst0,
    en=>en0,
    ys=>y0,
    Qs=>s0);
process
begin
rst0<='0';
en0<='0';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='0';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='0';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='0';
wait for 50 ns;

rst0<='1';
en0<='1';
clk0<='1';
wait for 50 ns;


wait;
end process;
end Behavioral;
