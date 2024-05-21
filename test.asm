        section .data
Fr_q:
        dd      0
        dd      0x80000000
Fr_rawq:
q       dq      0x43e1f593f0000001,0xc4b3b9b6e98c1091,0x9d42c9a1b8b48440,0xf5f3736b2f905770,0x95573fcb3eb2f267,0xb0d505b5fc467fb8,0xe4142c30502d989c,0x29cac010976f5884
half    dq      0xa1f0fac9f8000000,0x6259dcdb74c60848,0x4ea164d0dc5a4220,0xfaf9b9b597c82bb8,0x4aab9fe59f597933,0x586a82dafe233fdc,0x720a16182816cc4e,0x14e560084bb7ac42
R2      dq      0x4eb983d5e4df790b,0x192c6b218dea1f81,0x6356816d01df9e84,0xcb3a25f89c47fcd4,0xf527e68d29481173,0x7f8aec8c826de81f,0x946de939e091788e,0x287aab22585df021
Fr_R3:
        dd      0
        dd      0x80000000
Fr_rawR3:
R3      dq      0x54dfa5a3be7522c4,0xc3d384fc36d4e08c,0xd9a0b4e2d99a82e0,0x9ac732b4de918ff0,0xffd65257b8c32f38,0xe08568308fb645b1,0x39c06bd887c32be6,0x001b906577632ec8
lboMask dq      0x3fffffffffffffff
np      dq      0xc2e1f593efffffff

section .text
global rawMontgomeryMul_mulM
global rawMontgomerySquare

rawMontgomeryMul_mulM:

    push r15
    push r14
    push r13
    push r12
    push rsi
    push rdx
    push rbp

    mov     rbp, rsp
    sub     rsp, 8 * 8             ; Reserve space for ms
    mov     rcx, rdx            ; rdx is needed for multiplications so keep it in cx
    mov     r11, [ np ]
    xor     r8,r8
    xor     r9,r9
    xor     r10,r10

    mov     rax, [rsi + 0]
    mul     qword [rcx + 0]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, r8
    mul     r11
    mov     [rsp + 0], rax
    mul     qword [q]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rcx + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rcx + 0]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsp + 0]
    mul     qword [q + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, r9
    mul     r11
    mov     [rsp + 8], rax
    mul     qword [q]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rcx + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rcx + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rcx + 0]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsp + 8]
    mul     qword [q + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, r10
    mul     r11
    mov     [rsp + 16], rax
    mul     qword [q]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rcx + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rcx + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rcx + 8]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rcx + 0]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsp + 16]
    mul     qword [q + 8]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, r8
    mul     r11
    mov     [rsp + 24], rax
    mul     qword [q]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rcx + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rcx + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rcx + 16]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rcx + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rcx + 0]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsp + 24]
    mul     qword [q + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 16]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, r9
    mul     r11
    mov     [rsp + 32], rax
    mul     qword [q]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rcx + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rcx + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rcx + 24]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rcx + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rcx + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 40]
    mul     qword [rcx + 0]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsp + 32]
    mul     qword [q + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 24]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, r10
    mul     r11
    mov     [rsp + 40], rax
    mul     qword [q]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rcx + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rcx + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rcx + 32]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rcx + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rcx + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 40]
    mul     qword [rcx + 8]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 48]
    mul     qword [rcx + 0]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsp + 40]
    mul     qword [q + 8]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 32]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, r8
    mul     r11
    mov     [rsp + 48], rax
    mul     qword [q]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rcx + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rcx + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rcx + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rcx + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rcx + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 40]
    mul     qword [rcx + 16]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 48]
    mul     qword [rcx + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 56]
    mul     qword [rcx + 0]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsp + 48]
    mul     qword [q + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 16]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, r9
    mul     r11
    mov     [rsp + 56], rax
    mul     qword [q]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsi + 8]
    mul     qword [rcx + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rcx + 48]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rcx + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rcx + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 40]
    mul     qword [rcx + 24]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 48]
    mul     qword [rcx + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 56]
    mul     qword [rcx + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsp + 56]
    mul     qword [q + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 24]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 48]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     [rdi + 0 ], r10
    xor     r10,r10



    mov     rax, [rsi + 16]
    mul     qword [rcx + 56]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rcx + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rcx + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 40]
    mul     qword [rcx + 32]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 48]
    mul     qword [rcx + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 56]
    mul     qword [rcx + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsp + 56]
    mul     qword [q + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 32]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 56]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     [rdi + 8 ], r8
    xor     r8,r8



    mov     rax, [rsi + 24]
    mul     qword [rcx + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rcx + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 40]
    mul     qword [rcx + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 48]
    mul     qword [rcx + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 56]
    mul     qword [rcx + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsp + 56]
    mul     qword [q + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     [rdi + 16 ], r9
    xor     r9,r9



    mov     rax, [rsi + 32]
    mul     qword [rcx + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 40]
    mul     qword [rcx + 48]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 48]
    mul     qword [rcx + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 56]
    mul     qword [rcx + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsp + 56]
    mul     qword [q + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 48]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     [rdi + 24 ], r10
    xor     r10,r10



    mov     rax, [rsi + 40]
    mul     qword [rcx + 56]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 48]
    mul     qword [rcx + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 56]
    mul     qword [rcx + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsp + 56]
    mul     qword [q + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 56]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     [rdi + 32 ], r8
    xor     r8,r8



    mov     rax, [rsi + 48]
    mul     qword [rcx + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 56]
    mul     qword [rcx + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsp + 56]
    mul     qword [q + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     [rdi + 40 ], r9
    xor     r9,r9



    mov     rax, [rsi + 56]
    mul     qword [rcx + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsp + 56]
    mul     qword [q + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     [rdi + 48 ], r10
    xor     r10,r10







    mov     [rdi + 56 ], r8
    xor     r8,r8



    test    r9, r9
    jnz     rawMontgomeryMul_mulM_sq
    ; Compare with q

    mov rax, [rdi + 56]
    cmp rax, [q + 56]
    jc rawMontgomeryMul_mulM_done        ; q is bigget so done.
    jnz rawMontgomeryMul_mulM_sq         ; q is lower

    mov rax, [rdi + 48]
    cmp rax, [q + 48]
    jc rawMontgomeryMul_mulM_done        ; q is bigget so done.
    jnz rawMontgomeryMul_mulM_sq         ; q is lower

    mov rax, [rdi + 40]
    cmp rax, [q + 40]
    jc rawMontgomeryMul_mulM_done        ; q is bigget so done.
    jnz rawMontgomeryMul_mulM_sq         ; q is lower

    mov rax, [rdi + 32]
    cmp rax, [q + 32]
    jc rawMontgomeryMul_mulM_done        ; q is bigget so done.
    jnz rawMontgomeryMul_mulM_sq         ; q is lower

    mov rax, [rdi + 24]
    cmp rax, [q + 24]
    jc rawMontgomeryMul_mulM_done        ; q is bigget so done.
    jnz rawMontgomeryMul_mulM_sq         ; q is lower

    mov rax, [rdi + 16]
    cmp rax, [q + 16]
    jc rawMontgomeryMul_mulM_done        ; q is bigget so done.
    jnz rawMontgomeryMul_mulM_sq         ; q is lower

    mov rax, [rdi + 8]
    cmp rax, [q + 8]
    jc rawMontgomeryMul_mulM_done        ; q is bigget so done.
    jnz rawMontgomeryMul_mulM_sq         ; q is lower

    mov rax, [rdi + 0]
    cmp rax, [q + 0]
    jc rawMontgomeryMul_mulM_done        ; q is bigget so done.
    jnz rawMontgomeryMul_mulM_sq         ; q is lower

    ; If equal substract q

rawMontgomeryMul_mulM_sq:

    mov rax, [q + 0]
    sub [rdi + 0], rax

    mov rax, [q + 8]
    sbb [rdi + 8], rax

    mov rax, [q + 16]
    sbb [rdi + 16], rax

    mov rax, [q + 24]
    sbb [rdi + 24], rax

    mov rax, [q + 32]
    sbb [rdi + 32], rax

    mov rax, [q + 40]
    sbb [rdi + 40], rax

    mov rax, [q + 48]
    sbb [rdi + 48], rax

    mov rax, [q + 56]
    sbb [rdi + 56], rax


rawMontgomeryMul_mulM_done:

    ; Deallocate the reserved space on the stack
    mov rsp, rbp
    pop rbp
    pop rdx
    pop rsi
    pop r12
    pop r13
    pop r14
    pop r15
    ret


rawMontgomerySquare:
    push r15
    push r14
    push r13
    push r12
    push rsi
    push rdx
    push rbp

    mov     rbp, rsp
    sub     rsp, 8 * 8              ; Reserve space for ms
    mov     rcx, rdx                ; rdx is needed for multiplications so keep it in cx
    mov     r11, [ np ]             ; np
    xor     r8,r8
    xor     r9,r9
    xor     r10,r10



    mov     rax, [rsi + 0]
    mul     rax
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0







    mov     rax, r8
    mul     r11
    mov     [rsp + 0], rax
    mul     qword [q]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rsi + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0







    mov     rax, [rsp + 0]
    mul     qword [q + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, r9
    mul     r11
    mov     [rsp + 8], rax
    mul     qword [q]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rsi + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsi + 8]
    mul     rax
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0





    mov     rax, [rsp + 8]
    mul     qword [q + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, r10
    mul     r11
    mov     [rsp + 16], rax
    mul     qword [q]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rsi + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rsi + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0







    mov     rax, [rsp + 16]
    mul     qword [q + 8]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, r8
    mul     r11
    mov     [rsp + 24], rax
    mul     qword [q]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rsi + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rsi + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsi + 16]
    mul     rax
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0





    mov     rax, [rsp + 24]
    mul     qword [q + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 16]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, r9
    mul     r11
    mov     [rsp + 32], rax
    mul     qword [q]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rsi + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rsi + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rsi + 24]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0







    mov     rax, [rsp + 32]
    mul     qword [q + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 24]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, r10
    mul     r11
    mov     [rsp + 40], rax
    mul     qword [q]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rsi + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rsi + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rsi + 32]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsi + 24]
    mul     rax
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0





    mov     rax, [rsp + 40]
    mul     qword [q + 8]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 32]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, r8
    mul     r11
    mov     [rsp + 48], rax
    mul     qword [q]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsi + 0]
    mul     qword [rsi + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 8]
    mul     qword [rsi + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rsi + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rsi + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0







    mov     rax, [rsp + 48]
    mul     qword [q + 8]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 16]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 0]
    mul     qword [q + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, r9
    mul     r11
    mov     [rsp + 56], rax
    mul     qword [q]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsi + 8]
    mul     qword [rsi + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 16]
    mul     qword [rsi + 48]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rsi + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     rax, [rsi + 32]
    mul     rax
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0





    mov     rax, [rsp + 56]
    mul     qword [q + 8]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 16]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 24]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 48]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 8]
    mul     qword [q + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     [rdi + 0 ], r10
    xor     r10,r10



    mov     rax, [rsi + 16]
    mul     qword [rsi + 56]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 24]
    mul     qword [rsi + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rsi + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0







    mov     rax, [rsp + 56]
    mul     qword [q + 16]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 24]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 32]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 16]
    mul     qword [q + 56]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     [rdi + 8 ], r8
    xor     r8,r8



    mov     rax, [rsi + 24]
    mul     qword [rsi + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsi + 32]
    mul     qword [rsi + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsi + 40]
    mul     rax
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0





    mov     rax, [rsp + 56]
    mul     qword [q + 24]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 32]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 24]
    mul     qword [q + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     [rdi + 16 ], r9
    xor     r9,r9



    mov     rax, [rsi + 32]
    mul     qword [rsi + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsi + 40]
    mul     qword [rsi + 48]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0







    mov     rax, [rsp + 56]
    mul     qword [q + 32]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 40]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 48]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0

    mov     rax, [rsp + 32]
    mul     qword [q + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     [rdi + 24 ], r10
    xor     r10,r10



    mov     rax, [rsi + 40]
    mul     qword [rsi + 56]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     rax, [rsi + 48]
    mul     rax
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0





    mov     rax, [rsp + 56]
    mul     qword [q + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 48]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0

    mov     rax, [rsp + 40]
    mul     qword [q + 56]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    mov     [rdi + 32 ], r8
    xor     r8,r8



    mov     rax, [rsi + 48]
    mul     qword [rsi + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0







    mov     rax, [rsp + 56]
    mul     qword [q + 48]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0

    mov     rax, [rsp + 48]
    mul     qword [q + 56]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     [rdi + 40 ], r9
    xor     r9,r9





    mov     rax, [rsi + 56]
    mul     rax
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0





    mov     rax, [rsp + 56]
    mul     qword [q + 56]
    add     r10, rax
    adc     r8, rdx
    adc     r9, 0x0



    mov     [rdi + 48 ], r10
    xor     r10,r10











    mov     [rdi + 56 ], r8
    xor     r8,r8



    test    r9, r9
    jnz     rawMontgomerySquare_mulM_sq
    ; Compare with q

    mov rax, [rdi + 56]
    cmp rax, [q + 56]
    jc rawMontgomerySquare_mulM_done        ; q is bigget so done.
    jnz rawMontgomerySquare_mulM_sq         ; q is lower

    mov rax, [rdi + 48]
    cmp rax, [q + 48]
    jc rawMontgomerySquare_mulM_done        ; q is bigget so done.
    jnz rawMontgomerySquare_mulM_sq         ; q is lower

    mov rax, [rdi + 40]
    cmp rax, [q + 40]
    jc rawMontgomerySquare_mulM_done        ; q is bigget so done.
    jnz rawMontgomerySquare_mulM_sq         ; q is lower

    mov rax, [rdi + 32]
    cmp rax, [q + 32]
    jc rawMontgomerySquare_mulM_done        ; q is bigget so done.
    jnz rawMontgomerySquare_mulM_sq         ; q is lower

    mov rax, [rdi + 24]
    cmp rax, [q + 24]
    jc rawMontgomerySquare_mulM_done        ; q is bigget so done.
    jnz rawMontgomerySquare_mulM_sq         ; q is lower

    mov rax, [rdi + 16]
    cmp rax, [q + 16]
    jc rawMontgomerySquare_mulM_done        ; q is bigget so done.
    jnz rawMontgomerySquare_mulM_sq         ; q is lower

    mov rax, [rdi + 8]
    cmp rax, [q + 8]
    jc rawMontgomerySquare_mulM_done        ; q is bigget so done.
    jnz rawMontgomerySquare_mulM_sq         ; q is lower

    mov rax, [rdi + 0]
    cmp rax, [q + 0]
    jc rawMontgomerySquare_mulM_done        ; q is bigget so done.
    jnz rawMontgomerySquare_mulM_sq         ; q is lower

    ; If equal substract q

rawMontgomerySquare_mulM_sq:

    mov rax, [q + 0]
    sub [rdi + 0], rax

    mov rax, [q + 8]
    sbb [rdi + 8], rax

    mov rax, [q + 16]
    sbb [rdi + 16], rax

    mov rax, [q + 24]
    sbb [rdi + 24], rax

    mov rax, [q + 32]
    sbb [rdi + 32], rax

    mov rax, [q + 40]
    sbb [rdi + 40], rax

    mov rax, [q + 48]
    sbb [rdi + 48], rax

    mov rax, [q + 56]
    sbb [rdi + 56], rax


rawMontgomerySquare_mulM_done:


    ; Deallocate the reserved space on the stack
    mov rsp, rbp
    pop rbp
    pop rdx
    pop rsi
    pop r12
    pop r13
    pop r14
    pop r15
    ret





