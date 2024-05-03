//Peripherals mai Port1 mai output ajyega 20+14=34
#include<reg51.h>

void main(void) {

unsigned char x,y,z;

x=0x20;

y=0x14;

// declare port 1 as ouput port to show the result

P1=0x10;

z=x+y;

P1=z;
}