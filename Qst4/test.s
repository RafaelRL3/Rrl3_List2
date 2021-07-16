	.globl test
test:
	//X10 = X1
	//X11 =X2
	//R = X0
	ldur x10,[x1,#0] //Recebendo o valor x10
	ldur x11,[x2,#0] //Recebendo o valor x11
	eor x9,x11,x10 //  x11 xor x10 -> 001101 = D 
	stur x10,[x1,#0] // devolvendo os valores 
	stur x11,[x2,#0] // devolvendo os valores 
	stur x9,[x0,#0] // devolvendo os valores 
	BR X30
