;Division using immediate addressing

MOV A, #00EH
MOV B, #003H
DIV AB
MOV 10H, A
MOV 11H, B
END
