    .globl test
test:
    mov x13,xzr //zerando contador
    mov x14,xzr //zerando contador
    mov x10,xzr //zerando o half word
    mov x18, xzr //zerando reg flag

player1:
    mov x11, x0 // passando o enderco do primeiro char da string p1
    add x18,x18,#1 //andando com a flag 
    b jogo 

player2:
    add x18,x18,#1//andando com a flag
    mov x14, x13 //passando o contador de p1 
    mov x13,xzr // zerando o contador de p2
    mov x11,x1 // passando o endereco do primeiro cha da string p1
    b jogo
    
    jogo:
        ldurb w10,[x11,#0]
        add x11, x11,#1
        cbz w10,status
        //se w10 == 0, significa que chegou no fim da string
        
        //1 Ponto
        cmp w10, #65 // Se w10 = A Somar 1
        b.eq som1
        cmp w10, #69 // Se w10 = E Somar 1
        b.eq som1
        cmp w10, #73 // Se w10 = I Somar 1
        b.eq som1
        cmp w10, #79 // Se w10 = O Somar 1
        b.eq som1
        cmp w10, #85 // Se w10 = U Somar 1
        b.eq som1
        cmp w10, #78 // Se w10 = N Somar 1
        b.eq som1
        cmp w10, #82 // Se w10 = R Somar 1
        b.eq som1
        cmp w10, #83 // Se w10 = S Somar 1
        b.eq som1
        
        //2 Pontos
        cmp w10, #68 //Se w10 = D Somar 2
        b.eq som2
        cmp w10, #71 //Se w10 = G Somar 2 
        b.eq som2
        cmp w10, #84 //Se w10 = T Somar 2
        b.eq som2
        
        //3 pontos 
        cmp w10, #66 //Se w10 = B Somar 3
        b.eq som3
        cmp w10, #67 //Se w10 = C 
        b.eq som3
        cmp w10, #77 //Se w10 = M 
        b.eq som3
        cmp w10, #80 //Se w10 = P 
        b.eq som3

        //4 pontos
        cmp w10, #70 //Se w10 = F Somar 4
        b.eq som4
        cmp w10, #72 //Se w10 = H 
        b.eq som4
        cmp w10, #86 //Se w10 = V 
        b.eq som4
        cmp w10, #87 //Se w10 = W 
        b.eq som4
        cmp w10, #89 //Se w10 = Y 
        b.eq som4
        
        //5 pontos
        cmp w10, #75 //Se w10 = K Somar 5
        b.eq som5
        
        //8 pontos
        cmp w10, #74 //Se w10 =  J Somar 8
        b.eq som8
        cmp w10, #76 //Se w10 =  L Somar 8
        b.eq som8
        cmp w10, #88 //Se w10 =  X Somar 8
        b.eq som8
        
        
        //10 pontos
        cmp w10, #81 //Se w10 = Q Somar 10
        b.eq som10
        cmp w10, #90 //se w10 = Z Somar 10
        b.eq som10
        

        b jogo
        
som1:
    add  x13,x13,#1
    b jogo
som2:
    add  x13,x13,#2
    b jogo
som3:
    add  x13,x13,#3
    b jogo
som4:
    add  x13,x13,#4
    b jogo
som5:
    add  x13,x13,#5
    b jogo
som8:
    add  x13,x13,#8
    b jogo
som10:
    add  x13,x13,#10
    b jogo

status:
    cmp x18,#2
    b.ge exit
    b.lt player2
exit: 
    cmp x14,x13
    b.eq eql
    b.gt gtr
    b.lt less

eql:
    mov x0, #69
    br x30
gtr:
    mov x0, #65
    br x30
less:
    mov x0, #66
    br x30