ORG 0000h
LJMP MAIN
ORG 40h
MAIN:  MOV R1,#0XA0        ;memory faddress rom where all numbers to be checked are stored
       MOV R0,#10H         ; memory address to store all the prime numbers from an array.
       MOV R2,#10          ; length of array
LABEL5:MOV A,@R1
       MOV B,#02
       DIV AB              ;Dividing the number by 2
       MOV R3,A
       CJNE R3,#01H,LABEL2 ;Checking whether the number is 2
       MOV @R0,A
       INC R0
       SJMP LABEL4
LABEL1:DEC R3              ; decrementing and checking whether the number is not divisible by all possible values of number/2
       CJNE R3,#01H,LABEL2
       MOV B,@R1
       MOV @R0,B           ; moving the prime number to the array
       INC R0
       SJMP LABEL4
LABEL2:MOV A,@R1
       MOV B,R3
       DIV AB
       MOV R4,B
       CJNE R4,#0H,LABEL1   ; checking whether the number is divisible any number
LABEL4:INC R1
       DEC R2
       CJNE R2,#0H,LABEL5   ; verifying whether the counter has reacged to zero
       END