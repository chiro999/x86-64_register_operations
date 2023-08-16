section .data
    result dd 0         ; Store the result in a variable

section .text
    global _start

_start:
    pxor mm0, mm0       ; Set all elements of mm0 to 0 (clear register)
    movd mm1, dword [seven] ; Load value 7 into mm1
    movd mm2, dword [three] ; Load value 3 into mm2
    paddd mm0, mm1      ; Add mm1 to mm0
    paddd mm0, mm2      ; Add mm2 to mm0
    movd [result], mm0  ; Store the result in the 'result' variable