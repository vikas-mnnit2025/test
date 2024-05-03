; Subtraction of 16 bit numbers
MOV R0, 10H
MOV R1, 11H
MOV R3, 20H
MOV R4, 21H
MOV R5, #00H
MOV A, #00H
ADD A, R1
SUBB A, R4
JNC SKIP
INC R5
SKIP1:  MOV 31H, A
        MOV A, #00H
        ADD A, R0
        SUBB A, R5
        JC SKIP2:   SUBB A, R3
                    JNC SKIP3
                    INC R5
                    SKIP3:  MOV 30H, A
                            MOV 40H, R5
        