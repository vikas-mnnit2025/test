#include <reg51.h>

void fibonacci(int n){
		unsigned int a=0, b=1, c=0;
		int i, j, k;
		for(i=0; i<n; i++){
				if(i<=1)
						c=i;
				else
				{
						a = b;
						b = c;
						c = a + b ;
						
				}
				P3 = c;
				
				for(j=0; j<10000; j++){
						for(k=0; k<100; k++);
				}
				
		}	
}
		
void main(){
		unsigned int input;
		while(1){
				input = P1;
				fibonacci(input);
		}
}