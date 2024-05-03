;16 BIT ADDITION

MOV R0, #010H
MOV R1, #011H
MOV R3, #020H
MOV R4, #021H

MOV R5, #00H
MOV A, #00H

ADD A, R4
ADD A, R1

JNC SKIP1
INC R5
SKIP1:   MOV P0, A
         MOV A, #00H
         ADD A, R3
         ADD A, R5
         JC SKIP2
         MOV R5, #00H
         SKIP2:    ADD A, R0
                   JNC SKIP3
                   INC R5
                   SKIP3:    MOV P1, A
MOV P3, R5
END