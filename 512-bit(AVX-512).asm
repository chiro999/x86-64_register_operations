section .data
    result dq 0         ; Store the result in a variable

section .text
    global _start

_start:
    vpxorq zmm0, zmm0, zmm0 ; Set all elements of zmm0(in AVX-512(512-bit mode) more special registers known as zmm registers were introduced) to 0 (clear register)
    vpaddd zmm0, zmm0, [seven] ; Add value 7 to all elements of zmm0
    vpaddd zmm0, zmm0, [three] ; Add value 3 to all elements of zmm0
    vmovdqu64 [result], zmm0    ; Store the result in the 'result' variable