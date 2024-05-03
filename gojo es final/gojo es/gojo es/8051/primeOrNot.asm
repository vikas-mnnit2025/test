ORG 0000H;
MOV R1,#02H;
check:MOV A,50H;
MOV B,R1;
DIV AB;
MOV A,B;
JZ notPrime;
INC R1;
MOV A,R1;
CJNE A,50H,check;
MOV 51H,#1;
SJMP $;
notPrime: MOV 51H,#0;
SJMP $;
END;
;50 pe number to be checked daalo aur run and wait answer 51 pe aaega (either 00 or 01)