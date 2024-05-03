;Division using indirect addressing

MOV R0, 20H
MOV A, R0

MOV R1, 21H
MOV B, R1

DIV AB
MOV 10H, A
MOV 11H, B
END
