	.globl test
test:
    mov x9, x0 //zerando os registradores aux
    mov x11, #1 // mult. por 1 o reg aux do fatorial 
    mov x12, #0
    mov x10, #0

extract:
    ldrsb x10,[x9,#0] // recebendo o valor do char 
    cbz x10, return //chegando ao fim do char, va para return
	sub x10, x10, #48//passando o valor para int
    add x9, x9, #1 // andando com o char

loop: 
	cbnz x10,fact // se n != 0, continua a realizar o fat
    add x12,x11,x12 
    mov x11, #1
    b extract	

fact: 
	mul x11, x11, x10 // n * n-1 
    sub x10, x10, #1 // n = n-1
	b loop //fat(n-1)
	
return:
    stur x12,[x1, #0]
	br x30