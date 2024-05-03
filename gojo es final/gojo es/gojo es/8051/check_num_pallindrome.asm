	mov dptr,#8000 ; enter the number to be checked here
	movx a,@dptr
	mov r1,a
	mov b,#0
	mov r0,#8
loop:
	rrc a
	mov r1,a
	mov a,b
	rlc a
	mov b,a
	mov a,r1
	djnz r0,loop
	movx a,@dptr
	inc dptr
	subb a,b
	jz nott
	mov a,#0
	jmp endpp
nott:	mov a,#1
	movx @dptr,a
endpp:	sjmp endpp ; answer is stored in accumulator

