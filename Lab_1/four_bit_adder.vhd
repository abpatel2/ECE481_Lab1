----------------------------------------------------------------------------------
-- Company: Bradley University
-- Engineer: ECE 481
-- 
-- Create Date:    19:24:13 09/06/2017 
-- Design Name: 
-- Module Name:    four_bit_adder - Behavioral 
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

entity four_bit_adder is
    Port( 
				A 		: in  	STD_LOGIC_VECTOR (3 downto 0);
				B 		: in  	STD_LOGIC_VECTOR (3 downto 0);
				op_sel: in 		STD_LOGIC;
				Cin 	: in  	STD_LOGIC;
				Cout 	: out  	STD_LOGIC;
				Sum 	: out  	STD_LOGIC_VECTOR (3 downto 0)
			);
end four_bit_adder;

architecture Behavioral of four_bit_adder is

component full_adder
	port(
			A		: in 		std_logic;
			B		: in 		std_logic;
			op_sel: in		std_logic;
			Cin	: in 		std_logic;
			Cout 	: out 	std_logic;
			Sum  	: out 	std_logic
		);
end component;
	
signal C1: std_logic;
signal C2: std_logic;
signal C3: std_logic;	
	  
begin

	U1: full_adder port map 
	(
		A(0),
		B(0),
		op_sel,
		Cin,
		C1,
		Sum(0)
	);
	
	U2: full_adder port map 
	(
		A(1),
		B(1),
		op_sel,
		C1,
		C2,
		Sum(1)
	);
	
	U3: full_adder port map 
	(
		A(2),
		B(2),
		op_sel,
		C2,
		C3,
		Sum(2)
	);
	
	U4: full_adder port map 
	(
		A(3),
		B(3),
		op_sel,
		C3,
		Cout,
		Sum(3)
	);

end Behavioral;

