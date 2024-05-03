
//Peripherals mai Port1,Port2 check karo
#include<reg51.h>

void main(void){

unsigned long x,y,z;

x=0x0210;

// declare port 1 as ouput port to show the re

P1=0;

P2=0;

z=x+y;

P1=z;

P2=z>>8;
}