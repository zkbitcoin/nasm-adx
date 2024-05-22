section .text
global rawMontgomeryMul_mulM
global rawMontgomerySquare
global rawToMontgomery
global rawFromMontgomery

rawMontgomeryMul_mulM:

    push r15
    push r14
    push r13
    push r12
    push rsi
    push rdx
    push rbp

    mov     rbp, rsp
    sub     rsp, 48             ; Reserve space for ms
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



    mov     [rdi + 0 ], r8
    xor     r8,r8



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



    mov     [rdi + 8 ], r9
    xor     r9,r9



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



    mov     [rdi + 16 ], r10
    xor     r10,r10



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



    mov     [rdi + 24 ], r8
    xor     r8,r8



    mov     rax, [rsi + 40]
    mul     qword [rcx + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     rax, [rsp + 40]
    mul     qword [q + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     [rdi + 32 ], r9
    xor     r9,r9







    mov     [rdi + 40 ], r10
    xor     r10,r10



    test    r8, r8
    jnz     rawMontgomeryMul_mulM_sq
    ; Compare with q

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
    sub     rsp, 64              ; Reserve space for ms
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



    mov     [rdi + 0 ], r8
    xor     r8,r8



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



    mov     [rdi + 8 ], r9
    xor     r9,r9



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



    mov     [rdi + 16 ], r10
    xor     r10,r10



    mov     rax, [rsi + 32]
    mul     qword [rsi + 40]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0
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



    mov     [rdi + 24 ], r8
    xor     r8,r8





    mov     rax, [rsi + 40]
    mul     rax
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0





    mov     rax, [rsp + 40]
    mul     qword [q + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     [rdi + 32 ], r9
    xor     r9,r9











    mov     [rdi + 40 ], r10
    xor     r10,r10



    test    r8, r8
    jnz     rawMontgomerySquare_mulM_sq
    ; Compare with q

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


rawToMontgomery:

    push    rdx
    lea     rdx, [R2]
    call    rawMontgomeryMul_mulM
    pop     rdx
    ret

rawFromMontgomery:
    push r15
    push r14
    push r13
    push r12
    push rsi
    push rdx
    push rbp

    mov     rbp, rsp

    sub     rsp, 48  ; Reserve space for ms
    mov     rcx, rdx            ; rdx is needed for multiplications so keep it in cx
    mov     r11, [ np ] ; np
    xor     r8,r8
    xor     r9,r9
    xor     r10,r10

    add     r8, [rsi + 0]
    adc     r9, 0x0
    adc     r10, 0x0





    mov     rax, r8
    mul     r11
    mov     [rsp + 0], rax
    mul     qword [q]
    add     r8, rax
    adc     r9, rdx
    adc     r10, 0x0



    add     r9, [rsi + 8]
    adc     r10, 0x0
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



    add     r10, [rsi + 16]
    adc     r8, 0x0
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



    add     r8, [rsi + 24]
    adc     r9, 0x0
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



    add     r9, [rsi + 32]
    adc     r10, 0x0
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



    add     r10, [rsi + 40]
    adc     r8, 0x0
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



    mov     [rdi + 0 ], r8
    xor     r8,r8





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



    mov     [rdi + 8 ], r9
    xor     r9,r9





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



    mov     [rdi + 16 ], r10
    xor     r10,r10





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



    mov     [rdi + 24 ], r8
    xor     r8,r8





    mov     rax, [rsp + 40]
    mul     qword [q + 40]
    add     r9, rax
    adc     r10, rdx
    adc     r8, 0x0



    mov     [rdi + 32 ], r9
    xor     r9,r9







    mov     [rdi + 40 ], r10
    xor     r10,r10



    test    r8, r8
    jnz     rawFromMontgomery_mulM_sq
    ; Compare with q

    mov rax, [rdi + 40]
    cmp rax, [q + 40]
    jc rawFromMontgomery_mulM_done        ; q is bigget so done.
    jnz rawFromMontgomery_mulM_sq         ; q is lower

    mov rax, [rdi + 32]
    cmp rax, [q + 32]
    jc rawFromMontgomery_mulM_done        ; q is bigget so done.
    jnz rawFromMontgomery_mulM_sq         ; q is lower

    mov rax, [rdi + 24]
    cmp rax, [q + 24]
    jc rawFromMontgomery_mulM_done        ; q is bigget so done.
    jnz rawFromMontgomery_mulM_sq         ; q is lower

    mov rax, [rdi + 16]
    cmp rax, [q + 16]
    jc rawFromMontgomery_mulM_done        ; q is bigget so done.
    jnz rawFromMontgomery_mulM_sq         ; q is lower

    mov rax, [rdi + 8]
    cmp rax, [q + 8]
    jc rawFromMontgomery_mulM_done        ; q is bigget so done.
    jnz rawFromMontgomery_mulM_sq         ; q is lower

    mov rax, [rdi + 0]
    cmp rax, [q + 0]
    jc rawFromMontgomery_mulM_done        ; q is bigget so done.
    jnz rawFromMontgomery_mulM_sq         ; q is lower

    ; If equal substract q

rawFromMontgomery_mulM_sq:

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


rawFromMontgomery_mulM_done:
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

    ret

    section .data
    Fr_q:
            dd      0
            dd      0x80000000
    Fr_rawq:
    q       dq      0x43e1f593f0000001,0xb2686fd3abeb9091,0x5f4deb5f72d71b30,0x4f5162f5a220423f,0xbf0dbca2d4c2013c,0x000000000000a39d
    half    dq      0xa1f0fac9f8000000,0x593437e9d5f5c848,0xafa6f5afb96b8d98,0x27a8b17ad110211f,0xdf86de516a61009e,0x00000000000051ce
    R2      dq      0xaee7970b8641b445,0x8ad106137826cbac,0x6699a558be3e7035,0x2d5da519851a0f68,0xc3046f0c364656a9,0x00000000000087b8
    Fr_R3:
            dd      0
            dd      0x80000000
    Fr_rawR3:
    R3      dq      0x9616c39cb11ee49c,0x85815c7c94c7e1e9,0x6d77bd6417fe22b3,0xa0a22612f3b8b17a,0x5c1fc125a4ebd732,0x0000000000002c55
    lboMask dq      0xffff
    np      dq      0xc2e1f593efffffff


