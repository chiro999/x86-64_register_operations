section .data
    result dq 0         ; Store the result in a variable

section .text
    global _start

_start:
    vpcmpeqd ymm0, ymm0, ymm0 ; Set all elements of ymm0(in AVX-2(256-bit mode) more special registers known as ymm registers were introduced) to 0 (clear register)
    vpaddd ymm0, ymm0, [seven] ; Add value 7 to all elements of ymm0
    vpaddd ymm0, ymm0, [three] ; Add value 3 to all elements of ymm0
    vmovdqu [result], ymm0    ; Store the result in the 'result' variable