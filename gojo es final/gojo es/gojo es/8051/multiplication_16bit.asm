MOV DPTR, #FFh ; Load the address of the first data into DPTR
MOVX A, @DPTR ; Move the data from the address pointed by DPTR to accumulator A
MOV R2, A ; Move the data from accumulator A to register R2
MOV DPTR, #02h ; Load the address of the second data into DPTR
MOVX A, @DPTR ; Move the data from the address pointed by DPTR to accumulator A
MOV R3, A ; Move the data from accumulator A to register R3
MOV A, R2 ; Move the data from register R2 to accumulator A
MUL AB ; Multiply the data in accumulator A with the data in register B (R3)
MOV R4, A ; Move the lower byte of the result to register R4
MOV R5, B ; Move the upper byte of the result to register R5
MOV A, R4 ; Move the lower byte of the result from register R4 to accumulator A
MOV DPTR, #31h ; Load the address of the lower byte of the result into DPTR
MOVX @DPTR, A ; Move the lower byte of the result from accumulator A to the address pointed by DPTR
MOV A, R5 ; Move the upper byte of the result from register R5 to accumulator A
MOV DPTR, #32h ; Load the address of the upper byte of the result into DPTR
MOVX @DPTR, A ;Move the upper byte of the result from accumulator A to the address pointed by DPTR
END