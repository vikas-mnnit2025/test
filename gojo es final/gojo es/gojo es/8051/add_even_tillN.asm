ORG 0000H  ; Starting address

MOV R0, #00H ; Initialize R0 to 0 (sum of even numbers)
MOV R1, #05H ; Load the value of N into R1 (you can change 05H to your desired value of N)

LOOP:
    MOV A, R1  ; Move the value of N to accumulator A
    DEC A       ; Decrement A to get the previous number
    JZ DONE     ; If A becomes zero, exit the loop

    ANL A, #01H ; Check if the number is odd by checking the LSB
    JNZ SKIP    ; If odd, skip adding it to the sum
   ADD A, R0 ; Add the even number to the sum in R0

SKIP:
    DJNZ R1, LOOP ; Decrement R1 and loop back

DONE:
    MOV A, R0   ; Move the sum to accumulator A
    ADD A, #30H ; Convert the sum to ASCII character
    MOV R2, A   ; Move ASCII sum to R2

    MOV A, #03H ; Load AH with 03H (for output)
    CALL 03H    ; Call subroutine to print the ASCII character in R2

    MOV A, #04H ; Load AH with 04H (for newline)
    CALL 03H    ; Call subroutine to print newline

    SJMP $      ; Infinite loop

END
