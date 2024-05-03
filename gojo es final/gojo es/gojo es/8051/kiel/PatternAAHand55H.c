// Peripherals mai Port P1 khol lo uske baad usme dikh jayega
#include <REG51.h> 
// Delay function 
void delay(unsigned int ms) { 
 unsigned int i, j; 
 for (i = 0; i < ms; i++) 
 for (j = 0; j < 1000; j++); // Adjust this loop for 1 ms delay 
} 
void main() { 
 while(1) { 
 P1 = 0xAA; // Display AAh pattern on P1 
 delay(100); // Delay of 100 milliseconds 
 P1 = 0x55; // Display 55h pattern on P1 
 delay(100); // Delay of 100 milliseconds 
 } 
} 