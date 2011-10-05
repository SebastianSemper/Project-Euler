#include <stdio.h>
#include <iostream>
#include <math.h>

using namespace std;

int p_th_digit(int,int);

int main(){
    double res = 0;
    int l1;
    unsigned int n = 1000;
    unsigned int x = 0;
    bool r = true;
    int st_anz[6][10];
    while (res == 0){
    	for (int i = 0; i<=5; i++)
    		for (int j = 0; j<=9; j++)
				st_anz[i][j] = 0;
		
    	n++;
    	r = true;
    	l1 = (int)log10(6*n);   	
    	if (l1 == (int)log10(n)){
    		//Anzahl der Stellen ist gleich
    		for (int i = 0; i<= 3; i++)
    			for (int j = 1; j <= l1+1; j++)
    				st_anz[i][p_th_digit(n*(i+1),j)] += 1;
    				
    		for (int i = 1; i<= 3; i++)
    			for (int j = 0; j <= 9; j++)
    				if (r == true)
						if (st_anz[0][j] != st_anz[i][j])
							r = false;
    	}
    	else{
    		r = false;
    	}
    	if (r == true){
    		res = n;
    	}      		
    }
    
    cout << "Ergebnis: " << res << endl;
    return 0;
}



int p_th_digit(int n, int p){
	return ((n-(int(n/pow(10,p)))*pow(10,p))/pow(10,p-1));
}
