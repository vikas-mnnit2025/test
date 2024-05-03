mov r1, #00h ; to count number of 0s
mov r2, #00h ;// to count number of 1s
mov r7, #08h ;// counter for 8-bits
mov a, #97h ;// data to count number of 1s and 0s
again: rlc a
jc next
inc r1
sjmp here
next: inc r2
here: djnz r7,again
end 
;no.of zeroes=r2
; no.of ones=r1