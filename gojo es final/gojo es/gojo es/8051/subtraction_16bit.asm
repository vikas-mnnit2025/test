MOV DPTR, #FFh ; Load the address of the minuend into DPTR
MOVX A, @DPTR ; Move the data from the address pointed by DPTR to accumulator A
MOV R2, A ; Move the data from accumulator A to register R2
MOV DPTR, #F0h ; Load the address of the subtrahend into DPTR
MOVX A, @DPTR ; Move the data from the address pointed by DPTR to accumulator A
CPL A ; Take the one's complement of the subtrahend
INC A ; Add 1 to get the two's complement
ADD A, R2 ; Add the two's complement of the subtrahend to the minuend
MOV R3, A ; Move the result to register R3
MOV A, R3 ; Move the result from register R3 to accumulator A
MOV DPTR, #2Ah ; Load the address of the result into DPTR
MOVX @DPTR, A ; Move the result from accumulator A to the address pointed by DPTR
END
