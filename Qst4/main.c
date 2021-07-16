#include <stdio.h>
	typedef long long int ll;
	extern void test(ll *r, ll *b, ll *c); //X0 , X1 ... X7
int main(void)
{
	ll x11 = 0b110010;
	ll x10 = 0b111111;
	ll k = 0;
	test(&k, &x10, &x11);
	//espera que k seja igua a 001101 ou D
	printf("k = %llx \n",k);

	return 0;
}
