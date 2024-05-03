;Bhai agar 00x0 pe total number of elements agaye hai to vo palindrome nahi hai
;Agar usme 0 ayega to vo palindrome hai
mov sp, #60h
mov r1, #30h
mov r4, #06h
mov r0, #00h
loop: mov b, @r1
push b
inc r1
djnz r4, loop
mov r1, #30h
mov r4, #06h
loop1: pop b
mov a, @r1
inc r1
subb a,b
jz loop3
inc r0
loop3: djnz r4, loop1
end