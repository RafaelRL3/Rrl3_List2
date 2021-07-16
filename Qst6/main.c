#include <stdio.h>

typedef long long int ll;

extern void test(char *l, ll *r);

int main(void)
{

    char name[] = "AEIOU"; // We hope to see 5 ;-;
    ll r = 0;
    printf("entrando\n");
    test(name, &r);
    printf("answer :%lld \n", r);
    return 0;
}