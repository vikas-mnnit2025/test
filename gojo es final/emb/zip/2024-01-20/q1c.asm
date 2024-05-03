;Subtraction using indirect addressing

MOV R1, 30H
MOV A, R1
MOV B, A

MOV R1, 20H
MOV A, R1
SUBB A, B

MOV R0, 00H
JNC SKIP
INC R0

SKIP:    MOV 22H, A
         MOV 23H, R0
END
