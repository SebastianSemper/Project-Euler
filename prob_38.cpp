#include <stdio.h>
#include <iostream>
#include <math.h>

using namespace std;

int main(){
	unsigned long res = 0;
	unsigned long  x = 0;
	for (long int i = 999999999; i >= 1000000; i--){
		x = i;
		for (int j = 2; j <= 9; j++){
			if (x % j != 0){
				x /= j;
				
			}
			else{
			
			}	
		
		}		
	}
	cout << "Ergebnis: " << res << endl;
	return 0;
}
