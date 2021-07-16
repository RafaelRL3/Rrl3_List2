#include <stdio.h>

typedef long long int ll;

extern void test(ll *i);

int main(void)
{
    ll i = 12;
    printf("Qtd de vezes que vai ser feita o loop, %lld\n", i);
    test(&i);
    return 0;
}