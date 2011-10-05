#include "iostream"
#include "math.h"

using namespace std;

long int is_prime(long int);
long int next_prime(long int);


int main()
{
	cout.precision(15);
	int n = 1;
	int p = 1;
	while (n < 100001){
		p = next_prime(p);
		n++;
		//cout << n << ". " << p << endl;
	}
	cout << p;
	return 0;
	
}

long int is_prime(long int n){
	if (n%6 == 1 || n%6 == 5){
		for (int i = 5;i<=ceil(sqrt(n));i = i+2)
			if (n%i == 0) return 0;
		return 1;
	}
	else{
		if (n == 2) return 1;
		if (n == 3) return 1;
		return 0;	
	}
			
}

long int next_prime(long int n){
	if (n%2 == 0)
		n += 1;
	while (1){
		n += 2;
		if (is_prime(n) == 1)
			break;
	}
	return n;
}

