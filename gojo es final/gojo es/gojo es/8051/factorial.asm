
; factorial of a given number
; input:R0
; output: BA
ORG 0H	
MAIN:		
MOV R0,#05	;Input number
MOV A,R0	
LCALL FACT	
SJMP $	
FACT:	CJNE R0,#01,loop	
RET	
loop:	DEC R0	
MOV B,R0	
MUL AB	
LJMP FACT	
END