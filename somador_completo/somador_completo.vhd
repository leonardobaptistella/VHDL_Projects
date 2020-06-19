LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL; 

ENTITY somador_completo IS
PORT( a0,b0,ci :IN STD_LOGIC;
s1,c1 :OUT STD_LOGIC);
END somador_completo;

ARCHITECTURE estrutural OF somador_completo IS
--declarando os sinais internos ao projeto meio-somador
SIGNAL s0, c0, c01: STD_LOGIC;

COMPONENT pratica_5 IS
PORT( a,b :IN STD_LOGIC;
s,cf :OUT STD_LOGIC);
END COMPONENT;
-- inicio da arquitetura do projeto somador
BEGIN
G1: pratica_5 PORT MAP (a0, b0, s0, c0) ;
G2: pratica_5 PORT MAP (a =>ci, b=>s0, s=>s1, cf => c01) ;
c1 <= c0 OR c01;
END estrutural ;
