//Peripherals mai Port Po kholkar input dena hai or P1 and P2 mai check karo kisme jara hai

#include <REG51.h> 
void main() { 
 unsigned char dataByte; 
 while(1) { 
 // Read byte of data from P0 
 dataByte = P0; 
 // Check if the data is less than 100 
 if (dataByte < 100) { 
 // If less than 100, send it to P1 
 P1 = dataByte; 
 } else { 
 // If not less than 100, send it to P2 
 P2 = dataByte; 
 } 
 } 
}