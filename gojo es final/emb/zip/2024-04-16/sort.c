#include <reg51.h>

#define delay_ms 150

void delay(unsigned int milliseconds)
{
		unsigned int i, j;
		for(i=0; i<milliseconds; i++)
				for(j=0; j<1275; j++);
}

void swap(int *xp, int *yp)
{
		int t = *xp;
		*xp = *yp;
		*yp = t;
}

void srt(int arr[], int n){
		int i, j;
		for(i=0; i<n-1; i++){
				for(j=0; j<n-i-1; j++){
						if(arr[j]>arr[j+1])
								swap(&arr[j], &arr[j+1]);
				}
		}
}

void main(){
		int arr[] = {5, 2, 8, 3, 1};
		int n=sizeof(arr)/sizeof(arr[0]);
		int i=0;
			
		srt(arr, n);
		while(1) {
				for(i=0; i<n; i++){
						P0 = arr[i];
						P1 = arr[i+1];
						P2 = arr[i+2];
						P3 = arr[i+3];
						delay(150);
				}
		}
}