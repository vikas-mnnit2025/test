
//Peripherals mai Port P0,P1,P2 mai run karne ke baad outout ajyega
#include <REG51.h> 
void main() { 
 unsigned char hexNumber = 0xFD; // Hexadecimal number FD 
 unsigned char digitP0, digitP1, digitP2; 
 // Extract individual digits from the hexadecimal number 
 digitP0 = hexNumber % 10; // Ones place 
 hexNumber /= 10; 
 digitP1 = hexNumber % 10; // Tens place 
 hexNumber /= 10; 
 digitP2 = hexNumber % 10; // Hundreds place 
 // Display digits on P0, P1, and P2 
 P0 = digitP0; 
 P1 = digitP1; 
 P2 = digitP2; 
}