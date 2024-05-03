#Addition using indirect addressing

MOV R1, 30H
MOV A, R1
MOV B, A

MOV R1, 20H
MOV A, R1
ADD A, B

MOV 22H, A
END
