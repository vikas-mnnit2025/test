;ALP to count how many times 'D' 
;occurs in "EMBEDDED SYSTEMS" 
MOV R0,#40H; array starting address 
MOV R1,#10H ; array size 
MOV R2,#00H; counter variable 
MOV R3,#44H 
LOOP: MOV A,@R0; 
INC R0 
CLR C 
SUBB A,R3 
JNZ SKIP 
INC R2 
SKIP: DJNZ R1,LOOP