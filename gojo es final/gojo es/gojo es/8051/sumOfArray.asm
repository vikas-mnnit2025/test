ORG 0000H;
MOV R1,#50H;
MOV R0,#60H;
MOV @R0,#0H;
MOV A,@R1;
MOV R4,A;
repeat: INC R1;
MOV A,@R0;
ADD A,@R1;
MOV @R0,A;
DJNZ R4,repeat;
SJMP $;
END;
;50 pe size of array daalo, uske baad numbers daaldo ek ek location pe consecutively