ORG 0000H
MOV R0, #05H ;Load total number of array element
MOV R1, #60H ;Make RL as a addreas pointer
MOV A, #00H
MOV R2, #00H 
LOOP1 : ADD A, @R1
JNC LOOP2 
LOOP2 : INC R1
DJNZ R0, LOOP1
MOV 70H, R2
MOV 71H,A ; answer is at 71H
END