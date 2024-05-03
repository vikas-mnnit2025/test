#include<reg51.h>

void main(void) {

unsigned long x,y,r,z,s,t;

x=P0;

y=P1;

r=P2;

s=P3;
z=x+r;
t=y+s;

P2=z;

P3=t;
}