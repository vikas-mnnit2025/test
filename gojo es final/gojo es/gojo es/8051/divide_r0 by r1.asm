                   Mov a, r0                     ; get the content of r0 and r1

                        Mov b, r1                     ; in register A and B

                        Div ab                          ; divide A by B

                        Mov r2, a                     ; store result in r2

                        Mov r3, b                     ; and reminder in r3

                        Mov b, r1                     ; again get content of r1 in B

                        Mul ab                         ; multiply it by answer

                        Add a, r3                     ; add reminder in new answer

                        Mov r0, a                     ; finally restore the content of r0