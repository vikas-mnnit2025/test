ORG 0000H
START: MOV P1, #00000000B
LOOP: MOV A, P1
CPL A
MOV P1, A
CALL DELAY
SJMP LOOP
DELAY: MOV R2, #0FFH
L1: DJNZ R2, L1
RET
ENd