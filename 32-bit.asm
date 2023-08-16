section .data
    result dd 0      ; Store the result in a variable

section .text
    global _start

_start:
    mov eax, 7        ; Load value 7 into EAX register
    add eax, 3        ; Add value 3 to EAX register
    mov [result], eax ; Store the result in the 'result' variable