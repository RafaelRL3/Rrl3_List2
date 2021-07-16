    .globl test
test:
    mov x9, xzr //reg aux para andar na string
    mov x13,xzr //zerando contador
    mov x10,xzr //zerando o half word
    loop:
        add x11, x9, x0
        ldurb w10,[x11,#0]
        add x9,x9,#1
        cbz w10,exit
        //se w10 == 0, significa que chegou no fim da string
        cmp w10, #65 // Se w10 = A
        b.eq som
        cmp w10, #69 // Se w10 = E
        b.eq som
        cmp w10, #73 // Se w10 = I
        b.eq som
        cmp w10, #79 // Se w10 = O
        b.eq som
        cmp w10, #85 // Se w10 = U
        b.eq som
        
        b loop
        
        som:
            add  x13,x13,#1
            b loop

exit:
    stur x13,[x1,#0]
    br x30
