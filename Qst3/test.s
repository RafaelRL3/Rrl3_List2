	.globl test
test:
	//Registradores que recebem os inderecos de x10, x11 e a resp
	ldur x10,[x0,#0] //recebendo os valores de x10 e guardando em um reg aux
	ldur x11,[x1,#0] //recebendo os valores de x10 e guardando em um reg aux
	ldur x9, [x2,#0] //recebendo os valores de x10 e guardando em um reg aux
	mov x12, 0b0000000000000000000000000000000000000000000000011111100000000000 // preparando para retirar os bits de x10 e passara para x12
	//recebendo o valor de x10, x12 = 0b00000000 00000000 00000000 00000000 00000000 00000001 11111000 00000000
	and x12, x10, x12;
	lsl x12,x12,#15 // sl para a regiao que deseja-se alter o x11
	mov x13, 0b1111111111111111111111111111111000000011111111111111111111111111 //var aux que vai receber o valor de x11
	// preparando para retirar os bits de x10 e passara para x12,usando o binario :
	//0b11111111 11111111 11111111 11111110 00000011 11111111 11111111 11111111
	and x13,x11,x13
	eor x9,x13,x12 //realizando a modificacao no intervalo [31 ;26]
	stur x11,[x1,#0] //retornando os valores da memoria para as var
	stur x10,[x0,#0] //retornando os valores da memoria para as var
	stur x9,[x2,#0] //retornando os valores da memoria para as var
	BR X30
