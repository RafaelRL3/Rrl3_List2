	.globl test
test:
	//x0 -> int a
	//x1 -> int b
	//X2 -> int m (X1,X0,X2 Registradores que recebem o valor dos parametros)
	MOV X2,X1 //m = a
	SUB X9,X1,X2 // condicional do if (X1 - X2)
	CBNZ X9,Else // Se X9 for diferente de 0, va para Else , se nao
	SUB X2, X1,X0 // m = b-a
	B Out
Else:
	SUB X2,X0,X1 // m = a - b
	B Out //Funcao de saida
Out:
	MOV X0, X2
	Br X30