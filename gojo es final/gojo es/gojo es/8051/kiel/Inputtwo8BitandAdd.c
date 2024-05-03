
//Peripherals mai Port1,Port2 take input , Port3 mai output
#include<reg51.h>

void main(void) {

unsigned long x,y,z;

x=P1;

y=P2;

z=x+y;

P3=z;
}