
//Peripherals mai Port P0,P2 khol lena uske baad run karna dikh jayega toggle
#include <reg51.h>
sfr P0_PORT = 0x80; 
sfr P2_PORT = 0xA0;
void delay_ms(unsigned int ms) { 
unsigned int i, j;
for (i = 0; i < ms; i++) {
for (j = 0; j < 127; j++); // Loop for approximate delay (adjust for crystal frequency) 
}
}
void main(void) { 
while (1) {
P0_PORT = ~P0_PORT; // Toggle all bits of P0 using inverting operator 
P2_PORT ^= 0xFF; // Toggle all bits of P2 using Ex-OR operator with 0xFF 
delay_ms(250); // Delay for 250 ms
}
}
