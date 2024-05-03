// count 1's in 16bit number

#include <REG51.h>

// Define the connections
sbit A0 = P1^0; // LSB of the 16-bit binary data
sbit A1 = P1^1; // MSB of the 16-bit binary data
sbit display = P2^0; // Seven-segment display enable pin
sbit segA = P2^1; // Seven-segment display segment A
sbit segB = P2^2; // Seven-segment display segment B
sbit segC = P2^3; // Seven-segment display segment C
sbit segD = P2^4; // Seven-segment display segment D
sbit segE = P2^5; // Seven-segment display segment E
sbit segF = P2^6; // Seven-segment display segment F
sbit segG = P2^7; // Seven-segment display segment G

void delay(unsigned int time) {
    unsigned int i, j;
    for (i = 0; i < time; i++)
        for (j = 0; j < 1275; j++);
}

void displayDigit(unsigned char digit) {
    switch (digit) {
        case 0:
            segA = segB = segC = segD = segE = segF = 1;
            segG = 0;
            break;
        case 1:
            segB = segC = 1;
            segA = segD = segE = segF = segG = 0;
            break;
        // Add cases for digits 2 to 9
        // ...
        default:
            // Handle invalid digits
            break;
    }
}

void main() {
    unsigned int data;
    unsigned char count = 0;

    while (1) {
        // Read 16-bit binary data from ports
        data = (A1 << 8) | A0;

        // Count the number of 1's in the binary data
        count = 0;
        while (data) {
            count += data & 1;
            data >>= 1;
        }

        // Display the count on the seven-segment display
        display = 1; // Enable the display
        displayDigit(count); // Display the count
        delay(1000); // Delay for visibility
        display = 0; // Disable the display
    }
}
