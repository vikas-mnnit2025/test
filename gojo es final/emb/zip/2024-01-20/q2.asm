;Addition of 2 16bit numbers

MOV R0, 10H
MOV R1, 11H
MOV R3, 20H
MOV R4, 21H

MOV R5, #00H
MOV A, #00H

ADD A, R4
ADD A, R1

JNC SKIP1
INC R5
SKIP1:   MOV 31H, A
         MOV A, #00H
         ADD A, R3
         ADD A, R5
         JC SKIP2
         MOV R5, #00H
         SKIP2:    ADD A, R0
                   JNC SKIP3
                   INC R5
                   SKIP3:    MOV 30H, A
MOV 40H, R5
END
