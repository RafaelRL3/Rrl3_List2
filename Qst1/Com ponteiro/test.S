	.globl test
test:
	//X0 recebe o valor de a
	//X1 recebe o valor de b
	//X2 recebe o endereco de m
	SUB X9,X0,X1 //Caso a = b , X9 = 0
	CBNZ X9,else // Se X9 for diferente de 0, va para else
	SUB X10,X1,X0 // b - a
	STUR X10,[X2,#0] //Salva o valor de x10 na variavel m = b - a
	BR X30
else:
	SUB X10,X0,X1 // a - b
	STUR X10,[X2,#0] //Salva o valor de x10 na variavel m = a - BR
	BR X30
