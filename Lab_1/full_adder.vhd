----------------------------------------------------------------------------------
-- Company: Bradley University ECE
-- Engineer: Aditya Patel
-- 
-- Create Date:    19:22:31 09/06/2017 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity full_adder is
	Port(
				A		: in  	STD_LOGIC;
				B		: in  	STD_LOGIC;
				op_sel: in 		STD_LOGIC;
				Cin	: in  	STD_LOGIC;
				Cout	: out  	STD_LOGIC;
				Sum	: out  	STD_LOGIC
		);
end full_adder;

architecture Behavioral of full_adder is
begin

	process(A, B, op_sel)
		begin
			if (op_sel = '1') then 
			
				Sum <= A xor B xor Cin;
				Cout <= (A and B) or (A and Cin) or (B and Cin);
				
			else
			
				Sum <= A xor (B xor op_sel) xor Cin;
				Cout <= (A and (B xor op_sel)) or (A and Cin) or ((B xor op_sel) and Cin);
				
			end if;
		end process;
		
end Behavioral;









