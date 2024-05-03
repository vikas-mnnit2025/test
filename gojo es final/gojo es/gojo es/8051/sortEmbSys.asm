ORG 0000H
MOV R7,#10H
loop1:MOV R0,#40H
 MOV R6,#10H
loop:MOV A,@R0
 INC R0
 MOV 50H,@R0
 CJNE A,50H,next
 SJMP down
next:JC down
 MOV @R0,A
 DEC R0
 MOV @R0,50H
down:DJNZ R6,loop
 DJNZ R7,loop1
END 
;emb sys ki ascii values 40 se daalte jaao