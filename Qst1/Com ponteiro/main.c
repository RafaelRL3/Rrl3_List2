#include <stdio.h>

	extern long long int test(long long int  a, long long int  b, long long int  *m);

int main(void)
{
	long long int a, b, m, res;
	a = 5;
	b = 5;
	m = 0;
	res = test(a,b,&m);
	printf("O valor de m eh : %lld\n",m);

	a = 10;
	b = 3;
	m = 0;

	res = test(a,b,&m);
	printf("O valor de m eh : %lld\n",m);

	a = 3;
	b = 10;
	m = 0;

	res = test(a,b,&m);
	printf("O valor de m eh : %lld\n",m);

	return 0;
}
