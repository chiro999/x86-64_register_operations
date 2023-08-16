section .data
    result db 0      ; Store the result in a variable

section .text
    global _start

_start:
    mov al, 7        ; Load value 7 into AL(lower 8-bits of the AX register) register 
    add al, 3        ; Add value 3 to AL register
    mov [result], al ; Store the result in the 'result' variable
