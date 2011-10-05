#include <stdio.h>
#include <iostream>
#include <math.h>

using namespace std;

int divisor_sum(int);

int main(){
    long unsigned int res = 0;
    int n = 0;
    int c;
    int a[28124];
    a[0] = 0;
    int b[7000];
    for (int i = 1; i <= 28123; i++){
        a[i] = i;
        if (i < divisor_sum(i)){
        	b[n] = i;
        	n++;
        }
        
    }
    for (int i = 0; i < n; i++){
        for (int j = i; j < n; j++){
        	c = b[i] + b[j];
        	if (c <= 28123){
        		a[c] = 0;
        	}
        }
    }
    cout << a[25] << endl;
    for (int i = 1; i <= 28123; i++){
    	res += a[i];
    }
    cout << "Ergebins: " << res << endl;
    return 0;
}

int divisor_sum(int a){
    int sum = 1;
    for (int i = 2; i <= int(sqrt(a)); i++){
       if (a % i == 0){
            if (i != a/i){
                sum += i + a/i;
            }
            else{
                sum += i;
            }
       }
    }
    return sum;
}
