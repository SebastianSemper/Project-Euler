#include <stdio.h>
#include <iostream>
#include <math.h>

using namespace std;

int main(){
    long unsigned int res = 0;
    long unsigned int n = 285; long unsigned int m = 165; long unsigned int l = 143;
    long unsigned int n1 = n; long unsigned int m1 = m; long unsigned int l1 = l;
    while (res == 0){
    	n1++;
    	l1 = l;
    	while (2*l1*(2*l1-1) < n1*(n1 + 1)){
    		l1++;
    		if (2*l1*(2*l1-1) == n1*(n1 + 1)){
    			//cout << l1 << "/" << n1 << endl;   			
    			l = l1;
    			while (m1*(3*m1-1) < n1*(n1+1)){
    				m1++;
    				if (m1*(3*m1-1) == n1*(n1+1)){
    					cout << "hithit" << endl;
    					res = n1*(n1+1)/2;
    				}
    			}
    		}
    	}
    
    }
    cout << "Ergebnis: " << res << endl;
    return 0;
}
