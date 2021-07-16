#include <stdio.h>

	extern long long int test(long long int  a, long long int  b, long long int  c, long long int x);

int main(void)
{
	long long int a, b, c, x, res;
 	a = 0;
 	b= 20;
 	c = 25;
	res = test(a ,b , c, x);
	printf("%lld\n", res);
	return 0;
}
