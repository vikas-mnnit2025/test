//Peripherals mai Port0 mai input do and output ayega port3 mai with delay of 100ms

#include<reg51.h> 
 void delay(){ 
 int i,j,k; 
 for(i=0;i<1000;i++){ 
 for(j=0;j<100;j++){ 
 for(k=0;k<100;k++) 
 {} 
 } 
 } 
 
 return; 
} 
int main(){ 
 int i,x,res,y,z; 
 x=P0; 
 y=0x00; 
 z=0x01; 
 P3=y; 
 delay(); 
 P3=z; 
 delay(); 
 
 for(i=0x02;i<=x;i++){ 
 P3=y+z; 
 delay(); 
 y=z; 
 z=P3; 
 } 
 return 0; 
} 