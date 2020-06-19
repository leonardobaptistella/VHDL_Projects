--Pratica 1 Criação de gerador de bit de paridade par
ENTITY pratica_1 IS
 PORT(
	a, b, c, d : IN BIT; --4 entradas
	y : OUT BIT          --saida do gerador 
 );
END ENTITY pratica_1 ;

ARCHITECTURE fluxo_dados OF pratica_1 IS
	SIGNAL X1,X2: BIT;
 BEGIN
	X1 <= (a XOR b); --resultado da primeira comparacao
	X2 <= (c XOR d); --resultado da segunda comparacao
	y <= X1 XOR X2;  --Comaparacao das anteriores e saida
 END ARCHITECTURE fluxo_dados; 