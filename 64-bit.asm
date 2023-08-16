section .data
    result dq 0      ; Store the result in a variable

section .text
    global _start

_start:
    mov rax, 7        ; Load value 7 into RAX(in x86-64 8 more special purpose registers with prefix 'r' were introduced) register
    add rax, 3        ; Add value 3 to RAX register
    mov [result], rax ; Store the result in the 'result' variable