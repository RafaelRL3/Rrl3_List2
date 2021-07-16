#include <stdio.h>

typedef long long int ll;

extern char test(char *p1, char *p2);

int main(void)
{

    char p1[] = "GOTICO"; 
    char p2[] = "GOTICA"; 
    
    printf("entrando\n");
    char r = test(p1, p2);
    printf("answer :%c \n", r);
    return 0;
}