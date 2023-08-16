section .data
    result dd 0      ; Store the result in a variable

section .text
    global _start

_start:
    vmovd xmm0, dword 7        ; Load value 7 into xmm0(in AVX(128-bit mode) more special registers known as xmm registers were introduced) register
    vpaddd xmm0, xmm0, dword 3 ; Add value 3 to xmm0 register
    vmovd [result], xmm0       ; Store the result in the 'result' variable