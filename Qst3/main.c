#include <stdio.h>
	typedef long long int ll;
	extern void test(ll *a, ll *b, ll *r); //X0 , X1 ... X7
int main(void)
{
	ll x10 = 0;
	ll x11 = 0xffffffffffffffff;
	ll r = 0;

	test(&x10, &x11, &r);

	printf("x10 = %llx x11 = %llx r = %llx", x10, x11, r);
	return 0;
}
