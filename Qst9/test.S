    .globl test

test:
    //pegando os enderecos das strings
    mov x9, x0 // x9 = cursor da str 1 
    mov x10, x1// x10 = cursor da str 2 
loop:
    ldrsb x11,[x9,#0] // recebendo o char da string embaralhada
    cbz x11, return
    add x9, x9, #1

    br x30