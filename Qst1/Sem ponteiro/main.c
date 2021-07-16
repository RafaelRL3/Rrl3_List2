#include <stdio.h>

	extern long long int test(long long int  a, long long int  b, long long int  m);

int main(void)
{
	long long int  a = test(5, 5, 0);
	printf("Result of test(5, 5, 0) = %lld\n", a);

	a = test(10, 3, 0);
	printf("Result of test(10, 3, 0) = %lld\n", a);

	a = test(3, 10, 0);
	printf("Result of test(3, 10, 0) = %lld\n", a);

    return 0;
}
