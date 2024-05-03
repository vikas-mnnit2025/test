MOV DPTR, #FFh ; Load the address of the first data into DPTR
MOVX A, @DPTR ; Move the data from the address pointed by DPTR to accumulator A
INC DPTR ; Increment DPTR to point to the next data
MOV R2, A ; Move the data from accumulator A to register R2
MOV DPTR, #F0h ; Load the address of the second data into DPTR
MOVX A, @DPTR ; Move the data from the address pointed by DPTR to accumulator A
ADD A, R2 ; Add the data in accumulator A with the data in register R2
MOV R3, A ; Move the result to register R3
MOV A, R3 ; Move the result from register R3 to accumulator A
MOV DPTR, #2Ah ; Load the address of the result into DPTR
MOVX @DPTR, A ; Move the result from accumulator A to the address pointed by DPTR
END
