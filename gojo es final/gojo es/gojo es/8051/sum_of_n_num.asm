MOV A,#08H; enter the value
MOV B,A;
INC B;
MUL AB;
MOV B,#2;
DIV AB;
MOV R0,A; answer is stored in R0
END;