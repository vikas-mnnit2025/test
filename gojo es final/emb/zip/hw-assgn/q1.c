// toggle bits of 8051 ports continuously with 250ms delay

#include <REG51.h>

// Define SFR (Special Function Register) addresses for ports
sfr P0 = 0x80;
sfr P1 = 0x90;
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
        P0 = ~P0; // Toggle all bits of Port 0
        P1 = ~P1; // Toggle all bits of Port 1
        P2 = ~P2; // Toggle all bits of Port 2
        delay(250); // Delay of 250 ms
    }
}
