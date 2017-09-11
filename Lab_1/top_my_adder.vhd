----------------------------------------------------------------------------------
-- Company: Bradley University ECE
-- Engineer: Aditya Patel
-- 
-- Create Date:    19:16:39 09/06/2017 
-- Design Name: 
-- Module Name:    top_my_adder - Behavioral 
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

entity top_my_adder is
	Port(
				A		: in	STD_LOGIC_VECTOR (3 downto 0);
				B		: in	STD_LOGIC_VECTOR (3 downto 0);
				op_sel: in  STD_LOGIC;
				Sum	: out	STD_LOGIC_VECTOR (3 downto 0);
				Cout	: out	STD_LOGIC
		);
end top_my_adder;

architecture Behavioral of top_my_adder is


	COMPONENT four_bit_adder is
		PORT(
					A		: IN	STD_LOGIC_VECTOR (3 downto 0);
					B		: IN	STD_LOGIC_VECTOR (3 downto 0);
					op_sel: IN  STD_LOGIC;
					Cin	: IN 	STD_LOGIC;
					Cout	: OUT	STD_LOGIC;
					Sum	: OUT	STD_LOGIC_VECTOR (3 downto 0)
			);
	END COMPONENT;


--signal B : std_logic_vector(3 downto 0);
signal Cin : std_logic;

begin

	Cin <= '0';

	ins_four_bit_adder : four_bit_adder  PORT MAP
		( 
			A,
			B,
			op_sel,
			Cin,
			Cout,
			Sum 
		);

end Behavioral;









