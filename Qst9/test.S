    .globl test
    //letras maiusculas 65 a 90 
    //letras minusculas 97 a 122 
test:
    mov x9, x0 // endereco da string embaralhada
    mov x10, x1// endereco da strg palavra

    mov x11, xzr // indice i = 0
    mov x12, xzr // indice j = 0

    ldr x3, =0xfffffffff // INF
    ldr x4, =0x0 // contador
    
l1:
    add x13, x11, x10
    ldurb w14, [x13,#0] // pegar o primeiro char da palavra
    cmp w14, #0
    b.eq return
    cmp w14 , #90 // se w14 < = a 90 ( MAIUSCULO) else min.
    b.eq CompMai
    b CompMin

CompMai:
    add x15, x12, x9    // aumenta i
    ldurb w16,[x15,#0] // s[i]
    cbz w16, break //se a string acabar, va para break 
    cmp w16, #90    // compara com 90, para ver se eh Maiuscula
    b.gt VMaiMin    
    cmp w16, w14    // Compara uma letra da palavra com a letra embaralhada 
    b.eq contadorMai
    b CompMai

VMaiMin:
    sub w16, w16, #32 //transforma em maiuscula para comparta
    cmp w16, w14
    b.eq contadorMai
    b CompMai

CompMin:
    add x15, x12, x9
    ldurb w16,[x15,#0]
    cbz w16, break
    cmp w16, #90 //se for menor ou igual , transforma em minuscula 
    b.le VMinMai
    cmp w16, w14
    b.eq contadorMin
    b CompMin

VMinMai: //transforma a letra em minuscula e compara 
    add w16, w16, #32
    cmp w16, w14
    b.eq contadorMin
    b CompMin

contadorMin: //contador das minusculas
    add x4, x4, #1
    b CompMin
contadorMai://contador das maiusculas
    add x4, x4, #1
    b CompMai

break: //limpeza dos regs
    mov x12, xzr
    mov x11, xzr
    cmp x4, x3
    b.le menor
menor: // condicional para salvar o valor 
    mov x3,x4 
    mov x4,xzr
    b l1
return:
    stur x3,[x2,#0]
    br x30
