; move block of data bytes
;with overlap
ORG 00H
START:
MOV R1, #10H; starting addr of src
MOV R2,#20H; ending addr of src
MOV R0,#15H; starting addr of desti
CLR C
MOV A,R2
SUBB A, R1
MOV R2,A ; determination of sizeAnd stored in R2
MOV A, R1
ADD A,R2
MOV R1, A ; end addr of src
MOV A,R0
ADD A,R2
MOV R0, A ; end addr of desti
INC R2
LOOP: MOV A,@R1
MOV @R0, A ; copy data byte
DEC R1
DEC R0
DJNZ R2, LOOP
SJMP $
END
