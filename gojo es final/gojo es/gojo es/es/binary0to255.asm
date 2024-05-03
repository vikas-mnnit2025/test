 ORG 0x0000 
 MOV P1, #0x00 
 LOOP_UP: 
 MOV A, P1 
 INC A 
 MOV P1, A 
 ACALL DELAY 
 CJNE A, #0xFF, LOOP_UP 
 LOOP_DOWN: 
 MOV A, P1 
 DEC A 
 MOV P1, A 
 ACALL DELAY 
 JNZ LOOP_DOWN 
 SJMP LOOP_UP 
DELAY: 
 MOV R2, #0xFF 
 DELAY_LOOP: 
 NOP 
 NOP 
 NOP 
 DJNZ R2, DELAY_LOOP 
 RET 
 END 