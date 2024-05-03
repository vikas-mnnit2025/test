 #include<reg51.h> 
int main(){ 
 int x=P0; 
 int i; 
 for(i=0x01;i<=P0/2;i++){ 
 if(i*i == x){ 
 P1=i; 
 break; 
 } 
 } 
 return 0; 
} 