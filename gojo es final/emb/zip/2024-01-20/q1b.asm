#Subtraction using direct addressing

MOV A, #073H 
MOV B, #0BDH
SUBB A, B

MOV R0, 00H
JNC SKIP
INC R0

SKIP:    MOV 22H, A
         MOV 23H, R0
END
