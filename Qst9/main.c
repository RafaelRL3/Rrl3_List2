#include <stdio.h>

typedef long long int ll;

extern void test(char *s1, char *s2, ll *r);

int main() {
	char s1[] = "grnrclszemskvbgcluwtgyvieip";
	char s2[] = "leg";
	ll r = 0 ;
    test(s1, s2, &r);
	printf("a palavra pode ser formada %lld vezes\n", r);
	return 0;
}