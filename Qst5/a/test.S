    .globl test 
test: 
    //x0 = &i , i sera a quantidade de vezes que o loop vai executar. 
    ldur x9, [x0,#0]
    loop:
        cmp x9,x1 //compara o maior valor com o menor
        b.gt rpt
    stur x9,[x0,#0]
    br x30
rpt:
    sub x9, x9, #1 //i = i - 1  
    b loop  