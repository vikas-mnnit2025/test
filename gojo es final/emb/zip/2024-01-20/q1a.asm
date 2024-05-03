#Subtraction using immediate addressing

MOV A, #025H
MOV B, #014H
SUBB A, B

MOV R0, 00H
JNC SKIP
INC R0

SKIP:    MOV 22H, A
         MOV 23H, R0
END
