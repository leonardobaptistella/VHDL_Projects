LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL; 

ENTITY codifcador_bcd IS
	PORT ( entrada :IN BIT_VECTOR(3 DOWNTO 0);
	saida :BUFFER BIT_VECTOR(6 DOWNTO 0));
END codifcador_bcd;

ARCHITECTURE comportamental OF codifcador_bcd IS
BEGIN
	PROCESS (entrada,saida) 
	BEGIN
		CASE entrada IS     --a,b,c,d,e,f,g
		WHEN "0000" => saida <= "1111110"; --0
		WHEN "0001" => saida <= "0110000"; --1
		WHEN "0010" => saida <= "1101101"; --2
		WHEN "0011" => saida <= "1111001"; --3
		
		WHEN "0100" => saida <= "0110011"; --4
		WHEN "0101" => saida <= "1011011"; --5
		WHEN "0110" => saida <= "0011111"; --6
		WHEN "0111" => saida <= "1110000"; --7
		
		WHEN "1000" => saida <= "1111111"; --8
		WHEN "1001" => saida <= "1110011"; --9
		WHEN OTHERS => saida <= "0000000";
		END CASE;
	END PROCESS;
END comportamental;