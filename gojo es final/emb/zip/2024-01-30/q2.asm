; Sum of first N natural numbers

MOV A, R0
MOV B, A
INC B

MUL AB
MOV B, #02H
DIV AB

MOV 20H, A
MOV 21H, B
END
