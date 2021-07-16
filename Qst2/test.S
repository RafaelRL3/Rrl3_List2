	.globl test
test:
	//x0 -> int a
	//x1 -> int b
	//X2 -> int c(X1,X0,X2 Registradores que recebem o valor dos parametros)
	//X3 -> int x
	SUB X9, X9, X9 // X9 = 0
	MOV X3, X9	// x = 0
	CMP X0,X9
	B.GE and	// a >= 0
	Br X30
and:
	ADD X10, X9, 64
	CMP X1,X10
	B.LE and2	//b <= 64
	Br X30

and2:
	ADD X11,X9,24
	CMP X2,X11	// c > 24
	B.GT end
	BR X30

end:
	ADD X3, X3 , 1 // x + 1
	MOV X0, X3
	BR X30
