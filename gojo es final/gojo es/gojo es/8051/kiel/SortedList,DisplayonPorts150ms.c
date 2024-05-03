//Peripherals mai PORT0,1,2,3 khol lo uske baad usme run karne ke baad sorted sequence mai 0,1,2,3 mai display hoga values
#include<reg51.h> 
void delay(){ 
int i,j,k; 
for(i=0;i<150;i++){ 
 for(j=0;j<100;j++){ 
 for(k=0;k<100;k++){} 
 } 
} 
} 
void insertionSort(int arr[], int n) 
{ 
 int i, key, j; 
 for (i = 1; i < n; i++) { 
 key = arr[i]; 
 j = i - 1; 
 
 while (j >= 0 && arr[j] > key) { 
 arr[j + 1] = arr[j]; 
 j = j - 1; 
 } 
 arr[j + 1] = key; 
 } 
} 
int main(){ 
 int arr[10]; 
 int i,j; 
 arr[0]=0x12; 
 arr[1]=0x42; 
 arr[2]=0x23; 
 arr[3]=0x2C; 
 arr[4]=0x07; 
 arr[5]=0x21; 
 arr[6]=0xE2; 
 arr[7]=0x63; 
 arr[8]=0x40; 
 arr[9]=0x58; 
 
 insertionSort(arr,10); 
 
 for(i=0x00;i<0x0A;i++){ 
 if(i%4==0x00) P0=arr[i]; 
 else if(i%4==0x01) P1=arr[i]; 
 else if(i%4==0x02) P2=arr[i]; 
 else P3=arr[i]; 
 delay(); 
 } 
return 0; 
} 
