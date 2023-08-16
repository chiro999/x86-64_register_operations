section .data
    result db 0      ; Store the result in a variable

section .text
    global _start

_start:
    mov ax, 7        ; Load value 7 into AX(this time we are using the full 16-bits) register
    add ax, 3        ; Add value 3 to AX register
    mov [result], ax ; Store the result in the 'result' variable