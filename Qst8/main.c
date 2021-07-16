#include <stdio.h>

typedef long long int ll;

extern ll test(char *v);

int main(void)
{
    char v[] = "1234";
    ll result = test(v);
    printf("valor = %lld",result);
    return 0;
}