// toggle bits of 8051 ports continuously with 250ms delay using XOR

#include <REG51.h>

// Define SFR (Special Function Register) addresses for ports
sfr P0 = 0x80;
sfr P2 = 0xA0;

void delay(unsigned int milliseconds)
{
    unsigned int i, j;
    for (i = 0; i < milliseconds; i++)
        for (j = 0; j < 122; j++); // Delay loop
}

void main()
{
    while (1)
    {
        P0 = ~P0; // Toggle all bits of Port 0 using the inverting operator
        P2 = P2 ^ 0xFF; // Toggle all bits of Port 2 using the XOR operator
        delay(250); // Delay of 250 ms
    }
}
