#include <stdio.h>

typedef long long int ll;

extern void teste(char *s1, char *s2, ll *r);

int main() {
	char s1[] = "leg";
	char s2[] = "grnrclszemskvbgcluwtgyvieip";
	ll r = 0 ;
       teste(s1, s2, &r);
	printf("a palavra pode ser formada %lld vezes\n", r);
	return 0;
}