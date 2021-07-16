    .globl test 
test: 
    //x0 = &i , i sera a quantidade de vezes que o loop vai executar. 
    ldur x9, [x0,#0]
    loop:
        cmp x9, xzr
        b.le exit
        sub x9, x9, 1
        b loop
    exit 
        stur x9,[x0,#0]
        br x30