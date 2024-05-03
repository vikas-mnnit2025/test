#Addition using direct addressing

MOV A, 20H
MOV B, 30H
MOV R1, #00
ADD A, B
JNC SKIP
INC R1
SKIP:	MOV 22H, A
		MOV 23H, R1
END
