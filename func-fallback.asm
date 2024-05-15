global tachyon_math_bn254_fr_rawMMul_no_adx
global tachyon_math_bn254_fr_rawMMulx_no_adx
global tachyon_math_bn254_fr_rawMSquare_no_adx
global tachyon_math_bn254_fr_rawFromMontgomery_no_adx

;extern tachyon_math_bn254_fr_fail
        DEFAULT REL

        section .text
;;

tachyon_math_bn254_fr_rawMMulx_no_adx:


    push r15
    push r14
    push r13
    push r12

    xor r11,r11
    xor r12,r12
    xor r13,r13
    xor r14,r14

    mov rcx,rdx
    mov r9,[ np ]
    xor r10,r10



    ; FirstLoop
        mov rdx, [rsi + 0]
        mulx rax, r11, [rcx]
        mulx r8, r12, [rcx + 8]
        adc r12, rax            ; Add with carry
        mulx rax, r13, [rcx + 16]
        adc r13, r8             ; Add with carry
        mulx r8, r14, [rcx + 24]
        adc r14, rax            ; Add with carry
        mov r15, r10
        adc r15, r8             ; Add with carry


    ; SecondLoop
        mov rdx, r9
        mulx rax, rdx, r11
        mulx r8, rax, [q]
        adc rax, r11            ; Add with carry
        mulx rax, r11, [q + 8]
        adc r11, r8             ; Add with carry
        add r11, r12            ; Add with overflow
        adc r11, 0
        mulx r8, r12, [q + 16]
        adc r12, rax            ; Add with carry
        add r12, r13            ; Add with overflow
        adc r12, 0
        mulx rax, r13, [q + 24]
        adc r13, r8             ; Add with carry
        add r13, r14            ; Add with overflow
        adc r13, 0
        mov r14, r10
        adc r14, rax            ; Add with carry
        add r14, r15            ; Add with overflow
        adc r14, 0

    ; FirstLoop
        mov rdx,[rsi + 8]
        mov r15,r10
        mulx r8,rax,[rcx +0]
        adc r11,rax
        ;adox r12,r8
        add r12, r8
        adc r12, 0
        mulx r8,rax,[rcx +8]
        adc r12,rax
        ;adox r13,r8
        add r13, r8
        adc r13, 0
        mulx r8,rax,[rcx +16]
        adc r13,rax
        ;adox r14,r8
        add r14, r8
        adc r14, 0
        mulx r8,rax,[rcx +24]
        adc r14,rax
        ;adox r15,r8
        add r15, r8
        adc r15, 0
        adc r15,r10


    ; SecondLoop
        mov rdx,r9
        mulx rax,rdx,r11
        mulx r8,rax,[q]
        adc rax,r11
        mulx rax,r11,[q +8]
        adc r11,r8
        ;adox r11,r12
        add r11, r12
        adc r11, 0
        mulx r8,r12,[q +16]
        adc r12,rax
        ;adox r12,r13
        add r12, r13
        adc r12, 0
        mulx rax,r13,[q +24]
        adc r13,r8
        ;adox r13,r14
        add r13, r14
        adc r13, 0
        mov r14,r10
        adc r14,rax
        ;adox r14,r15
        add r14, r15
        adc r14, 0

    ; FirstLoop
        mov rdx,[rsi + 16]
        mov r15,r10
        mulx r8,rax,[rcx +0]
        adc r11,rax
        ;adox r12,r8
        add r12, r8
        adc r12, 0
        mulx r8,rax,[rcx +8]
        adc r12,rax
        ;adox r13,r8
        add r13, r8
        adc r13, 0
        mulx r8,rax,[rcx +16]
        adc r13,rax
        ;adox r14,r8
        add r14, r8
        adc r14, 0
        mulx r8,rax,[rcx +24]
        adc r14,rax
        ;adox r15,r8
        add r15, r8
        adc r15, 0
        adc r15,r10

    ; SecondLoop
        mov rdx,r9
        mulx rax,rdx,r11
        mulx r8,rax,[q]
        adc rax,r11
        mulx rax,r11,[q +8]
        adc r11,r8
        ;adox r11,r12
        add r11, r12
        adc r11, 0
        mulx r8,r12,[q +16]
        adc r12,rax
        ;adox r12,r13
        add r12, r13
        adc r12, 0
        mulx rax,r13,[q +24]
        adc r13,r8
        ;adox r13,r14
        add r13, r14
        adc r13, 0
        mov r14,r10
        adc r14,rax
        ;adox r14,r15
        add r14, r15
        adc r14, 0

    ; FirstLoop
        mov rdx,[rsi + 24]
        mov r15,r10
        mulx r8,rax,[rcx +0]
        adc r11,rax
        ;adox r12,r8
        add r12, r8
        adc r12, 0
        mulx r8,rax,[rcx +8]
        adc r12,rax
        ; adox r13,r8
        add r13, r8
        adc r13, 0
        mulx r8,rax,[rcx +16]
        adc r13,rax
        ; adox r14,r8
        add r14, r8
        adc r14, 0
        mulx r8,rax,[rcx +24]
        adc r14,rax
        ;adox r15,r8
        add r15, r8
        adc r15, 0
        adc r15,r10

    ; SecondLoop
        mov rdx,r9
        mulx rax,rdx,r11
        mulx r8,rax,[q]
        adc rax,r11
        mulx rax,r11,[q +8]
        adc r11,r8
        ; adox r11,r12
        add r11, r12
        adc r11, 0
        mulx r8,r12,[q +16]
        adc r12,rax
        ; adox r12,r13
        add r12, r13
        adc r12, 0
        mulx rax,r13,[q +24]
        adc r13,r8
        ; adox r13,r14
        add r13, r14
        adc r13, 0
        mov r14,r10
        adc r14,rax
        ;adox r14,r15
        add r14, r15
        adc r14, 0

    ;comparison
        cmp r14,[q + 24]
        jc tachyon_math_bn254_fr_rawMMulx_done
        jnz tachyon_math_bn254_fr_rawMMulx_sq
        cmp r13,[q + 16]
        jc tachyon_math_bn254_fr_rawMMulx_done
        jnz tachyon_math_bn254_fr_rawMMulx_sq
        cmp r12,[q + 8]
        jc tachyon_math_bn254_fr_rawMMulx_done
        jnz tachyon_math_bn254_fr_rawMMulx_sq
        cmp r11,[q + 0]
        jc tachyon_math_bn254_fr_rawMMulx_done
        jnz tachyon_math_bn254_fr_rawMMulx_sq
    tachyon_math_bn254_fr_rawMMulx_sq:
        sub r11,[q +0]
        sbb r12,[q +8]
        sbb r13,[q +16]
        sbb r14,[q +24]
    tachyon_math_bn254_fr_rawMMulx_done:


    mov [rdi + 0], r11
    mov [rdi + 8], r12
    mov [rdi + 16], r13
    mov [rdi + 24], r14
    pop r12
    pop r13
    pop r14
    pop r15
    ret

;;;;

tachyon_math_bn254_fr_rawMMul_no_adx:
    push r15
    push r14
    push r13
    push r12
    push rdi
    mov rcx,rdx

    mov rdx,[rsi + 0]
    xor r8,r8

; front-load mul ops, can parallelize 4 of these but latency is 4 cycles

    mulx r9,r8,[rcx + 8]
    mulx r12,rdi,[rcx + 24]
    mulx r14,r13,[rcx + 0]
    mulx r10,r15,[rcx + 16]

; start computing modular reduction

    mov rdx,r13
    mulx r11,rdx,[ np ]

; start first addition chain

    add r14,r8
    adc r15,r9
    adc r10,rdi
    adc r12,$0

; reduce by r[0] * k

    mulx r9,r8,[q + 0]
    mulx r11,rdi,[q + 8]
    add r13,r8
    adc r14,rdi
    adc r15,r11
    adc r10,$0
    adc r12,$0
    add r14,r9
    mulx r9,r8,[q + 16]
    mulx r11,rdi,[q + 24]
    adc r15,r8
    adc r10,rdi
    adc r12,r11
    add r10,r9
    adc r12,$0

; a[1] * b

    mov rdx,[rsi + 8]
    mulx r9,r8,[rcx + 0]
    mulx r11,rdi,[rcx + 8]
    add r14,r8
    adc r15,rdi
    adc r10,r11
    adc r12,$0
    add r15,r9

    mulx r9,r8,[rcx + 16]
    mulx r13,rdi,[rcx + 24]
    adc r10,r8
    adc r12,rdi
    adc r13,$0
    add r12,r9
    adc r13,$0

; reduce by r[1] * k

    mov rdx,r14
    mulx r8,rdx,[ np ]
    mulx r9,r8,[q + 0]
    mulx r11,rdi,[q + 8]
    add r14,r8
    adc r15,rdi
    adc r10,r11
    adc r12,$0
    adc r13,$0
    add r15,r9
    mulx r9,r8,[q + 16]
    mulx r11,rdi,[q + 24]
    adc r10,r8
    adc r12,r9
    adc r13,r11
    add r12,rdi
    adc r13,$0

; a[2] * b

    mov rdx,[rsi + 16]
    mulx r9,r8,[rcx + 0]
    mulx r11,rdi,[rcx + 8]
    add r15,r8
    adc r10,r9
    adc r12,r11
    adc r13,$0
    add r10,rdi
    mulx r9,r8,[rcx + 16]
    mulx r14,rdi,[rcx + 24]
    adc r12,r8
    adc r13,r9
    adc r14,$0
    add r13,rdi
    adc r14,$0

; reduce by r[2] * k

    mov rdx,r15
    mulx r8,rdx,[ np ]
    mulx r9,r8,[q + 0]
    mulx r11,rdi,[q + 8]
    add r15,r8
    adc r10,r9
    adc r12,r11
    adc r13,$0
    adc r14,$0
    add r10,rdi
    mulx r9,r8,[q + 16]
    mulx r11,rdi,[q + 24]
    adc r12,r8
    adc r13,r9
    adc r14,r11
    add r13,rdi
    adc r14,$0

; a[3] * b

    mov rdx,[rsi + 24]
    mulx r9,r8,[rcx + 0]
    mulx r11,rdi,[rcx + 8]
    add r10,r8
    adc r12,r9
    adc r13,r11
    adc r14,$0
    add r12,rdi

    mulx r9,r8,[rcx + 16]
    mulx r15,rdi,[rcx + 24]
    adc r13,r8
    adc r14,r9
    adc r15,$0
    add r14,rdi
    adc r15,$0

; reduce by r[3] * k

    mov rdx,r10
    mulx r8,rdx,[ np ]
    mulx r9,r8,[q + 0]
    mulx r11,rdi,[q + 8]
    add r10,r8
    adc r12,r9
    adc r13,r11
    adc r14,$0
    adc r15,$0
    add r12,rdi

    mulx r9,r8,[q + 16]
    mulx rdx,rdi,[q + 24]
    adc r13,r8
    adc r14,r9
    adc r15,rdx
    add r14,rdi
    adc r15,$0

    ;comparison
    cmp r15,[q + 24]
    jc tachyon_math_bn254_fr_rawMMul_no_adx_done
    jnz tachyon_math_bn254_fr_rawMMul_no_adx_sq
    cmp r14,[q + 16]
    jc tachyon_math_bn254_fr_rawMMul_no_adx_done
    jnz tachyon_math_bn254_fr_rawMMul_no_adx_sq
    cmp r13,[q + 8]
    jc tachyon_math_bn254_fr_rawMMul_no_adx_done
    jnz tachyon_math_bn254_fr_rawMMul_no_adx_sq
    cmp r12,[q + 0]
    jc tachyon_math_bn254_fr_rawMMul_no_adx_done
    jnz tachyon_math_bn254_fr_rawMMul_no_adx_sq
    tachyon_math_bn254_fr_rawMMul_no_adx_sq:
    sub r12,[q +0]
    sbb r13,[q +8]
    sbb r14,[q +16]
    sbb r15,[q +24]
    tachyon_math_bn254_fr_rawMMul_no_adx_done:

    pop rdi

    mov [rdi + 0],r12
    mov [rdi + 8],r13
    mov [rdi + 16],r14
    mov [rdi + 24],r15

    pop r12
    pop r13
    pop r14
    pop r15
    ret
tachyon_math_bn254_fr_rawFromMontgomery_no_adx:
    push r15
    push r14
    push r13
    push r12
    push rdi
    mov rcx,rdx

; start computing modular reduction
; start first chain

    mov r13,[rsi + 0]
    xor r14,r14
    xor r10,r10
    xor r15,r15
    xor r12,r12
    mov rdx,[rsi + 0]
    mulx r11,rdx,[ np ]
    adc r12,$0

; reduce by r[0] * k

    mulx r9,r8,[q + 0]
    mulx r11,rdi,[q + 8]
    add r13,r8
    adc r14,rdi
    adc r15,r11
    mov r10,$0
    mov r12,$0
    add r14,r9
    mulx r9,r8,[q + 16]
    mulx r11,rdi,[q + 24]
    adc r15,r8
    adc r10,rdi
    adc r12,r11
    add r10,r9
    adc r12,$0

; start second chain

    mov r8,[rsi + 8]
    xor r9,r9
    xor r11,r11
    xor rdi,rdi

    add r14,r8
    adc r15,rdi

; reduce by r[1] * k

    mov rdx,r14
    mulx r8,rdx,[ np ]
    mulx r9,r8,[q + 0]
    mulx r11,rdi,[q + 8]
    add r14,r8
    adc r15,rdi
    adc r10,r11
    adc r12,$0
    adc r13,$0
    add r15,r9
    mulx r9,r8,[q + 16]
    mulx r11,rdi,[q + 24]
    adc r10,r8
    adc r12,r9
    adc r13,r11
    add r12,rdi
    adc r13,$0

; start third chain

    mov r8,[rsi + 16]
    xor r9,r9
    xor r11,r11
    xor rdi,rdi

    add r15,r8
    adc r10,r9

; reduce by r[2] * k

    mov rdx,r15
    mulx r8,rdx,[ np ]
    mulx r9,r8,[q + 0]
    mulx r11,rdi,[q + 8]
    add r15,r8
    adc r10,r9
    adc r12,r11
    adc r13,$0
    adc r14,$0
    add r10,rdi
    mulx r9,r8,[q + 16]
    mulx r11,rdi,[q + 24]
    adc r12,r8
    adc r13,r9
    adc r14,r11
    add r13,rdi
    adc r14,$0

; start fourth chain

    mov r8,[rsi + 24]
    xor r9,r9
    xor r11,r11
    xor rdi,rdi

    add r10,r8

; reduce by r[3] * k

    mov rdx,r10
    mulx r8,rdx,[ np ]
    mulx r9,r8,[q + 0]
    mulx r11,rdi,[q + 8]
    add r10,r8
    adc r12,r9
    adc r13,r11
    adc r14,$0
    adc r15,$0
    add r12,rdi
    mulx r9,r8,[q + 16]
    mulx rdx,rdi,[q + 24]
    adc r13,r8
    adc r14,r9
    adc r15,rdx
    add r14,rdi
    adc r15,$0

    pop rdi

    mov [rdi + 0],r12
    mov [rdi + 8],r13
    mov [rdi + 16],r14
    mov [rdi + 24],r15

    pop r12
    pop r13
    pop r14
    pop r15
    ret

tachyon_math_bn254_fr_rawMSquare_no_adx:
    push r15
    push r14
    push r13
    push r12
    push rdi
    mov rdx,[rsi + 0]

    xor r8,r8
    mulx r10,r9,[rsi + 8]
    mulx r15,r8,[rsi + 16]
    mulx r12,r11,[rsi + 24]
    add r10,r8
    adc r11,r15
    mov rdx,[rsi + 8]
    mulx r15,r8,[rsi + 16]
    mulx rcx,rdi,[rsi + 24]
    mov rdx,[rsi + 24]
    mulx r14,r13,[rsi + 16]
    adc r12,rdi
    adc r13,rcx
    adc r14,$0
    add r11,r8
    adc r12,r15
    adc r13,$0
    add r9,r9
    adc r10,r10
    adc r11,r11
    adc r12,r12
    adc r13,r13
    adc r14,r14
    mov rdx,[rsi + 0]
    mulx rcx,r8,rdx
    mov rdx,[rsi + 16]
    mulx rdi,rdx,rdx
    add r12,rdx
    adc r13,rdi
    adc r14,$0
    add r9,rcx
    mov rdx,[rsi + 24]
    mulx r15,rcx,rdx
    mov rdx,[rsi + 8]
    mulx rdx,rdi,rdx
    adc r10,rdi
    adc r11,rdx
    adc r12,$0
    add r14,rcx
    adc r15,$0
    mov rdx,r8
    mulx rdi,rdx,[ np ]
    mulx rcx,rdi,[q + 0]
    add r8,rdi
    adc r9,rcx
    mulx rcx,rdi,[q + 8]
    adc r10,rcx
    adc r11,$0
    add r9,rdi
    mulx rcx,rdi,[q + 16]
    mulx rdx,r8,[q + 24]
    adc r10,rdi
    adc r11,rcx
    adc r12,rdx
    adc r13,$0
    add r11,r8
    adc r12,$0
    mov rdx,r9
    mulx rdi,rdx,[ np ]
    mulx rcx,rdi,[q + 0]
    add r9,rdi
    adc r10,rcx
    mulx rcx,rdi,[q + 8]
    adc r11,rcx
    adc r12,$0
    add r10,rdi
    mulx rcx,rdi,[q + 16]
    mulx r9,r8,[q + 24]
    adc r11,rdi
    adc r12,rcx
    adc r13,r9
    adc r14,$0
    add r12,r8
    adc r13,$0
    mov rdx,r10
    mulx rdi,rdx,[ np ]
    mulx rcx,rdi,[q + 0]
    add r10,rdi
    adc r11,rcx
    mulx rcx,rdi,[q + 8]
    mulx r9,r8,[q + 16]
    mulx rdx,r10,[q + 24]
    adc r12,rcx
    adc r13,r9
    adc r14,rdx
    adc r15,$0
    add r11,rdi
    adc r12,r8
    adc r13,r10
    adc r14,$0
    mov rdx,r11
    mulx rdi,rdx,[ np ]
    mulx rcx,rdi,[q + 0]
    mulx r9,r8,[q + 8]
    add r11,rdi
    adc r12,r8
    adc r13,r9
    mulx r9,r8,[q + 16]
    mulx r11,r10,[q + 24]
    adc r14,r9
    adc r15,r11
    add r12,rcx
    adc r13,r8
    adc r14,r10
    adc r15,$0

    pop rdi

    mov [rdi + 0],r12
    mov [rdi + 8],r13
    mov [rdi + 16],r14
    mov [rdi + 24],r15

    pop r12
    pop r13
    pop r14
    pop r15
    ret


        section .data
tachyon_math_bn254_fq_q:
        dd      0
        dd      0x80000000
tachyon_math_bn254_fq_rawq:
q       dq      0x3c208c16d87cfd47,0x97816a916871ca8d,0xb85045b68181585d,0x30644e72e131a029
half    dq      0x9e10460b6c3e7ea3,0xcbc0b548b438e546,0xdc2822db40c0ac2e,0x183227397098d014
R2      dq      0xf32cfc5b538afa89,0xb5e71911d44501fb,0x47ab1eff0a417ff6,0x06d89f71cab8351f
tachyon_math_bn254_fq_R3:
        dd      0
        dd      0x80000000
tachyon_math_bn254_fq_rawR3:
R3      dq      0xb1cd6dafda1530df,0x62f210e6a7283db6,0xef7f0b0c0ada0afb,0x20fd6e902d592544
lboMask dq      0x3fffffffffffffff
np      dq      0x87d20782e4866389
