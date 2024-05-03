ORG 0H      ; Start address

MOV R0, #0H ; Initialize R0 to 0

LOOP:
    ; Display 1st digit (Thousands place)
    MOV A, #01H ; Load A with 1st digit (1)
    MOV P1, A   ; Display 1 on 7-segment display
    CALL DELAY  ; Delay for a short period

    ; Display 2nd digit (Hundreds place)
    MOV A, #02H ; Load A with 2nd digit (2)
    MOV P1, A   ; Display 2 on 7-segment display
    CALL DELAY  ; Delay for a short period

    ; Display 3rd digit (Tens place)
    MOV A, #03H ; Load A with 3rd digit (3)
    MOV P1, A   ; Display 3 on 7-segment display
    CALL DELAY  ; Delay for a short period

    ; Display 4th digit (Ones place)
    MOV A, #04H ; Load A with 4th digit (4)
    MOV P1, A   ; Display 4 on 7-segment display
    CALL DELAY  ; Delay for a short period

    SJMP LOOP   ; Repeat the loop

DELAY:
    ; Delay subroutine
    ; Implement a delay here, e.g., using a loop
    RET

END
