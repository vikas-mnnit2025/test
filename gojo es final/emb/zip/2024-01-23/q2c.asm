;Multiplication using indirect addressing

MOV R1, 10H
MOV A, @R1
MOV B, A

MOV R1, 11H
MOV A, @R1
MUL AB

MOV 20H, A
MOV 21H, R1
END

