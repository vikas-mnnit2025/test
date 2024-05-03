MOV R0,#50H;     ; Load the starting address of the source block into R0
MOV A,@R0;       ; Move the byte at the memory location pointed to by R0 into accumulator A
MOV R4,A;        ; Copy the byte from A to R4 (R4 keeps track of the number of bytes to transfer)
INC R0;          ; Increment R0 to point to the next byte in the source block
MOV R1,#61H;     ; Load the starting address of the destination block into R1

repeat:          ; Label for the loop
MOV A,@R0;       ; Move the byte at the memory location pointed to by R0 into accumulator A
MOV @R1,A;       ; Move the byte in A to the memory location pointed to by R1
INC R0;          ; Increment R0 to point to the next byte in the source block
INC R1;          ; Increment R1 to point to the next byte in the destination block
DJNZ R4,repeat;  ; Decrement R4 and jump back to "repeat" if it's not zero

SJMP $;          ; Infinite loop to halt execution
END;             ; End of the program
