
//Port po,p1,p2 khol lo uske baad run karlo 0 and FF toggle hote hue dikh jayega
#include <reg51.h>
sfr P0_PORT = 0x80; 
sfr P1_PORT = 0x90; 
sfr P2_PORT = 0xA0;
void delay_ms(unsigned int ms) { 
unsigned int i, j;
for (i = 0; i < ms; i++) {
for (j = 0; j < 127; j++); // Loop for approximate delay (adjust for crystal frequency) 
}
}
void main(void) { 
while (1) {
P0_PORT = 0xFF; // Set all bits of P0 to 1 (high) 
P1_PORT = 0xFF; // Set all bits of P1 to 1 (high) 
P2_PORT = 0xFF; // Set all bits of P2 to 1 (high) 
delay_ms(250); // Delay for 250 ms
P0_PORT = 0x00; // Set all bits of P0 to 0 (low) 
P1_PORT = 0x00; // Set all bits of P1 to 0 (low) 
P2_PORT = 0x00; // Set all bits of P2 to 0 (low) 
delay_ms(250); // Delay for 250 ms
}
}