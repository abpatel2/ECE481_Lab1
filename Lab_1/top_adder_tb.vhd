--------------------------------------------------------------------------------
-- Company: Bradley University ECE
-- Engineer: Aditya Patel
--
-- Create Date:   19:51:38 09/06/2017
-- Design Name:   
-- Module Name:   H:/Student/ugrad18/abpatel2/ECE_481/Tutorial/ECE_481_Tutorial_1/top_adder_tb.vhd
-- Project Name:  ECE_481_Tutorial_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_my_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_adder_tb IS
END top_adder_tb;
 
ARCHITECTURE behavior OF top_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_my_adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
			op_sel: IN std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
	signal op_sel : std_logic;
	
 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_my_adder PORT MAP (
          A => A,
          B => B,
          Sum => Sum,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
	
	variable AA : integer := 0;
	variable BB : integer := 0;
	
   begin		
      wait for 100 ns;	

		for AA in 0 to 15 loop
		
			for BB in 0 to 15 loop
			
				wait for 10 ms;
				B <= B + 1;
			end loop;
			
			wait for 10 ms;
			A <= A + 1;
		end loop;
		
      wait;
   end process;

END;
