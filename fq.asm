

        global tachyon_math_bn384_small_two_adicity_fq_copy
        global tachyon_math_bn384_small_two_adicity_fq_copyn
        global tachyon_math_bn384_small_two_adicity_fq_add
        global tachyon_math_bn384_small_two_adicity_fq_sub
        global tachyon_math_bn384_small_two_adicity_fq_neg
        global tachyon_math_bn384_small_two_adicity_fq_mul
        global tachyon_math_bn384_small_two_adicity_fq_square
        global tachyon_math_bn384_small_two_adicity_fq_band
        global tachyon_math_bn384_small_two_adicity_fq_bor
        global tachyon_math_bn384_small_two_adicity_fq_bxor
        global tachyon_math_bn384_small_two_adicity_fq_bnot
        global tachyon_math_bn384_small_two_adicity_fq_shl
        global tachyon_math_bn384_small_two_adicity_fq_shr
        global tachyon_math_bn384_small_two_adicity_fq_eq
        global tachyon_math_bn384_small_two_adicity_fq_neq
        global tachyon_math_bn384_small_two_adicity_fq_lt
        global tachyon_math_bn384_small_two_adicity_fq_gt
        global tachyon_math_bn384_small_two_adicity_fq_leq
        global tachyon_math_bn384_small_two_adicity_fq_geq
        global tachyon_math_bn384_small_two_adicity_fq_land
        global tachyon_math_bn384_small_two_adicity_fq_lor
        global tachyon_math_bn384_small_two_adicity_fq_lnot
        global tachyon_math_bn384_small_two_adicity_fq_toNormal
        global tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        global tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        global tachyon_math_bn384_small_two_adicity_fq_toInt
        global tachyon_math_bn384_small_two_adicity_fq_isTrue
        global tachyon_math_bn384_small_two_adicity_fq_q
        global tachyon_math_bn384_small_two_adicity_fq_R3

        global tachyon_math_bn384_small_two_adicity_fq_rawCopy
        global tachyon_math_bn384_small_two_adicity_fq_rawZero
        global tachyon_math_bn384_small_two_adicity_fq_rawSwap
        global tachyon_math_bn384_small_two_adicity_fq_rawAdd
        global tachyon_math_bn384_small_two_adicity_fq_rawSub
        global tachyon_math_bn384_small_two_adicity_fq_rawNeg
        global tachyon_math_bn384_small_two_adicity_fq_rawMMul
        global tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx
        global tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        global tachyon_math_bn384_small_two_adicity_fq_rawMSquare
        global tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx
        global tachyon_math_bn384_small_two_adicity_fq_rawToMontgomery
        global tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery
        global tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx
        global tachyon_math_bn384_small_two_adicity_fq_rawIsEq
        global tachyon_math_bn384_small_two_adicity_fq_rawIsZero
        global tachyon_math_bn384_small_two_adicity_fq_rawShr
        global tachyon_math_bn384_small_two_adicity_fq_rawShl
        global tachyon_math_bn384_small_two_adicity_fq_rawq
        global tachyon_math_bn384_small_two_adicity_fq_rawR3

        ;extern tachyon_math_bn384_small_two_adicity_fq_fail
        DEFAULT REL

        section .text





















;;;;;;;;;;;;;;;;;;;;;;
; copy
;;;;;;;;;;;;;;;;;;;;;;
; Copies
; Params:
;   rsi <= the src
;   rdi <= the dest
;
; Nidified registers:
;   rax
;;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_copy:

        mov     rax, [rsi + 0]
        mov     [rdi + 0], rax

        mov     rax, [rsi + 8]
        mov     [rdi + 8], rax

        mov     rax, [rsi + 16]
        mov     [rdi + 16], rax

        mov     rax, [rsi + 24]
        mov     [rdi + 24], rax

        mov     rax, [rsi + 32]
        mov     [rdi + 32], rax

        mov     rax, [rsi + 40]
        mov     [rdi + 40], rax

        mov     rax, [rsi + 48]
        mov     [rdi + 48], rax

        ret


;;;;;;;;;;;;;;;;;;;;;;
; rawCopy
;;;;;;;;;;;;;;;;;;;;;;
; Copies
; Params:
;   rsi <= the src
;   rdi <= the dest
;
; Nidified registers:
;   rax
;;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rawCopy:

        mov     rax, [rsi + 0]
        mov     [rdi + 0], rax

        mov     rax, [rsi + 8]
        mov     [rdi + 8], rax

        mov     rax, [rsi + 16]
        mov     [rdi + 16], rax

        mov     rax, [rsi + 24]
        mov     [rdi + 24], rax

        mov     rax, [rsi + 32]
        mov     [rdi + 32], rax

        mov     rax, [rsi + 40]
        mov     [rdi + 40], rax

        ret


;;;;;;;;;;;;;;;;;;;;;;
; rawZero
;;;;;;;;;;;;;;;;;;;;;;
; Copies
; Params:
;   rsi <= the src
;
; Nidified registers:
;   rax
;;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rawZero:
        xor     rax, rax

        mov     [rdi + 0], rax

        mov     [rdi + 8], rax

        mov     [rdi + 16], rax

        mov     [rdi + 24], rax

        mov     [rdi + 32], rax

        mov     [rdi + 40], rax

        ret

;;;;;;;;;;;;;;;;;;;;;;
; rawSwap
;;;;;;;;;;;;;;;;;;;;;;
; Copies
; Params:
;   rdi <= a
;   rsi <= p
;
; Nidified registers:
;   rax
;;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rawSwap:

        mov     rax, [rsi + 0]
        mov     rcx, [rdi + 0]
        mov     [rdi + 0], rax
        mov     [rsi + 0], rbx

        mov     rax, [rsi + 8]
        mov     rcx, [rdi + 8]
        mov     [rdi + 8], rax
        mov     [rsi + 8], rbx

        mov     rax, [rsi + 16]
        mov     rcx, [rdi + 16]
        mov     [rdi + 16], rax
        mov     [rsi + 16], rbx

        mov     rax, [rsi + 24]
        mov     rcx, [rdi + 24]
        mov     [rdi + 24], rax
        mov     [rsi + 24], rbx

        mov     rax, [rsi + 32]
        mov     rcx, [rdi + 32]
        mov     [rdi + 32], rax
        mov     [rsi + 32], rbx

        mov     rax, [rsi + 40]
        mov     rcx, [rdi + 40]
        mov     [rdi + 40], rax
        mov     [rsi + 40], rbx

        ret


;;;;;;;;;;;;;;;;;;;;;;
; copy an array of integers
;;;;;;;;;;;;;;;;;;;;;;
; Copies
; Params:
;   rsi <= the src
;   rdi <= the dest
;   rdx <= number of integers to copy
;
; Nidified registers:
;   rax
;;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_copyn:
tachyon_math_bn384_small_two_adicity_fq_copyn_loop:
        mov     r8, rsi
        mov     r9, rdi
        mov     rax, 7
        mul     rdx
        mov     rcx, rax
        cld
   rep  movsq
        mov     rsi, r8
        mov     rdi, r9
        ret

;;;;;;;;;;;;;;;;;;;;;;
; rawCopyS2L
;;;;;;;;;;;;;;;;;;;;;;
; Convert a 64 bit integer to a long format field element
; Params:
;   rsi <= the integer
;   rdi <= Pointer to the overwritted element
;
; Nidified registers:
;   rax
;;;;;;;;;;;;;;;;;;;;;;;

rawCopyS2L:
        mov     al, 0x80
        shl     rax, 56
        mov     [rdi], rax    ; set the result to LONG normal

        cmp     rsi, 0
        js      u64toLong_adjust_neg

        mov     [rdi + 8], rsi
        xor     rax, rax

        mov     [rdi + 16], rax

        mov     [rdi + 24], rax

        mov     [rdi + 32], rax

        mov     [rdi + 40], rax

        mov     [rdi + 48], rax

        ret

u64toLong_adjust_neg:
        add    rsi, [q]         ; Set the first digit
        mov    [rdi + 8], rsi   ;

        mov    rsi, -1          ; all ones

        mov    rax, rsi                       ; Add to q
        adc    rax, [q + 8 ]
        mov    [rdi + 16], rax

        mov    rax, rsi                       ; Add to q
        adc    rax, [q + 16 ]
        mov    [rdi + 24], rax

        mov    rax, rsi                       ; Add to q
        adc    rax, [q + 24 ]
        mov    [rdi + 32], rax

        mov    rax, rsi                       ; Add to q
        adc    rax, [q + 32 ]
        mov    [rdi + 40], rax

        mov    rax, rsi                       ; Add to q
        adc    rax, [q + 40 ]
        mov    [rdi + 48], rax

        ret

;;;;;;;;;;;;;;;;;;;;;;
; toInt
;;;;;;;;;;;;;;;;;;;;;;
; Convert a 64 bit integer to a long format field element
; Params:
;   rsi <= Pointer to the element
; Returs:
;   rax <= The value
;;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_toInt:
        mov     rax, [rdi]
        bt      rax, 63
        jc      tachyon_math_bn384_small_two_adicity_fq_long
        movsx   rax, eax
        ret

tachyon_math_bn384_small_two_adicity_fq_long:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        bt      rax, 62
        jnc     tachyon_math_bn384_small_two_adicity_fq_longNormal
tachyon_math_bn384_small_two_adicity_fq_longMontgomery:

        sub  rsp, 56
        push rsi
        mov  rsi, rdi
        mov  rdi, rsp
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        pop  rsi


tachyon_math_bn384_small_two_adicity_fq_longNormal:
        mov     rax, [rdi + 8]
        mov     rcx, rax
        shr     rcx, 31
        jnz     tachyon_math_bn384_small_two_adicity_fq_longNeg

        mov     rcx, [rdi + 16]
        test    rcx, rcx
        jnz     tachyon_math_bn384_small_two_adicity_fq_longNeg

        mov     rcx, [rdi + 24]
        test    rcx, rcx
        jnz     tachyon_math_bn384_small_two_adicity_fq_longNeg

        mov     rcx, [rdi + 32]
        test    rcx, rcx
        jnz     tachyon_math_bn384_small_two_adicity_fq_longNeg

        mov     rcx, [rdi + 40]
        test    rcx, rcx
        jnz     tachyon_math_bn384_small_two_adicity_fq_longNeg

        mov     rcx, [rdi + 48]
        test    rcx, rcx
        jnz     tachyon_math_bn384_small_two_adicity_fq_longNeg

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tachyon_math_bn384_small_two_adicity_fq_longNeg:
        mov     rax, [rdi + 8]
        sub     rax, [q]
        jnc     tachyon_math_bn384_small_two_adicity_fq_longErr

        mov     rcx, [rdi + 16]
        sbb     rcx, [q + 8]
        jnc     tachyon_math_bn384_small_two_adicity_fq_longErr

        mov     rcx, [rdi + 24]
        sbb     rcx, [q + 16]
        jnc     tachyon_math_bn384_small_two_adicity_fq_longErr

        mov     rcx, [rdi + 32]
        sbb     rcx, [q + 24]
        jnc     tachyon_math_bn384_small_two_adicity_fq_longErr

        mov     rcx, [rdi + 40]
        sbb     rcx, [q + 32]
        jnc     tachyon_math_bn384_small_two_adicity_fq_longErr

        mov     rcx, [rdi + 48]
        sbb     rcx, [q + 40]
        jnc     tachyon_math_bn384_small_two_adicity_fq_longErr

        mov     rcx, rax
        sar     rcx, 31
        add     rcx, 1
        jnz     tachyon_math_bn384_small_two_adicity_fq_longErr
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tachyon_math_bn384_small_two_adicity_fq_longErr:
        push    rdi
        mov     rdi, 0
        ;call    tachyon_math_bn384_small_two_adicity_fq_fail
        pop     rdi
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx:
    push rbx
    push rbp
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
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_sq
    cmp r14,[q + 16]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_sq
    cmp r13,[q + 8]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_sq
    cmp r12,[q + 0]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_sq
tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_sq:
    sub r12,[q + 0]
    sbb r13,[q + 8]
    sbb r14,[q + 16]
    sbb r15,[q + 24]
tachyon_math_bn384_small_two_adicity_fq_rawMMul_no_adx_done:

    pop rdi

    mov [rdi + 0],r12
    mov [rdi + 8],r13
    mov [rdi + 16],r14
    mov [rdi + 24],r15

    pop r12
    pop r13
    pop r14
    pop r15
    pop rbp
    pop rbx
    ret
tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx:
    push rbx
    push rbp
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

;comparison
    cmp r15,[q + 24]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_sq
    cmp r14,[q + 16]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_sq
    cmp r13,[q + 8]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_sq
    cmp r12,[q + 0]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_sq
tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_sq:

    sub r12,[q + 0]
    sbb r13,[q + 8]
    sbb r14,[q + 16]
    sbb r15,[q + 24]
tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_no_adx_done:

    pop rdi

    mov [rdi + 0],r12
    mov [rdi + 8],r13
    mov [rdi + 16],r14
    mov [rdi + 24],r15

    pop r12
    pop r13
    pop r14
    pop r15
    pop rbp
    pop rbx
    ret
tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx:
    push rbx
    push rbp
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

; accumulate products into result registers

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

; double result registers

    add r9,r9
    adc r10,r10
    adc r11,r11
    adc r12,r12
    adc r13,r13
    adc r14,r14

; compute a[3]*a[3], a[2]*a[2], a[1]*a[1], a[0]*a[0]

    mov rdx,[rsi + 0]
    mulx rcx,r8,rdx
    mov rdx,[rsi + 16]
    mulx rdi,rdx,rdx

; add squares into result registers

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

; perform modular reduction: r[0]

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

; perform modular reduction: r[1]

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

; perform modular reduction: r[2]

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

; perform modular reduction: r[3]

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

;comparison

    cmp r15,[q + 24]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_sq
    cmp r14,[q + 16]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_sq
    cmp r13,[q + 8]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_sq
    cmp r12,[q + 0]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_sq
tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_sq:

    sub r12,[q + 0]
    sbb r13,[q + 8]
    sbb r14,[q + 16]
    sbb r15,[q + 24]

tachyon_math_bn384_small_two_adicity_fq_rawMSquare_no_adx_done:

    pop rdi

    mov [rdi + 0],r12
    mov [rdi + 8],r13
    mov [rdi + 16],r14
    mov [rdi + 24],r15

    pop r12
    pop r13
    pop r14
    pop r15
    pop rbp
    pop rbx
    ret
tachyon_math_bn384_small_two_adicity_fq_rawMMul:
    push rbx
    push rbp
    push r15
    push r14
    push r13
    push r12
    mov rcx,rdx
    mov r9,[ np ]
    xor r10,r10

; FirstLoop
    mov rdx,[rsi + 0]
    mulx rax,r11,[rcx]
    mulx r8,r12,[rcx +8]
    adcx r12,rax
    mulx rax,r13,[rcx +16]
    adcx r13,r8
    mulx r8,r14,[rcx +24]
    adcx r14,rax
    mulx rax,r15,[rcx +32]
    adcx r15,r8
    mulx r8,rbp,[rcx +40]
    adcx rbp,rax
    mov rbx,r10
    adcx rbx,r8
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 8]
    mov rbx,r10
    mulx r8,rax,[rcx +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rcx +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rcx +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rcx +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rcx +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rcx +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 16]
    mov rbx,r10
    mulx r8,rax,[rcx +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rcx +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rcx +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rcx +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rcx +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rcx +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 24]
    mov rbx,r10
    mulx r8,rax,[rcx +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rcx +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rcx +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rcx +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rcx +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rcx +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 32]
    mov rbx,r10
    mulx r8,rax,[rcx +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rcx +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rcx +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rcx +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rcx +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rcx +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 40]
    mov rbx,r10
    mulx r8,rax,[rcx +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rcx +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rcx +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rcx +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rcx +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rcx +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

;comparison
    cmp rbp,[q + 40]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_sq
    cmp r15,[q + 32]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_sq
    cmp r14,[q + 24]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_sq
    cmp r13,[q + 16]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_sq
    cmp r12,[q + 8]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_sq
    cmp r11,[q + 0]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul_sq
tachyon_math_bn384_small_two_adicity_fq_rawMMul_sq:
    sub r11,[q +0]
    sbb r12,[q +8]
    sbb r13,[q +16]
    sbb r14,[q +24]
    sbb r15,[q +32]
    sbb rbp,[q +40]
tachyon_math_bn384_small_two_adicity_fq_rawMMul_done:
    mov [rdi + 0],r11
    mov [rdi + 8],r12
    mov [rdi + 16],r13
    mov [rdi + 24],r14
    mov [rdi + 32],r15
    mov [rdi + 40],rbp
    pop r12
    pop r13
    pop r14
    pop r15
    pop rbp
    pop rbx
    ret
tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery:
    push rbx
    push rbp
    push r15
    push r14
    push r13
    push r12
    mov rcx,rdx
    mov r9,[ np ]
    xor r10,r10

; FirstLoop
    mov r11,[rsi +0]
    mov r12,[rsi +8]
    mov r13,[rsi +16]
    mov r14,[rsi +24]
    mov r15,[rsi +32]
    mov rbp,[rsi +40]
    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

;comparison
    cmp rbp,[q + 40]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_sq
    cmp r15,[q + 32]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_sq
    cmp r14,[q + 24]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_sq
    cmp r13,[q + 16]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_sq
    cmp r12,[q + 8]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_sq
    cmp r11,[q + 0]
    jc tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_sq
tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_sq:
    sub r11,[q +0]
    sbb r12,[q +8]
    sbb r13,[q +16]
    sbb r14,[q +24]
    sbb r15,[q +32]
    sbb rbp,[q +40]
tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery_done:
    mov [rdi + 0],r11
    mov [rdi + 8],r12
    mov [rdi + 16],r13
    mov [rdi + 24],r14
    mov [rdi + 32],r15
    mov [rdi + 40],rbp
    pop r12
    pop r13
    pop r14
    pop r15
    pop rbp
    pop rbx
    ret
tachyon_math_bn384_small_two_adicity_fq_rawMSquare:
    push rbx
    push rbp
    push r15
    push r14
    push r13
    push r12
    mov rcx,rdx
    mov r9,[ np ]
    xor r10,r10

; FirstLoop
    mov rdx,[rsi + 0]
    mulx rax,r11,rdx
    mulx r8,r12,[rsi +8]
    adcx r12,rax
    mulx rax,r13,[rsi +16]
    adcx r13,r8
    mulx r8,r14,[rsi +24]
    adcx r14,rax
    mulx rax,r15,[rsi +32]
    adcx r15,r8
    mulx r8,rbp,[rsi +40]
    adcx rbp,rax
    mov rbx,r10
    adcx rbx,r8
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 8]
    mov rbx,r10
    mulx r8,rax,[rsi +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rsi +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rsi +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rsi +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rsi +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rsi +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 16]
    mov rbx,r10
    mulx r8,rax,[rsi +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rsi +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rsi +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rsi +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rsi +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rsi +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 24]
    mov rbx,r10
    mulx r8,rax,[rsi +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rsi +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rsi +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rsi +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rsi +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rsi +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 32]
    mov rbx,r10
    mulx r8,rax,[rsi +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rsi +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rsi +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rsi +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rsi +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rsi +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

; FirstLoop
    mov rdx,[rsi + 40]
    mov rbx,r10
    mulx r8,rax,[rsi +0]
    adcx r11,rax
    adox r12,r8
    mulx r8,rax,[rsi +8]
    adcx r12,rax
    adox r13,r8
    mulx r8,rax,[rsi +16]
    adcx r13,rax
    adox r14,r8
    mulx r8,rax,[rsi +24]
    adcx r14,rax
    adox r15,r8
    mulx r8,rax,[rsi +32]
    adcx r15,rax
    adox rbp,r8
    mulx r8,rax,[rsi +40]
    adcx rbp,rax
    adox rbx,r8
    adcx rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

;comparison
    cmp rbp,[q + 40]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_sq
    cmp r15,[q + 32]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_sq
    cmp r14,[q + 24]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_sq
    cmp r13,[q + 16]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_sq
    cmp r12,[q + 8]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_sq
    cmp r11,[q + 0]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMSquare_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMSquare_sq
tachyon_math_bn384_small_two_adicity_fq_rawMSquare_sq:
    sub r11,[q +0]
    sbb r12,[q +8]
    sbb r13,[q +16]
    sbb r14,[q +24]
    sbb r15,[q +32]
    sbb rbp,[q +40]
tachyon_math_bn384_small_two_adicity_fq_rawMSquare_done:
    mov [rdi + 0],r11
    mov [rdi + 8],r12
    mov [rdi + 16],r13
    mov [rdi + 24],r14
    mov [rdi + 32],r15
    mov [rdi + 40],rbp
    pop r12
    pop r13
    pop r14
    pop r15
    pop rbp
    pop rbx
    ret
tachyon_math_bn384_small_two_adicity_fq_rawMMul1:
    push rbx
    push rbp
    push r15
    push r14
    push r13
    push r12
    mov rcx,rdx
    mov r9,[ np ]
    xor r10,r10

; FirstLoop
    mov rdx,rcx
    mulx rax,r11,[rsi]
    mulx r8,r12,[rsi +8]
    adcx r12,rax
    mulx rax,r13,[rsi +16]
    adcx r13,r8
    mulx r8,r14,[rsi +24]
    adcx r14,rax
    mulx rax,r15,[rsi +32]
    adcx r15,r8
    mulx r8,rbp,[rsi +40]
    adcx rbp,rax
    mov rbx,r10
    adcx rbx,r8
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

    mov rbx,r10
; SecondLoop
    mov rdx,r9
    mulx rax,rdx,r11
    mulx r8,rax,[q]
    adcx rax,r11
    mulx rax,r11,[q +8]
    adcx r11,r8
    adox r11,r12
    mulx r8,r12,[q +16]
    adcx r12,rax
    adox r12,r13
    mulx rax,r13,[q +24]
    adcx r13,r8
    adox r13,r14
    mulx r8,r14,[q +32]
    adcx r14,rax
    adox r14,r15
    mulx rax,r15,[q +40]
    adcx r15,r8
    adox r15,rbp
    mov rbp,r10
    adcx rbp,rax
    adox rbp,rbx

;comparison
    cmp rbp,[q + 40]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul1_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul1_sq
    cmp r15,[q + 32]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul1_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul1_sq
    cmp r14,[q + 24]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul1_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul1_sq
    cmp r13,[q + 16]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul1_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul1_sq
    cmp r12,[q + 8]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul1_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul1_sq
    cmp r11,[q + 0]
    jc tachyon_math_bn384_small_two_adicity_fq_rawMMul1_done
    jnz tachyon_math_bn384_small_two_adicity_fq_rawMMul1_sq
tachyon_math_bn384_small_two_adicity_fq_rawMMul1_sq:
    sub r11,[q +0]
    sbb r12,[q +8]
    sbb r13,[q +16]
    sbb r14,[q +24]
    sbb r15,[q +32]
    sbb rbp,[q +40]
tachyon_math_bn384_small_two_adicity_fq_rawMMul1_done:
    mov [rdi + 0],r11
    mov [rdi + 8],r12
    mov [rdi + 16],r13
    mov [rdi + 24],r14
    mov [rdi + 32],r15
    mov [rdi + 40],rbp
    pop r12
    pop r13
    pop r14
    pop r15
    pop rbp
    pop rbx
    ret


;;;;;;;;;;;;;;;;;;;;;;
; rawToMontgomery
;;;;;;;;;;;;;;;;;;;;;;
; Convert a number to Montgomery
;   rdi <= Pointer destination element
;   rsi <= Pointer to src element
;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rawToMontgomery:
    push    rdx
    lea     rdx, [R2]
    call    tachyon_math_bn384_small_two_adicity_fq_rawMMul
    pop     rdx
    ret

;;;;;;;;;;;;;;;;;;;;;;
; toMontgomery
;;;;;;;;;;;;;;;;;;;;;;
; Convert a number to Montgomery
;   rdi <= Destination
;   rdi <= Pointer element to convert
; Modified registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_toMontgomery:
    mov     rax, [rsi]
    bt      rax, 62                     ; check if montgomery
    jc      toMontgomery_doNothing
    bt      rax, 63
    jc      toMontgomeryLong

toMontgomeryShort:
    movsx   rdx, eax
    mov     [rdi], rdx
    add     rdi, 8
    lea     rsi, [R2]
    cmp     rdx, 0
    js      negMontgomeryShort
posMontgomeryShort:
    call    tachyon_math_bn384_small_two_adicity_fq_rawMMul1
    sub     rdi, 8
            mov r11b, 0x40
        shl r11d, 24
        mov [rdi+4], r11d
    ret

negMontgomeryShort:
    neg     rdx              ; Do the multiplication positive and then negate the result.
    call    tachyon_math_bn384_small_two_adicity_fq_rawMMul1
    mov     rsi, rdi
    call    rawNegL
    sub     rdi, 8
            mov r11b, 0x40
        shl r11d, 24
        mov [rdi+4], r11d
    ret


toMontgomeryLong:
    mov     [rdi], rax
    add     rdi, 8
    add     rsi, 8
    lea     rdx, [R2]
    call    tachyon_math_bn384_small_two_adicity_fq_rawMMul
    sub     rsi, 8
    sub     rdi, 8
            mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d
    ret


toMontgomery_doNothing:
    call   tachyon_math_bn384_small_two_adicity_fq_copy
    ret

;;;;;;;;;;;;;;;;;;;;;;
; toNormal
;;;;;;;;;;;;;;;;;;;;;;
; Convert a number from Montgomery
;   rdi <= Destination
;   rsi <= Pointer element to convert
; Modified registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_toNormal:
    mov     rax, [rsi]
    bt      rax, 62                     ; check if montgomery
    jnc     toNormal_doNothing
    bt      rax, 63                     ; if short, it means it's converted
    jnc     toNormal_doNothing

toNormalLong:
    add     rdi, 8
    add     rsi, 8
    call    tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery
    sub     rsi, 8
    sub     rdi, 8
            mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d
    ret

toNormal_doNothing:
    call   tachyon_math_bn384_small_two_adicity_fq_copy
    ret

;;;;;;;;;;;;;;;;;;;;;;
; toLongNormal
;;;;;;;;;;;;;;;;;;;;;;
; Convert a number to long normal
;   rdi <= Destination
;   rsi <= Pointer element to convert
; Modified registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_toLongNormal:
    mov     rax, [rsi]
    bt      rax, 63                     ; check if long
    jnc     toLongNormal_fromShort
    bt      rax, 62                     ; check if montgomery
    jc      toLongNormal_fromMontgomery
    call    tachyon_math_bn384_small_two_adicity_fq_copy              ; It is already long
    ret

toLongNormal_fromMontgomery:
    add     rdi, 8
    add     rsi, 8
    call    tachyon_math_bn384_small_two_adicity_fq_rawFromMontgomery
    sub     rsi, 8
    sub     rdi, 8
            mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d
    ret

toLongNormal_fromShort:
    mov     r8, rsi                     ; save rsi
    movsx   rsi, eax
    call    rawCopyS2L
    mov     rsi, r8                     ; recover rsi
            mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d
    ret












;;;;;;;;;;;;;;;;;;;;;;
; add
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_add:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        mov    rax, [rsi]
        mov    rcx, [rdx]
        bt     rax, 63          ; Check if is short first operand
        jc     add_l1
        bt     rcx, 63          ; Check if is short second operand
        jc     add_s1l2

add_s1s2:                       ; Both operands are short

        xor    rdx, rdx
        mov    edx, eax
        add    edx, ecx
        jo     add_manageOverflow   ; rsi already is the 64bits result

        mov    [rdi], rdx       ; not necessary to adjust so just save and return
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

add_manageOverflow:                 ; Do the operation in 64 bits
        push   rsi
        movsx  rsi, eax
        movsx  rdx, ecx
        add    rsi, rdx
        call   rawCopyS2L
        pop    rsi
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

add_l1:
        bt     rcx, 63          ; Check if is short second operand
        jc     add_l1l2

;;;;;;;;
add_l1s2:
        bt     rax, 62          ; check if montgomery first
        jc     add_l1ms2
add_l1ns2:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        add rsi, 8
        movsx rdx, ecx
        add rdi, 8
        cmp rdx, 0
        
        jns tmp_1
        neg rdx
        call rawSubLS
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret
tmp_1:
        call rawAddLS
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret



add_l1ms2:
        bt     rcx, 62          ; check if montgomery second
        jc     add_l1ms2m
add_l1ms2n:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawAddLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


add_l1ms2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawAddLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret



;;;;;;;;
add_s1l2:
        bt     rcx, 62          ; check if montgomery second
        jc     add_s1l2m
add_s1l2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        lea rsi, [rdx + 8]
        movsx rdx, eax
        add rdi, 8
        cmp rdx, 0
        
        jns tmp_2
        neg rdx
        call rawSubLS
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret
tmp_2:
        call rawAddLS
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


add_s1l2m:
        bt     rax, 62          ; check if montgomery first
        jc     add_s1ml2m
add_s1nl2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawAddLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


add_s1ml2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawAddLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


;;;;
add_l1l2:
        bt     rax, 62          ; check if montgomery first
        jc     add_l1ml2
add_l1nl2:
        bt     rcx, 62          ; check if montgomery second
        jc     add_l1nl2m
add_l1nl2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawAddLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


add_l1nl2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawAddLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


add_l1ml2:
        bt     rcx, 62          ; check if montgomery seconf
        jc     add_l1ml2m
add_l1ml2n:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawAddLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


add_l1ml2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawAddLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




;;;;;;;;;;;;;;;;;;;;;;
; rawAddLL
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of type long
; Params:
;   rsi <= Pointer to the long data of element 1
;   rdx <= Pointer to the long data of element 2
;   rdi <= Pointer to the long data of result
; Modified Registers:
;    rax
;;;;;;;;;;;;;;;;;;;;;;
rawAddLL:
tachyon_math_bn384_small_two_adicity_fq_rawAdd:
        ; Add component by component with carry

        mov rax, [rsi + 0]
        add rax, [rdx + 0]
        mov [rdi + 0], rax

        mov rax, [rsi + 8]
        adc rax, [rdx + 8]
        mov [rdi + 8], rax

        mov rax, [rsi + 16]
        adc rax, [rdx + 16]
        mov [rdi + 16], rax

        mov rax, [rsi + 24]
        adc rax, [rdx + 24]
        mov [rdi + 24], rax

        mov rax, [rsi + 32]
        adc rax, [rdx + 32]
        mov [rdi + 32], rax

        mov rax, [rsi + 40]
        adc rax, [rdx + 40]
        mov [rdi + 40], rax

        jc rawAddLL_sq   ; if overflow, substract q

        ; Compare with q


        cmp rax, [q + 40]
        jc rawAddLL_done        ; q is bigget so done.
        jnz rawAddLL_sq         ; q is lower


        mov rax, [rdi + 32]

        cmp rax, [q + 32]
        jc rawAddLL_done        ; q is bigget so done.
        jnz rawAddLL_sq         ; q is lower


        mov rax, [rdi + 24]

        cmp rax, [q + 24]
        jc rawAddLL_done        ; q is bigget so done.
        jnz rawAddLL_sq         ; q is lower


        mov rax, [rdi + 16]

        cmp rax, [q + 16]
        jc rawAddLL_done        ; q is bigget so done.
        jnz rawAddLL_sq         ; q is lower


        mov rax, [rdi + 8]

        cmp rax, [q + 8]
        jc rawAddLL_done        ; q is bigget so done.
        jnz rawAddLL_sq         ; q is lower


        mov rax, [rdi + 0]

        cmp rax, [q + 0]
        jc rawAddLL_done        ; q is bigget so done.
        jnz rawAddLL_sq         ; q is lower

        ; If equal substract q
rawAddLL_sq:

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

rawAddLL_done:
        ret


;;;;;;;;;;;;;;;;;;;;;;
; rawAddLS
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of type long
; Params:
;   rdi <= Pointer to the long data of result
;   rsi <= Pointer to the long data of element 1
;   rdx <= Value to be added
;;;;;;;;;;;;;;;;;;;;;;
rawAddLS:
        ; Add component by component with carry

        add rdx, [rsi]
        mov [rdi] ,rdx

        mov rdx, 0
        adc rdx, [rsi + 8]
        mov [rdi + 8], rdx

        mov rdx, 0
        adc rdx, [rsi + 16]
        mov [rdi + 16], rdx

        mov rdx, 0
        adc rdx, [rsi + 24]
        mov [rdi + 24], rdx

        mov rdx, 0
        adc rdx, [rsi + 32]
        mov [rdi + 32], rdx

        mov rdx, 0
        adc rdx, [rsi + 40]
        mov [rdi + 40], rdx

        jc rawAddLS_sq   ; if overflow, substract q

        ; Compare with q

        mov rax, [rdi + 40]
        cmp rax, [q + 40]
        jc rawAddLS_done        ; q is bigget so done.
        jnz rawAddLS_sq         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 32]
        jc rawAddLS_done        ; q is bigget so done.
        jnz rawAddLS_sq         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 24]
        jc rawAddLS_done        ; q is bigget so done.
        jnz rawAddLS_sq         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 16]
        jc rawAddLS_done        ; q is bigget so done.
        jnz rawAddLS_sq         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 8]
        jc rawAddLS_done        ; q is bigget so done.
        jnz rawAddLS_sq         ; q is lower

        mov rax, [rdi + 0]
        cmp rax, [q + 0]
        jc rawAddLS_done        ; q is bigget so done.
        jnz rawAddLS_sq         ; q is lower

        ; If equal substract q
rawAddLS_sq:

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

rawAddLS_done:
        ret















;;;;;;;;;;;;;;;;;;;;;;
; sub
;;;;;;;;;;;;;;;;;;;;;;
; Substracts two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_sub:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        mov    rax, [rsi]
        mov    rcx, [rdx]
        bt     rax, 63          ; Check if is long first operand
        jc     sub_l1
        bt     rcx, 63          ; Check if is long second operand
        jc     sub_s1l2

sub_s1s2:                       ; Both operands are short

        xor    rdx, rdx
        mov    edx, eax
        sub    edx, ecx
        jo     sub_manageOverflow   ; rsi already is the 64bits result

        mov    [rdi], rdx       ; not necessary to adjust so just save and return
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

sub_manageOverflow:                 ; Do the operation in 64 bits
        push   rsi
        movsx  rsi, eax
        movsx  rdx, ecx
        sub    rsi, rdx
        call   rawCopyS2L
        pop    rsi
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

sub_l1:
        bt     rcx, 63          ; Check if is short second operand
        jc     sub_l1l2

;;;;;;;;
sub_l1s2:
        bt     rax, 62          ; check if montgomery first
        jc     sub_l1ms2
sub_l1ns2:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        add rsi, 8
        movsx rdx, ecx
        add rdi, 8
        cmp rdx, 0
        
        jns tmp_3
        neg rdx
        call rawAddLS
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret
tmp_3:
        call rawSubLS
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


sub_l1ms2:
        bt     rcx, 62          ; check if montgomery second
        jc     sub_l1ms2m
sub_l1ms2n:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawSubLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


sub_l1ms2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawSubLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret



;;;;;;;;
sub_s1l2:
        bt     rcx, 62          ; check if montgomery first
        jc     sub_s1l2m
sub_s1l2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        cmp eax, 0
        
        js tmp_4

        ; First Operand is positive
        push rsi
        add rdi, 8
        movsx rsi, eax
        add rdx, 8
        call rawSubSL
        sub rdi, 8
        pop rsi
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_4:   ; First operand is negative
        push rsi
        lea rsi, [rdx + 8]
        movsx rdx, eax
        add rdi, 8
        neg rdx
        call rawNegLS
        sub rdi, 8
        pop rsi
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


sub_s1l2m:
        bt     rax, 62          ; check if montgomery second
        jc     sub_s1ml2m
sub_s1nl2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawSubLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


sub_s1ml2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawSubLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


;;;;
sub_l1l2:
        bt     rax, 62          ; check if montgomery first
        jc     sub_l1ml2
sub_l1nl2:
        bt     rcx, 62          ; check if montgomery second
        jc     sub_l1nl2m
sub_l1nl2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawSubLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


sub_l1nl2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawSubLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


sub_l1ml2:
        bt     rcx, 62          ; check if montgomery seconf
        jc     sub_l1ml2m
sub_l1ml2n:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawSubLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


sub_l1ml2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call rawSubLL
        sub rdi, 8
        sub rsi, 8
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret



;;;;;;;;;;;;;;;;;;;;;;
; rawSubLS
;;;;;;;;;;;;;;;;;;;;;;
; Substracts a short element from the long element
; Params:
;   rdi <= Pointer to the long data of result
;   rsi <= Pointer to the long data of element 1 where will be substracted
;   rdx <= Value to be substracted
;   [rdi] = [rsi] - rdx
; Modified Registers:
;    rax
;;;;;;;;;;;;;;;;;;;;;;
rawSubLS:
        ; Substract first digit

        mov rax, [rsi]
        sub rax, rdx
        mov [rdi] ,rax
        mov rdx, 0

        mov rax, [rsi + 8]
        sbb rax, rdx
        mov [rdi + 8], rax

        mov rax, [rsi + 16]
        sbb rax, rdx
        mov [rdi + 16], rax

        mov rax, [rsi + 24]
        sbb rax, rdx
        mov [rdi + 24], rax

        mov rax, [rsi + 32]
        sbb rax, rdx
        mov [rdi + 32], rax

        mov rax, [rsi + 40]
        sbb rax, rdx
        mov [rdi + 40], rax

        jnc rawSubLS_done   ; if overflow, add q

        ; Add q
rawSubLS_aq:

        mov rax, [q + 0]
        add [rdi + 0], rax

        mov rax, [q + 8]
        adc [rdi + 8], rax

        mov rax, [q + 16]
        adc [rdi + 16], rax

        mov rax, [q + 24]
        adc [rdi + 24], rax

        mov rax, [q + 32]
        adc [rdi + 32], rax

        mov rax, [q + 40]
        adc [rdi + 40], rax

rawSubLS_done:
        ret


;;;;;;;;;;;;;;;;;;;;;;
; rawSubSL
;;;;;;;;;;;;;;;;;;;;;;
; Substracts a long element from a short element
; Params:
;   rdi <= Pointer to the long data of result
;   rsi <= Value from where will bo substracted
;   rdx <= Pointer to long of the value to be substracted
;
;   [rdi] = rsi - [rdx]
; Modified Registers:
;    rax
;;;;;;;;;;;;;;;;;;;;;;
rawSubSL:
        ; Substract first digit
        sub rsi, [rdx]
        mov [rdi] ,rsi


        mov rax, 0
        sbb rax, [rdx + 8]
        mov [rdi + 8], rax

        mov rax, 0
        sbb rax, [rdx + 16]
        mov [rdi + 16], rax

        mov rax, 0
        sbb rax, [rdx + 24]
        mov [rdi + 24], rax

        mov rax, 0
        sbb rax, [rdx + 32]
        mov [rdi + 32], rax

        mov rax, 0
        sbb rax, [rdx + 40]
        mov [rdi + 40], rax

        jnc rawSubSL_done   ; if overflow, add q

        ; Add q
rawSubSL_aq:

        mov rax, [q + 0]
        add [rdi + 0], rax

        mov rax, [q + 8]
        adc [rdi + 8], rax

        mov rax, [q + 16]
        adc [rdi + 16], rax

        mov rax, [q + 24]
        adc [rdi + 24], rax

        mov rax, [q + 32]
        adc [rdi + 32], rax

        mov rax, [q + 40]
        adc [rdi + 40], rax

rawSubSL_done:
        ret

;;;;;;;;;;;;;;;;;;;;;;
; rawSubLL
;;;;;;;;;;;;;;;;;;;;;;
; Substracts a long element from a short element
; Params:
;   rdi <= Pointer to the long data of result
;   rsi <= Pointer to long from where substracted
;   rdx <= Pointer to long of the value to be substracted
;
;   [rdi] = [rsi] - [rdx]
; Modified Registers:
;    rax
;;;;;;;;;;;;;;;;;;;;;;
rawSubLL:
tachyon_math_bn384_small_two_adicity_fq_rawSub:
        ; Substract first digit

        mov rax, [rsi + 0]
        sub rax, [rdx + 0]
        mov [rdi + 0], rax

        mov rax, [rsi + 8]
        sbb rax, [rdx + 8]
        mov [rdi + 8], rax

        mov rax, [rsi + 16]
        sbb rax, [rdx + 16]
        mov [rdi + 16], rax

        mov rax, [rsi + 24]
        sbb rax, [rdx + 24]
        mov [rdi + 24], rax

        mov rax, [rsi + 32]
        sbb rax, [rdx + 32]
        mov [rdi + 32], rax

        mov rax, [rsi + 40]
        sbb rax, [rdx + 40]
        mov [rdi + 40], rax

        jnc rawSubLL_done   ; if overflow, add q

        ; Add q
rawSubLL_aq:

        mov rax, [q + 0]
        add [rdi + 0], rax

        mov rax, [q + 8]
        adc [rdi + 8], rax

        mov rax, [q + 16]
        adc [rdi + 16], rax

        mov rax, [q + 24]
        adc [rdi + 24], rax

        mov rax, [q + 32]
        adc [rdi + 32], rax

        mov rax, [q + 40]
        adc [rdi + 40], rax

rawSubLL_done:
        ret

;;;;;;;;;;;;;;;;;;;;;;
; rawNegLS
;;;;;;;;;;;;;;;;;;;;;;
; Substracts a long element and a short element form 0
; Params:
;   rdi <= Pointer to the long data of result
;   rsi <= Pointer to long from where substracted
;   rdx <= short value to be substracted too
;
;   [rdi] = -[rsi] - rdx
; Modified Registers:
;    rax
;;;;;;;;;;;;;;;;;;;;;;
rawNegLS:
        mov rax, [q]
        sub rax, rdx
        mov [rdi], rax

        mov rax, [q + 8 ]
        sbb rax, 0
        mov [rdi + 8], rax

        mov rax, [q + 16 ]
        sbb rax, 0
        mov [rdi + 16], rax

        mov rax, [q + 24 ]
        sbb rax, 0
        mov [rdi + 24], rax

        mov rax, [q + 32 ]
        sbb rax, 0
        mov [rdi + 32], rax

        mov rax, [q + 40 ]
        sbb rax, 0
        mov [rdi + 40], rax

        setc dl


        mov rax, [rdi + 0 ]
        sub rax, [rsi + 0]
        mov [rdi + 0], rax

        mov rax, [rdi + 8 ]
        sbb rax, [rsi + 8]
        mov [rdi + 8], rax

        mov rax, [rdi + 16 ]
        sbb rax, [rsi + 16]
        mov [rdi + 16], rax

        mov rax, [rdi + 24 ]
        sbb rax, [rsi + 24]
        mov [rdi + 24], rax

        mov rax, [rdi + 32 ]
        sbb rax, [rsi + 32]
        mov [rdi + 32], rax

        mov rax, [rdi + 40 ]
        sbb rax, [rsi + 40]
        mov [rdi + 40], rax


        setc dh
        or dl, dh
        jz rawNegSL_done

        ; it is a negative value, so add q

        mov rax, [q + 0]
        add [rdi + 0], rax

        mov rax, [q + 8]
        adc [rdi + 8], rax

        mov rax, [q + 16]
        adc [rdi + 16], rax

        mov rax, [q + 24]
        adc [rdi + 24], rax

        mov rax, [q + 32]
        adc [rdi + 32], rax

        mov rax, [q + 40]
        adc [rdi + 40], rax


rawNegSL_done:
        ret







;;;;;;;;;;;;;;;;;;;;;;
; neg
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element to be negated
;   rdi <= Pointer to result
;   [rdi] = -[rsi]
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_neg:
        mov    rax, [rsi]
        bt     rax, 63          ; Check if is short first operand
        jc     neg_l

neg_s:                          ; Operand is short

        neg    eax
        jo     neg_manageOverflow   ; Check if overflow. (0x80000000 is the only case)

        mov    [rdi], rax           ; not necessary to adjust so just save and return
        ret

neg_manageOverflow:                 ; Do the operation in 64 bits
        push   rsi
        movsx  rsi, eax
        neg    rsi
        call   rawCopyS2L
        pop    rsi
        ret



neg_l:
        mov [rdi], rax          ; Copy the type

        add rdi, 8
        add rsi, 8
        call rawNegL
        sub rdi, 8
        sub rsi, 8
        ret



;;;;;;;;;;;;;;;;;;;;;;
; rawNeg
;;;;;;;;;;;;;;;;;;;;;;
; Negates a value
; Params:
;   rdi <= Pointer to the long data of result
;   rsi <= Pointer to the long data of element 1
;
;   [rdi] = - [rsi]
;;;;;;;;;;;;;;;;;;;;;;
rawNegL:
tachyon_math_bn384_small_two_adicity_fq_rawNeg:
        ; Compare is zero

        xor rax, rax

        cmp [rsi + 0], rax
        jnz doNegate

        cmp [rsi + 8], rax
        jnz doNegate

        cmp [rsi + 16], rax
        jnz doNegate

        cmp [rsi + 24], rax
        jnz doNegate

        cmp [rsi + 32], rax
        jnz doNegate

        cmp [rsi + 40], rax
        jnz doNegate

        ; it's zero so just set to zero

        mov [rdi + 0], rax

        mov [rdi + 8], rax

        mov [rdi + 16], rax

        mov [rdi + 24], rax

        mov [rdi + 32], rax

        mov [rdi + 40], rax

        ret
doNegate:

        mov rax, [q + 0]
        sub rax, [rsi + 0]
        mov [rdi + 0], rax

        mov rax, [q + 8]
        sbb rax, [rsi + 8]
        mov [rdi + 8], rax

        mov rax, [q + 16]
        sbb rax, [rsi + 16]
        mov [rdi + 16], rax

        mov rax, [q + 24]
        sbb rax, [rsi + 24]
        mov [rdi + 24], rax

        mov rax, [q + 32]
        sbb rax, [rsi + 32]
        mov [rdi + 32], rax

        mov rax, [q + 40]
        sbb rax, [rsi + 40]
        mov [rdi + 40], rax

        ret



















;;;;;;;;;;;;;;;;;;;;;;
; square
;;;;;;;;;;;;;;;;;;;;;;
; Squares a field element
; Params:
;   rsi <= Pointer to element 1
;   rdi <= Pointer to result
;   [rdi] = [rsi] * [rsi]
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_square:
        mov    r8, [rsi]
        bt     r8, 63          ; Check if is short first operand
        jc     square_l1

square_s1:                       ; Both operands are short

        xor    rax, rax
        mov    eax, r8d
        imul   eax
        jo     square_manageOverflow   ; rsi already is the 64bits result

        mov    [rdi], rax       ; not necessary to adjust so just save and return

square_manageOverflow:                 ; Do the operation in 64 bits
        push   rsi
        movsx  rax, r8d
        imul   rax
        mov    rsi, rax
        call   rawCopyS2L
        pop    rsi

        ret

square_l1:
        bt     r8, 62          ; check if montgomery first
        jc     square_l1m
square_l1n:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMSquare
        sub rdi, 8
        sub rsi, 8


        push rsi
        add rdi, 8
        mov rsi, rdi
        lea rdx, [R3]
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        pop rsi

        ret

square_l1m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMSquare
        sub rdi, 8
        sub rsi, 8

        ret



;;;;;;;;;;;;;;;;;;;;;;
; mul
;;;;;;;;;;;;;;;;;;;;;;
; Multiplies two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result
;   [rdi] = [rsi] * [rdi]
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_mul:
        mov    r8, [rsi]
        mov    r9, [rdx]
        bt     r8, 63          ; Check if is short first operand
        jc     mul_l1
        bt     r9, 63          ; Check if is short second operand
        jc     mul_s1l2

mul_s1s2:                       ; Both operands are short

        xor    rax, rax
        mov    eax, r8d
        imul   r9d
        jo     mul_manageOverflow   ; rsi already is the 64bits result

        mov    [rdi], rax       ; not necessary to adjust so just save and return

mul_manageOverflow:                 ; Do the operation in 64 bits
        push   rsi
        movsx  rax, r8d
        movsx  rcx, r9d
        imul   rcx
        mov    rsi, rax
        call   rawCopyS2L
        pop    rsi

        ret

mul_l1:
        bt     r9, 63          ; Check if is short second operand
        jc     mul_l1l2

;;;;;;;;
mul_l1s2:
        bt     r8, 62          ; check if montgomery first
        jc     mul_l1ms2
mul_l1ns2:
        bt     r9, 62          ; check if montgomery first
        jc     mul_l1ns2m
mul_l1ns2n:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        push rsi
        add rsi, 8
        movsx rdx, r9d
        add rdi, 8
        cmp rdx, 0
        
        jns tmp_5
        neg rdx
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        mov rsi, rdi
        call rawNegL
        sub rdi, 8
        pop rsi
        
        jmp tmp_6
tmp_5:
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        sub rdi, 8
        pop rsi
tmp_6:



        push rsi
        add rdi, 8
        mov rsi, rdi
        lea rdx, [R3]
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        pop rsi

        ret


mul_l1ns2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        sub rsi, 8

        ret


mul_l1ms2:
        bt     r9, 62          ; check if montgomery second
        jc     mul_l1ms2m
mul_l1ms2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        push rsi
        add rsi, 8
        movsx rdx, r9d
        add rdi, 8
        cmp rdx, 0
        
        jns tmp_7
        neg rdx
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        mov rsi, rdi
        call rawNegL
        sub rdi, 8
        pop rsi
        
        jmp tmp_8
tmp_7:
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        sub rdi, 8
        pop rsi
tmp_8:


        ret

mul_l1ms2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        sub rsi, 8

        ret


;;;;;;;;
mul_s1l2:
        bt     r8, 62          ; check if montgomery first
        jc     mul_s1ml2
mul_s1nl2:
        bt     r9, 62          ; check if montgomery first
        jc     mul_s1nl2m
mul_s1nl2n:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        push rsi
        lea rsi, [rdx + 8]
        movsx rdx, r8d
        add rdi, 8
        cmp rdx, 0
        
        jns tmp_9
        neg rdx
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        mov rsi, rdi
        call rawNegL
        sub rdi, 8
        pop rsi
        
        jmp tmp_10
tmp_9:
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        sub rdi, 8
        pop rsi
tmp_10:



        push rsi
        add rdi, 8
        mov rsi, rdi
        lea rdx, [R3]
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        pop rsi

        ret

mul_s1nl2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        push rsi
        lea rsi, [rdx + 8]
        movsx rdx, r8d
        add rdi, 8
        cmp rdx, 0
        
        jns tmp_11
        neg rdx
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        mov rsi, rdi
        call rawNegL
        sub rdi, 8
        pop rsi
        
        jmp tmp_12
tmp_11:
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul1
        sub rdi, 8
        pop rsi
tmp_12:


        ret

mul_s1ml2:
        bt     r9, 62          ; check if montgomery first
        jc     mul_s1ml2m
mul_s1ml2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        sub rsi, 8

        ret

mul_s1ml2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        sub rsi, 8

        ret

;;;;
mul_l1l2:
        bt     r8, 62          ; check if montgomery first
        jc     mul_l1ml2
mul_l1nl2:
        bt     r9, 62          ; check if montgomery second
        jc     mul_l1nl2m
mul_l1nl2n:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        sub rsi, 8


        push rsi
        add rdi, 8
        mov rsi, rdi
        lea rdx, [R3]
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        pop rsi

        ret

mul_l1nl2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        sub rsi, 8

        ret

mul_l1ml2:
        bt     r9, 62          ; check if montgomery seconf
        jc     mul_l1ml2m
mul_l1ml2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        sub rsi, 8

        ret

mul_l1ml2m:
        mov r11b, 0xC0
        shl r11d, 24
        mov [rdi+4], r11d

        add rdi, 8
        add rsi, 8
        add rdx, 8
        call tachyon_math_bn384_small_two_adicity_fq_rawMMul
        sub rdi, 8
        sub rsi, 8

        ret



















;;;;;;;;;;;;;;;;;;;;;;
; band
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_band:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        mov    rax, [rsi]
        mov    rcx, [rdx]
        bt     rax, 63          ; Check if is short first operand
        jc     and_l1
        bt     rcx, 63          ; Check if is short second operand
        jc     and_s1l2

and_s1s2:

        cmp    eax, 0
        
        js     tmp_13

        cmp    ecx, 0
        js     tmp_13
        xor    rdx, rdx         ; both ops are positive so do the op and return
        mov    edx, eax
        and    edx, ecx
        mov    [rdi], rdx       ; not necessary to adjust so just save and return
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_13:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx



        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_15        ; q is bigget so done.
        jnz tmp_14         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_15        ; q is bigget so done.
        jnz tmp_14         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_15        ; q is bigget so done.
        jnz tmp_14         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_15        ; q is bigget so done.
        jnz tmp_14         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_15        ; q is bigget so done.
        jnz tmp_14         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_15        ; q is bigget so done.
        jnz tmp_14         ; q is lower

        ; If equal substract q
tmp_14:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_15:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret






and_l1:
        bt     rcx, 63          ; Check if is short second operand
        jc     and_l1l2


and_l1s2:
        bt     rax, 62          ; check if montgomery first
        jc     and_l1ms2
and_l1ns2:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov    rcx, [rdx]
        cmp    ecx, 0
        
        js     tmp_16
        movsx  rax, ecx
        and rax, [rsi +8]
        mov    [rdi+8], rax

        xor    rax, rax
        and rax, [rsi + 16];

        mov    [rdi + 16 ], rax;

        xor    rax, rax
        and rax, [rsi + 24];

        mov    [rdi + 24 ], rax;

        xor    rax, rax
        and rax, [rsi + 32];

        mov    [rdi + 32 ], rax;

        xor    rax, rax
        and rax, [rsi + 40];

        mov    [rdi + 40 ], rax;

        xor    rax, rax
        and rax, [rsi + 48];

        and    rax, [lboMask] ;

        mov    [rdi + 48 ], rax;


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_18        ; q is bigget so done.
        jnz tmp_17         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_18        ; q is bigget so done.
        jnz tmp_17         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_18        ; q is bigget so done.
        jnz tmp_17         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_18        ; q is bigget so done.
        jnz tmp_17         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_18        ; q is bigget so done.
        jnz tmp_17         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_18        ; q is bigget so done.
        jnz tmp_17         ; q is lower

        ; If equal substract q
tmp_17:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_18:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_16:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_20        ; q is bigget so done.
        jnz tmp_19         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_20        ; q is bigget so done.
        jnz tmp_19         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_20        ; q is bigget so done.
        jnz tmp_19         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_20        ; q is bigget so done.
        jnz tmp_19         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_20        ; q is bigget so done.
        jnz tmp_19         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_20        ; q is bigget so done.
        jnz tmp_19         ; q is lower

        ; If equal substract q
tmp_19:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_20:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




and_l1ms2:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov    rcx, [rdx]
        cmp    ecx, 0
        
        js     tmp_21
        movsx  rax, ecx
        and rax, [rsi +8]
        mov    [rdi+8], rax

        xor    rax, rax
        and rax, [rsi + 16];

        mov    [rdi + 16 ], rax;

        xor    rax, rax
        and rax, [rsi + 24];

        mov    [rdi + 24 ], rax;

        xor    rax, rax
        and rax, [rsi + 32];

        mov    [rdi + 32 ], rax;

        xor    rax, rax
        and rax, [rsi + 40];

        mov    [rdi + 40 ], rax;

        xor    rax, rax
        and rax, [rsi + 48];

        and    rax, [lboMask] ;

        mov    [rdi + 48 ], rax;


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_23        ; q is bigget so done.
        jnz tmp_22         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_23        ; q is bigget so done.
        jnz tmp_22         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_23        ; q is bigget so done.
        jnz tmp_22         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_23        ; q is bigget so done.
        jnz tmp_22         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_23        ; q is bigget so done.
        jnz tmp_22         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_23        ; q is bigget so done.
        jnz tmp_22         ; q is lower

        ; If equal substract q
tmp_22:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_23:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_21:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_25        ; q is bigget so done.
        jnz tmp_24         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_25        ; q is bigget so done.
        jnz tmp_24         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_25        ; q is bigget so done.
        jnz tmp_24         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_25        ; q is bigget so done.
        jnz tmp_24         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_25        ; q is bigget so done.
        jnz tmp_24         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_25        ; q is bigget so done.
        jnz tmp_24         ; q is lower

        ; If equal substract q
tmp_24:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_25:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret





and_s1l2:
        bt     rcx, 62          ; check if montgomery first
        jc     and_s1l2m
and_s1l2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov    eax, [rsi]
        cmp    eax, 0
        
        js     tmp_26
        and rax, [rdx +8]
        mov    [rdi+8], rax

        xor    rax, rax
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        xor    rax, rax
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        xor    rax, rax
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        xor    rax, rax
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        xor    rax, rax
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_28        ; q is bigget so done.
        jnz tmp_27         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_28        ; q is bigget so done.
        jnz tmp_27         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_28        ; q is bigget so done.
        jnz tmp_27         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_28        ; q is bigget so done.
        jnz tmp_27         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_28        ; q is bigget so done.
        jnz tmp_27         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_28        ; q is bigget so done.
        jnz tmp_27         ; q is lower

        ; If equal substract q
tmp_27:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_28:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_26:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_30        ; q is bigget so done.
        jnz tmp_29         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_30        ; q is bigget so done.
        jnz tmp_29         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_30        ; q is bigget so done.
        jnz tmp_29         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_30        ; q is bigget so done.
        jnz tmp_29         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_30        ; q is bigget so done.
        jnz tmp_29         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_30        ; q is bigget so done.
        jnz tmp_29         ; q is lower

        ; If equal substract q
tmp_29:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_30:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




and_s1l2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        mov    eax, [rsi]
        cmp    eax, 0
        
        js     tmp_31
        and rax, [rdx +8]
        mov    [rdi+8], rax

        xor    rax, rax
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        xor    rax, rax
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        xor    rax, rax
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        xor    rax, rax
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        xor    rax, rax
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_33        ; q is bigget so done.
        jnz tmp_32         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_33        ; q is bigget so done.
        jnz tmp_32         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_33        ; q is bigget so done.
        jnz tmp_32         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_33        ; q is bigget so done.
        jnz tmp_32         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_33        ; q is bigget so done.
        jnz tmp_32         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_33        ; q is bigget so done.
        jnz tmp_32         ; q is lower

        ; If equal substract q
tmp_32:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_33:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_31:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_35        ; q is bigget so done.
        jnz tmp_34         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_35        ; q is bigget so done.
        jnz tmp_34         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_35        ; q is bigget so done.
        jnz tmp_34         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_35        ; q is bigget so done.
        jnz tmp_34         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_35        ; q is bigget so done.
        jnz tmp_34         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_35        ; q is bigget so done.
        jnz tmp_34         ; q is lower

        ; If equal substract q
tmp_34:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_35:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret





and_l1l2:
        bt     rax, 62          ; check if montgomery first
        jc     and_l1ml2
        bt     rcx, 62          ; check if montgomery first
        jc     and_l1nl2m
and_l1nl2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_37        ; q is bigget so done.
        jnz tmp_36         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_37        ; q is bigget so done.
        jnz tmp_36         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_37        ; q is bigget so done.
        jnz tmp_36         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_37        ; q is bigget so done.
        jnz tmp_36         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_37        ; q is bigget so done.
        jnz tmp_36         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_37        ; q is bigget so done.
        jnz tmp_36         ; q is lower

        ; If equal substract q
tmp_36:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_37:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


and_l1nl2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi



        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_39        ; q is bigget so done.
        jnz tmp_38         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_39        ; q is bigget so done.
        jnz tmp_38         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_39        ; q is bigget so done.
        jnz tmp_38         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_39        ; q is bigget so done.
        jnz tmp_38         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_39        ; q is bigget so done.
        jnz tmp_38         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_39        ; q is bigget so done.
        jnz tmp_38         ; q is lower

        ; If equal substract q
tmp_38:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_39:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


and_l1ml2:
        bt     rcx, 62          ; check if montgomery first
        jc     and_l1ml2m
and_l1ml2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx



        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_41        ; q is bigget so done.
        jnz tmp_40         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_41        ; q is bigget so done.
        jnz tmp_40         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_41        ; q is bigget so done.
        jnz tmp_40         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_41        ; q is bigget so done.
        jnz tmp_40         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_41        ; q is bigget so done.
        jnz tmp_40         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_41        ; q is bigget so done.
        jnz tmp_40         ; q is lower

        ; If equal substract q
tmp_40:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_41:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


and_l1ml2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi



        mov rax, [rsi + 8]
        and rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        and rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        and rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        and rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        and rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        and rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_43        ; q is bigget so done.
        jnz tmp_42         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_43        ; q is bigget so done.
        jnz tmp_42         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_43        ; q is bigget so done.
        jnz tmp_42         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_43        ; q is bigget so done.
        jnz tmp_42         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_43        ; q is bigget so done.
        jnz tmp_42         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_43        ; q is bigget so done.
        jnz tmp_42         ; q is lower

        ; If equal substract q
tmp_42:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_43:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret



;;;;;;;;;;;;;;;;;;;;;;
; bor
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_bor:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        mov    rax, [rsi]
        mov    rcx, [rdx]
        bt     rax, 63          ; Check if is short first operand
        jc     or_l1
        bt     rcx, 63          ; Check if is short second operand
        jc     or_s1l2

or_s1s2:

        cmp    eax, 0
        
        js     tmp_44

        cmp    ecx, 0
        js     tmp_44
        xor    rdx, rdx         ; both ops are positive so do the op and return
        mov    edx, eax
        or    edx, ecx
        mov    [rdi], rdx       ; not necessary to adjust so just save and return
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_44:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx



        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_46        ; q is bigget so done.
        jnz tmp_45         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_46        ; q is bigget so done.
        jnz tmp_45         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_46        ; q is bigget so done.
        jnz tmp_45         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_46        ; q is bigget so done.
        jnz tmp_45         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_46        ; q is bigget so done.
        jnz tmp_45         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_46        ; q is bigget so done.
        jnz tmp_45         ; q is lower

        ; If equal substract q
tmp_45:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_46:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret






or_l1:
        bt     rcx, 63          ; Check if is short second operand
        jc     or_l1l2


or_l1s2:
        bt     rax, 62          ; check if montgomery first
        jc     or_l1ms2
or_l1ns2:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov    rcx, [rdx]
        cmp    ecx, 0
        
        js     tmp_47
        movsx  rax, ecx
        or rax, [rsi +8]
        mov    [rdi+8], rax

        xor    rax, rax
        or rax, [rsi + 16];

        mov    [rdi + 16 ], rax;

        xor    rax, rax
        or rax, [rsi + 24];

        mov    [rdi + 24 ], rax;

        xor    rax, rax
        or rax, [rsi + 32];

        mov    [rdi + 32 ], rax;

        xor    rax, rax
        or rax, [rsi + 40];

        mov    [rdi + 40 ], rax;

        xor    rax, rax
        or rax, [rsi + 48];

        and    rax, [lboMask] ;

        mov    [rdi + 48 ], rax;


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_49        ; q is bigget so done.
        jnz tmp_48         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_49        ; q is bigget so done.
        jnz tmp_48         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_49        ; q is bigget so done.
        jnz tmp_48         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_49        ; q is bigget so done.
        jnz tmp_48         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_49        ; q is bigget so done.
        jnz tmp_48         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_49        ; q is bigget so done.
        jnz tmp_48         ; q is lower

        ; If equal substract q
tmp_48:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_49:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_47:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_51        ; q is bigget so done.
        jnz tmp_50         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_51        ; q is bigget so done.
        jnz tmp_50         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_51        ; q is bigget so done.
        jnz tmp_50         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_51        ; q is bigget so done.
        jnz tmp_50         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_51        ; q is bigget so done.
        jnz tmp_50         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_51        ; q is bigget so done.
        jnz tmp_50         ; q is lower

        ; If equal substract q
tmp_50:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_51:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




or_l1ms2:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov    rcx, [rdx]
        cmp    ecx, 0
        
        js     tmp_52
        movsx  rax, ecx
        or rax, [rsi +8]
        mov    [rdi+8], rax

        xor    rax, rax
        or rax, [rsi + 16];

        mov    [rdi + 16 ], rax;

        xor    rax, rax
        or rax, [rsi + 24];

        mov    [rdi + 24 ], rax;

        xor    rax, rax
        or rax, [rsi + 32];

        mov    [rdi + 32 ], rax;

        xor    rax, rax
        or rax, [rsi + 40];

        mov    [rdi + 40 ], rax;

        xor    rax, rax
        or rax, [rsi + 48];

        and    rax, [lboMask] ;

        mov    [rdi + 48 ], rax;


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_54        ; q is bigget so done.
        jnz tmp_53         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_54        ; q is bigget so done.
        jnz tmp_53         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_54        ; q is bigget so done.
        jnz tmp_53         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_54        ; q is bigget so done.
        jnz tmp_53         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_54        ; q is bigget so done.
        jnz tmp_53         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_54        ; q is bigget so done.
        jnz tmp_53         ; q is lower

        ; If equal substract q
tmp_53:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_54:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_52:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_56        ; q is bigget so done.
        jnz tmp_55         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_56        ; q is bigget so done.
        jnz tmp_55         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_56        ; q is bigget so done.
        jnz tmp_55         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_56        ; q is bigget so done.
        jnz tmp_55         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_56        ; q is bigget so done.
        jnz tmp_55         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_56        ; q is bigget so done.
        jnz tmp_55         ; q is lower

        ; If equal substract q
tmp_55:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_56:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret





or_s1l2:
        bt     rcx, 62          ; check if montgomery first
        jc     or_s1l2m
or_s1l2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov    eax, [rsi]
        cmp    eax, 0
        
        js     tmp_57
        or rax, [rdx +8]
        mov    [rdi+8], rax

        xor    rax, rax
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        xor    rax, rax
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        xor    rax, rax
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        xor    rax, rax
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        xor    rax, rax
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_59        ; q is bigget so done.
        jnz tmp_58         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_59        ; q is bigget so done.
        jnz tmp_58         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_59        ; q is bigget so done.
        jnz tmp_58         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_59        ; q is bigget so done.
        jnz tmp_58         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_59        ; q is bigget so done.
        jnz tmp_58         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_59        ; q is bigget so done.
        jnz tmp_58         ; q is lower

        ; If equal substract q
tmp_58:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_59:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_57:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_61        ; q is bigget so done.
        jnz tmp_60         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_61        ; q is bigget so done.
        jnz tmp_60         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_61        ; q is bigget so done.
        jnz tmp_60         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_61        ; q is bigget so done.
        jnz tmp_60         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_61        ; q is bigget so done.
        jnz tmp_60         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_61        ; q is bigget so done.
        jnz tmp_60         ; q is lower

        ; If equal substract q
tmp_60:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_61:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




or_s1l2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        mov    eax, [rsi]
        cmp    eax, 0
        
        js     tmp_62
        or rax, [rdx +8]
        mov    [rdi+8], rax

        xor    rax, rax
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        xor    rax, rax
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        xor    rax, rax
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        xor    rax, rax
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        xor    rax, rax
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_64        ; q is bigget so done.
        jnz tmp_63         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_64        ; q is bigget so done.
        jnz tmp_63         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_64        ; q is bigget so done.
        jnz tmp_63         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_64        ; q is bigget so done.
        jnz tmp_63         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_64        ; q is bigget so done.
        jnz tmp_63         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_64        ; q is bigget so done.
        jnz tmp_63         ; q is lower

        ; If equal substract q
tmp_63:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_64:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_62:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_66        ; q is bigget so done.
        jnz tmp_65         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_66        ; q is bigget so done.
        jnz tmp_65         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_66        ; q is bigget so done.
        jnz tmp_65         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_66        ; q is bigget so done.
        jnz tmp_65         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_66        ; q is bigget so done.
        jnz tmp_65         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_66        ; q is bigget so done.
        jnz tmp_65         ; q is lower

        ; If equal substract q
tmp_65:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_66:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret





or_l1l2:
        bt     rax, 62          ; check if montgomery first
        jc     or_l1ml2
        bt     rcx, 62          ; check if montgomery first
        jc     or_l1nl2m
or_l1nl2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_68        ; q is bigget so done.
        jnz tmp_67         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_68        ; q is bigget so done.
        jnz tmp_67         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_68        ; q is bigget so done.
        jnz tmp_67         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_68        ; q is bigget so done.
        jnz tmp_67         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_68        ; q is bigget so done.
        jnz tmp_67         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_68        ; q is bigget so done.
        jnz tmp_67         ; q is lower

        ; If equal substract q
tmp_67:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_68:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


or_l1nl2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi



        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_70        ; q is bigget so done.
        jnz tmp_69         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_70        ; q is bigget so done.
        jnz tmp_69         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_70        ; q is bigget so done.
        jnz tmp_69         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_70        ; q is bigget so done.
        jnz tmp_69         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_70        ; q is bigget so done.
        jnz tmp_69         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_70        ; q is bigget so done.
        jnz tmp_69         ; q is lower

        ; If equal substract q
tmp_69:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_70:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


or_l1ml2:
        bt     rcx, 62          ; check if montgomery first
        jc     or_l1ml2m
or_l1ml2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx



        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_72        ; q is bigget so done.
        jnz tmp_71         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_72        ; q is bigget so done.
        jnz tmp_71         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_72        ; q is bigget so done.
        jnz tmp_71         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_72        ; q is bigget so done.
        jnz tmp_71         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_72        ; q is bigget so done.
        jnz tmp_71         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_72        ; q is bigget so done.
        jnz tmp_71         ; q is lower

        ; If equal substract q
tmp_71:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_72:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


or_l1ml2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi



        mov rax, [rsi + 8]
        or rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        or rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        or rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        or rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        or rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        or rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_74        ; q is bigget so done.
        jnz tmp_73         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_74        ; q is bigget so done.
        jnz tmp_73         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_74        ; q is bigget so done.
        jnz tmp_73         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_74        ; q is bigget so done.
        jnz tmp_73         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_74        ; q is bigget so done.
        jnz tmp_73         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_74        ; q is bigget so done.
        jnz tmp_73         ; q is lower

        ; If equal substract q
tmp_73:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_74:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret



;;;;;;;;;;;;;;;;;;;;;;
; bxor
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_bxor:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        mov    rax, [rsi]
        mov    rcx, [rdx]
        bt     rax, 63          ; Check if is short first operand
        jc     xor_l1
        bt     rcx, 63          ; Check if is short second operand
        jc     xor_s1l2

xor_s1s2:

        cmp    eax, 0
        
        js     tmp_75

        cmp    ecx, 0
        js     tmp_75
        xor    rdx, rdx         ; both ops are positive so do the op and return
        mov    edx, eax
        xor    edx, ecx
        mov    [rdi], rdx       ; not necessary to adjust so just save and return
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_75:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx



        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_77        ; q is bigget so done.
        jnz tmp_76         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_77        ; q is bigget so done.
        jnz tmp_76         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_77        ; q is bigget so done.
        jnz tmp_76         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_77        ; q is bigget so done.
        jnz tmp_76         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_77        ; q is bigget so done.
        jnz tmp_76         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_77        ; q is bigget so done.
        jnz tmp_76         ; q is lower

        ; If equal substract q
tmp_76:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_77:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret






xor_l1:
        bt     rcx, 63          ; Check if is short second operand
        jc     xor_l1l2


xor_l1s2:
        bt     rax, 62          ; check if montgomery first
        jc     xor_l1ms2
xor_l1ns2:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov    rcx, [rdx]
        cmp    ecx, 0
        
        js     tmp_78
        movsx  rax, ecx
        xor rax, [rsi +8]
        mov    [rdi+8], rax

        xor    rax, rax
        xor rax, [rsi + 16];

        mov    [rdi + 16 ], rax;

        xor    rax, rax
        xor rax, [rsi + 24];

        mov    [rdi + 24 ], rax;

        xor    rax, rax
        xor rax, [rsi + 32];

        mov    [rdi + 32 ], rax;

        xor    rax, rax
        xor rax, [rsi + 40];

        mov    [rdi + 40 ], rax;

        xor    rax, rax
        xor rax, [rsi + 48];

        and    rax, [lboMask] ;

        mov    [rdi + 48 ], rax;


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_80        ; q is bigget so done.
        jnz tmp_79         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_80        ; q is bigget so done.
        jnz tmp_79         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_80        ; q is bigget so done.
        jnz tmp_79         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_80        ; q is bigget so done.
        jnz tmp_79         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_80        ; q is bigget so done.
        jnz tmp_79         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_80        ; q is bigget so done.
        jnz tmp_79         ; q is lower

        ; If equal substract q
tmp_79:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_80:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_78:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_82        ; q is bigget so done.
        jnz tmp_81         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_82        ; q is bigget so done.
        jnz tmp_81         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_82        ; q is bigget so done.
        jnz tmp_81         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_82        ; q is bigget so done.
        jnz tmp_81         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_82        ; q is bigget so done.
        jnz tmp_81         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_82        ; q is bigget so done.
        jnz tmp_81         ; q is lower

        ; If equal substract q
tmp_81:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_82:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




xor_l1ms2:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov    rcx, [rdx]
        cmp    ecx, 0
        
        js     tmp_83
        movsx  rax, ecx
        xor rax, [rsi +8]
        mov    [rdi+8], rax

        xor    rax, rax
        xor rax, [rsi + 16];

        mov    [rdi + 16 ], rax;

        xor    rax, rax
        xor rax, [rsi + 24];

        mov    [rdi + 24 ], rax;

        xor    rax, rax
        xor rax, [rsi + 32];

        mov    [rdi + 32 ], rax;

        xor    rax, rax
        xor rax, [rsi + 40];

        mov    [rdi + 40 ], rax;

        xor    rax, rax
        xor rax, [rsi + 48];

        and    rax, [lboMask] ;

        mov    [rdi + 48 ], rax;


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_85        ; q is bigget so done.
        jnz tmp_84         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_85        ; q is bigget so done.
        jnz tmp_84         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_85        ; q is bigget so done.
        jnz tmp_84         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_85        ; q is bigget so done.
        jnz tmp_84         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_85        ; q is bigget so done.
        jnz tmp_84         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_85        ; q is bigget so done.
        jnz tmp_84         ; q is lower

        ; If equal substract q
tmp_84:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_85:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_83:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_87        ; q is bigget so done.
        jnz tmp_86         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_87        ; q is bigget so done.
        jnz tmp_86         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_87        ; q is bigget so done.
        jnz tmp_86         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_87        ; q is bigget so done.
        jnz tmp_86         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_87        ; q is bigget so done.
        jnz tmp_86         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_87        ; q is bigget so done.
        jnz tmp_86         ; q is lower

        ; If equal substract q
tmp_86:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_87:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret





xor_s1l2:
        bt     rcx, 62          ; check if montgomery first
        jc     xor_s1l2m
xor_s1l2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov    eax, [rsi]
        cmp    eax, 0
        
        js     tmp_88
        xor rax, [rdx +8]
        mov    [rdi+8], rax

        xor    rax, rax
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        xor    rax, rax
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        xor    rax, rax
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        xor    rax, rax
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        xor    rax, rax
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_90        ; q is bigget so done.
        jnz tmp_89         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_90        ; q is bigget so done.
        jnz tmp_89         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_90        ; q is bigget so done.
        jnz tmp_89         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_90        ; q is bigget so done.
        jnz tmp_89         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_90        ; q is bigget so done.
        jnz tmp_89         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_90        ; q is bigget so done.
        jnz tmp_89         ; q is lower

        ; If equal substract q
tmp_89:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_90:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_88:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_92        ; q is bigget so done.
        jnz tmp_91         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_92        ; q is bigget so done.
        jnz tmp_91         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_92        ; q is bigget so done.
        jnz tmp_91         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_92        ; q is bigget so done.
        jnz tmp_91         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_92        ; q is bigget so done.
        jnz tmp_91         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_92        ; q is bigget so done.
        jnz tmp_91         ; q is lower

        ; If equal substract q
tmp_91:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_92:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




xor_s1l2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        mov    eax, [rsi]
        cmp    eax, 0
        
        js     tmp_93
        xor rax, [rdx +8]
        mov    [rdi+8], rax

        xor    rax, rax
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        xor    rax, rax
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        xor    rax, rax
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        xor    rax, rax
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        xor    rax, rax
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_95        ; q is bigget so done.
        jnz tmp_94         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_95        ; q is bigget so done.
        jnz tmp_94         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_95        ; q is bigget so done.
        jnz tmp_94         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_95        ; q is bigget so done.
        jnz tmp_94         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_95        ; q is bigget so done.
        jnz tmp_94         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_95        ; q is bigget so done.
        jnz tmp_94         ; q is lower

        ; If equal substract q
tmp_94:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_95:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

tmp_93:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_97        ; q is bigget so done.
        jnz tmp_96         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_97        ; q is bigget so done.
        jnz tmp_96         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_97        ; q is bigget so done.
        jnz tmp_96         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_97        ; q is bigget so done.
        jnz tmp_96         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_97        ; q is bigget so done.
        jnz tmp_96         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_97        ; q is bigget so done.
        jnz tmp_96         ; q is lower

        ; If equal substract q
tmp_96:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_97:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret





xor_l1l2:
        bt     rax, 62          ; check if montgomery first
        jc     xor_l1ml2
        bt     rcx, 62          ; check if montgomery first
        jc     xor_l1nl2m
xor_l1nl2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d


        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_99        ; q is bigget so done.
        jnz tmp_98         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_99        ; q is bigget so done.
        jnz tmp_98         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_99        ; q is bigget so done.
        jnz tmp_98         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_99        ; q is bigget so done.
        jnz tmp_98         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_99        ; q is bigget so done.
        jnz tmp_98         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_99        ; q is bigget so done.
        jnz tmp_98         ; q is lower

        ; If equal substract q
tmp_98:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_99:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


xor_l1nl2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi



        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_101        ; q is bigget so done.
        jnz tmp_100         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_101        ; q is bigget so done.
        jnz tmp_100         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_101        ; q is bigget so done.
        jnz tmp_100         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_101        ; q is bigget so done.
        jnz tmp_100         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_101        ; q is bigget so done.
        jnz tmp_100         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_101        ; q is bigget so done.
        jnz tmp_100         ; q is lower

        ; If equal substract q
tmp_100:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_101:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


xor_l1ml2:
        bt     rcx, 62          ; check if montgomery first
        jc     xor_l1ml2m
xor_l1ml2n:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx



        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_103        ; q is bigget so done.
        jnz tmp_102         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_103        ; q is bigget so done.
        jnz tmp_102         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_103        ; q is bigget so done.
        jnz tmp_102         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_103        ; q is bigget so done.
        jnz tmp_102         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_103        ; q is bigget so done.
        jnz tmp_102         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_103        ; q is bigget so done.
        jnz tmp_102         ; q is lower

        ; If equal substract q
tmp_102:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_103:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


xor_l1ml2m:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi



        mov rax, [rsi + 8]
        xor rax, [rdx + 8]

        mov    [rdi + 8 ], rax

        mov rax, [rsi + 16]
        xor rax, [rdx + 16]

        mov    [rdi + 16 ], rax

        mov rax, [rsi + 24]
        xor rax, [rdx + 24]

        mov    [rdi + 24 ], rax

        mov rax, [rsi + 32]
        xor rax, [rdx + 32]

        mov    [rdi + 32 ], rax

        mov rax, [rsi + 40]
        xor rax, [rdx + 40]

        mov    [rdi + 40 ], rax

        mov rax, [rsi + 48]
        xor rax, [rdx + 48]

        and    rax, [lboMask]

        mov    [rdi + 48 ], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_105        ; q is bigget so done.
        jnz tmp_104         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_105        ; q is bigget so done.
        jnz tmp_104         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_105        ; q is bigget so done.
        jnz tmp_104         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_105        ; q is bigget so done.
        jnz tmp_104         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_105        ; q is bigget so done.
        jnz tmp_104         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_105        ; q is bigget so done.
        jnz tmp_104         ; q is lower

        ; If equal substract q
tmp_104:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_105:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




;;;;;;;;;;;;;;;;;;;;;;
; bnot
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_bnot:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
                mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d

        mov     rax, [rsi]
        bt      rax, 63          ; Check if is long operand
        jc      bnot_l1
bnot_s:
        
        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp     bnot_l1n

bnot_l1:
        bt     rax, 62          ; check if montgomery first
        jnc    bnot_l1n

bnot_l1m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


bnot_l1n:

        mov    rax, [rsi + 8]
        not    rax

        mov    [rdi + 8], rax

        mov    rax, [rsi + 16]
        not    rax

        mov    [rdi + 16], rax

        mov    rax, [rsi + 24]
        not    rax

        mov    [rdi + 24], rax

        mov    rax, [rsi + 32]
        not    rax

        mov    [rdi + 32], rax

        mov    rax, [rsi + 40]
        not    rax

        mov    [rdi + 40], rax

        mov    rax, [rsi + 48]
        not    rax

        and    rax, [lboMask]

        mov    [rdi + 48], rax


        
        

        ; Compare with q

        mov rax, [rdi + 48]
        cmp rax, [q + 40]
        jc tmp_107        ; q is bigget so done.
        jnz tmp_106         ; q is lower

        mov rax, [rdi + 40]
        cmp rax, [q + 32]
        jc tmp_107        ; q is bigget so done.
        jnz tmp_106         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 24]
        jc tmp_107        ; q is bigget so done.
        jnz tmp_106         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 16]
        jc tmp_107        ; q is bigget so done.
        jnz tmp_106         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 8]
        jc tmp_107        ; q is bigget so done.
        jnz tmp_106         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 0]
        jc tmp_107        ; q is bigget so done.
        jnz tmp_106         ; q is lower

        ; If equal substract q
tmp_106:

        mov rax, [q + 0]
        sub [rdi + 8], rax

        mov rax, [q + 8]
        sbb [rdi + 16], rax

        mov rax, [q + 16]
        sbb [rdi + 24], rax

        mov rax, [q + 24]
        sbb [rdi + 32], rax

        mov rax, [q + 32]
        sbb [rdi + 40], rax

        mov rax, [q + 40]
        sbb [rdi + 48], rax

tmp_107:

        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret




;;;;;;;;;;;;;;;;;;;;;;
; rawShr
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= how much is shifted
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rawShr:
rawShr:
        cmp rdx, 0
        je tachyon_math_bn384_small_two_adicity_fq_rawCopy

        cmp rdx, 382
        jae tachyon_math_bn384_small_two_adicity_fq_rawZero

rawShr_nz:
        mov r8, rdx
        shr r8,6
        mov rcx, rdx
        and rcx, 0x3F
        jz rawShr_aligned
        mov ch, 64
        sub ch, cl

        mov r9, 1
        rol cx, 8
        shl r9, cl
        rol cx, 8
        sub r9, 1
        mov r10, r9
        not r10


        cmp r8, 5
        jae rawShr_if2_0

        mov rax, [rsi + r8*8 + 0 ]
        shr rax, cl
        and rax, r9
        mov r11, [rsi + r8*8 + 8 ]
        rol cx, 8
        shl r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11
        mov [rdi + 0], rax

        jmp rawShr_endif_0
rawShr_if2_0:
        jne rawShr_else_0

        mov rax, [rsi + r8*8 + 0 ]
        shr rax, cl
        and rax, r9
        mov [rdi + 0], rax

        jmp rawShr_endif_0
rawShr_else_0:
        xor  rax, rax
        mov [rdi + 0], rax
rawShr_endif_0:

        cmp r8, 4
        jae rawShr_if2_1

        mov rax, [rsi + r8*8 + 8 ]
        shr rax, cl
        and rax, r9
        mov r11, [rsi + r8*8 + 16 ]
        rol cx, 8
        shl r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11
        mov [rdi + 8], rax

        jmp rawShr_endif_1
rawShr_if2_1:
        jne rawShr_else_1

        mov rax, [rsi + r8*8 + 8 ]
        shr rax, cl
        and rax, r9
        mov [rdi + 8], rax

        jmp rawShr_endif_1
rawShr_else_1:
        xor  rax, rax
        mov [rdi + 8], rax
rawShr_endif_1:

        cmp r8, 3
        jae rawShr_if2_2

        mov rax, [rsi + r8*8 + 16 ]
        shr rax, cl
        and rax, r9
        mov r11, [rsi + r8*8 + 24 ]
        rol cx, 8
        shl r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11
        mov [rdi + 16], rax

        jmp rawShr_endif_2
rawShr_if2_2:
        jne rawShr_else_2

        mov rax, [rsi + r8*8 + 16 ]
        shr rax, cl
        and rax, r9
        mov [rdi + 16], rax

        jmp rawShr_endif_2
rawShr_else_2:
        xor  rax, rax
        mov [rdi + 16], rax
rawShr_endif_2:

        cmp r8, 2
        jae rawShr_if2_3

        mov rax, [rsi + r8*8 + 24 ]
        shr rax, cl
        and rax, r9
        mov r11, [rsi + r8*8 + 32 ]
        rol cx, 8
        shl r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11
        mov [rdi + 24], rax

        jmp rawShr_endif_3
rawShr_if2_3:
        jne rawShr_else_3

        mov rax, [rsi + r8*8 + 24 ]
        shr rax, cl
        and rax, r9
        mov [rdi + 24], rax

        jmp rawShr_endif_3
rawShr_else_3:
        xor  rax, rax
        mov [rdi + 24], rax
rawShr_endif_3:

        cmp r8, 1
        jae rawShr_if2_4

        mov rax, [rsi + r8*8 + 32 ]
        shr rax, cl
        and rax, r9
        mov r11, [rsi + r8*8 + 40 ]
        rol cx, 8
        shl r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11
        mov [rdi + 32], rax

        jmp rawShr_endif_4
rawShr_if2_4:
        jne rawShr_else_4

        mov rax, [rsi + r8*8 + 32 ]
        shr rax, cl
        and rax, r9
        mov [rdi + 32], rax

        jmp rawShr_endif_4
rawShr_else_4:
        xor  rax, rax
        mov [rdi + 32], rax
rawShr_endif_4:

        cmp r8, 0
        jae rawShr_if2_5

        mov rax, [rsi + r8*8 + 40 ]
        shr rax, cl
        and rax, r9
        mov r11, [rsi + r8*8 + 48 ]
        rol cx, 8
        shl r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11
        mov [rdi + 40], rax

        jmp rawShr_endif_5
rawShr_if2_5:
        jne rawShr_else_5

        mov rax, [rsi + r8*8 + 40 ]
        shr rax, cl
        and rax, r9
        mov [rdi + 40], rax

        jmp rawShr_endif_5
rawShr_else_5:
        xor  rax, rax
        mov [rdi + 40], rax
rawShr_endif_5:


        ret

rawShr_aligned:

        cmp r8, 5
        ja rawShr_if3_0
        mov rax, [rsi + r8*8 + 0 ]
        mov [rdi + 0], rax
        jmp rawShr_endif3_0
rawShr_if3_0:
        xor rax, rax
        mov [rdi + 0], rax
rawShr_endif3_0:

        cmp r8, 4
        ja rawShr_if3_1
        mov rax, [rsi + r8*8 + 8 ]
        mov [rdi + 8], rax
        jmp rawShr_endif3_1
rawShr_if3_1:
        xor rax, rax
        mov [rdi + 8], rax
rawShr_endif3_1:

        cmp r8, 3
        ja rawShr_if3_2
        mov rax, [rsi + r8*8 + 16 ]
        mov [rdi + 16], rax
        jmp rawShr_endif3_2
rawShr_if3_2:
        xor rax, rax
        mov [rdi + 16], rax
rawShr_endif3_2:

        cmp r8, 2
        ja rawShr_if3_3
        mov rax, [rsi + r8*8 + 24 ]
        mov [rdi + 24], rax
        jmp rawShr_endif3_3
rawShr_if3_3:
        xor rax, rax
        mov [rdi + 24], rax
rawShr_endif3_3:

        cmp r8, 1
        ja rawShr_if3_4
        mov rax, [rsi + r8*8 + 32 ]
        mov [rdi + 32], rax
        jmp rawShr_endif3_4
rawShr_if3_4:
        xor rax, rax
        mov [rdi + 32], rax
rawShr_endif3_4:

        cmp r8, 0
        ja rawShr_if3_5
        mov rax, [rsi + r8*8 + 40 ]
        mov [rdi + 40], rax
        jmp rawShr_endif3_5
rawShr_if3_5:
        xor rax, rax
        mov [rdi + 40], rax
rawShr_endif3_5:

        ret


;;;;;;;;;;;;;;;;;;;;;;
; rawShl
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= how much is shifted
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rawShl:
rawShl:
        cmp rdx, 0
        je tachyon_math_bn384_small_two_adicity_fq_rawCopy
        
        cmp rdx, 382
        jae tachyon_math_bn384_small_two_adicity_fq_rawZero

        mov r8, rdx
        shr r8,6
        mov rcx, rdx
        and rcx, 0x3F
        jz rawShl_aligned
        mov ch, 64
        sub ch, cl


        mov r10, 1
        shl r10, cl
        sub r10, 1
        mov r9, r10
        not r9

        mov rdx, rsi
        mov rax, r8
        shl rax, 3
        sub rdx, rax


        cmp r8, 5
        jae rawShl_if2_5

        mov rax, [rdx + 40 ]
        shl rax, cl
        and rax, r9
        mov r11, [rdx + 32 ]
        rol cx, 8
        shr r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11

        and rax, [lboMask]

        
        mov [rdi + 40], rax

        jmp rawShl_endif_5
rawShl_if2_5:
        jne rawShl_else_5

        mov rax, [rdx + 40 ]
        shl rax, cl
        and rax, r9

        and rax, [lboMask]

        
        mov [rdi + 40], rax

        jmp rawShl_endif_5
rawShl_else_5:
        xor rax, rax
        mov [rdi + 40], rax
rawShl_endif_5:

        cmp r8, 4
        jae rawShl_if2_4

        mov rax, [rdx + 32 ]
        shl rax, cl
        and rax, r9
        mov r11, [rdx + 24 ]
        rol cx, 8
        shr r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11

        
        mov [rdi + 32], rax

        jmp rawShl_endif_4
rawShl_if2_4:
        jne rawShl_else_4

        mov rax, [rdx + 32 ]
        shl rax, cl
        and rax, r9

        
        mov [rdi + 32], rax

        jmp rawShl_endif_4
rawShl_else_4:
        xor rax, rax
        mov [rdi + 32], rax
rawShl_endif_4:

        cmp r8, 3
        jae rawShl_if2_3

        mov rax, [rdx + 24 ]
        shl rax, cl
        and rax, r9
        mov r11, [rdx + 16 ]
        rol cx, 8
        shr r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11

        
        mov [rdi + 24], rax

        jmp rawShl_endif_3
rawShl_if2_3:
        jne rawShl_else_3

        mov rax, [rdx + 24 ]
        shl rax, cl
        and rax, r9

        
        mov [rdi + 24], rax

        jmp rawShl_endif_3
rawShl_else_3:
        xor rax, rax
        mov [rdi + 24], rax
rawShl_endif_3:

        cmp r8, 2
        jae rawShl_if2_2

        mov rax, [rdx + 16 ]
        shl rax, cl
        and rax, r9
        mov r11, [rdx + 8 ]
        rol cx, 8
        shr r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11

        
        mov [rdi + 16], rax

        jmp rawShl_endif_2
rawShl_if2_2:
        jne rawShl_else_2

        mov rax, [rdx + 16 ]
        shl rax, cl
        and rax, r9

        
        mov [rdi + 16], rax

        jmp rawShl_endif_2
rawShl_else_2:
        xor rax, rax
        mov [rdi + 16], rax
rawShl_endif_2:

        cmp r8, 1
        jae rawShl_if2_1

        mov rax, [rdx + 8 ]
        shl rax, cl
        and rax, r9
        mov r11, [rdx + 0 ]
        rol cx, 8
        shr r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11

        
        mov [rdi + 8], rax

        jmp rawShl_endif_1
rawShl_if2_1:
        jne rawShl_else_1

        mov rax, [rdx + 8 ]
        shl rax, cl
        and rax, r9

        
        mov [rdi + 8], rax

        jmp rawShl_endif_1
rawShl_else_1:
        xor rax, rax
        mov [rdi + 8], rax
rawShl_endif_1:

        cmp r8, 0
        jae rawShl_if2_0

        mov rax, [rdx + 0 ]
        shl rax, cl
        and rax, r9
        mov r11, [rdx + -8 ]
        rol cx, 8
        shr r11, cl
        rol cx, 8
        and r11, r10
        or rax, r11

        
        mov [rdi + 0], rax

        jmp rawShl_endif_0
rawShl_if2_0:
        jne rawShl_else_0

        mov rax, [rdx + 0 ]
        shl rax, cl
        and rax, r9

        
        mov [rdi + 0], rax

        jmp rawShl_endif_0
rawShl_else_0:
        xor rax, rax
        mov [rdi + 0], rax
rawShl_endif_0:



        
        

        ; Compare with q

        mov rax, [rdi + 40]
        cmp rax, [q + 40]
        jc tmp_109        ; q is bigget so done.
        jnz tmp_108         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 32]
        jc tmp_109        ; q is bigget so done.
        jnz tmp_108         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 24]
        jc tmp_109        ; q is bigget so done.
        jnz tmp_108         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 16]
        jc tmp_109        ; q is bigget so done.
        jnz tmp_108         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 8]
        jc tmp_109        ; q is bigget so done.
        jnz tmp_108         ; q is lower

        mov rax, [rdi + 0]
        cmp rax, [q + 0]
        jc tmp_109        ; q is bigget so done.
        jnz tmp_108         ; q is lower

        ; If equal substract q
tmp_108:

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

tmp_109:

        ret;

rawShl_aligned:
        mov rdx, rsi
        mov rax, r8
        shl rax, 3
        sub rdx, rax


        cmp r8, 5
        ja rawShl_if3_5
        mov rax, [rdx + 40 ]

        and rax, [lboMask]
        
        mov [rdi + 40], rax
        jmp rawShl_endif3_5
rawShl_if3_5:
        xor rax, rax 
        mov [rdi + 40], rax
rawShl_endif3_5:

        cmp r8, 4
        ja rawShl_if3_4
        mov rax, [rdx + 32 ]
        
        mov [rdi + 32], rax
        jmp rawShl_endif3_4
rawShl_if3_4:
        xor rax, rax 
        mov [rdi + 32], rax
rawShl_endif3_4:

        cmp r8, 3
        ja rawShl_if3_3
        mov rax, [rdx + 24 ]
        
        mov [rdi + 24], rax
        jmp rawShl_endif3_3
rawShl_if3_3:
        xor rax, rax 
        mov [rdi + 24], rax
rawShl_endif3_3:

        cmp r8, 2
        ja rawShl_if3_2
        mov rax, [rdx + 16 ]
        
        mov [rdi + 16], rax
        jmp rawShl_endif3_2
rawShl_if3_2:
        xor rax, rax 
        mov [rdi + 16], rax
rawShl_endif3_2:

        cmp r8, 1
        ja rawShl_if3_1
        mov rax, [rdx + 8 ]
        
        mov [rdi + 8], rax
        jmp rawShl_endif3_1
rawShl_if3_1:
        xor rax, rax 
        mov [rdi + 8], rax
rawShl_endif3_1:

        cmp r8, 0
        ja rawShl_if3_0
        mov rax, [rdx + 0 ]
        
        mov [rdi + 0], rax
        jmp rawShl_endif3_0
rawShl_if3_0:
        xor rax, rax 
        mov [rdi + 0], rax
rawShl_endif3_0:


        
        

        ; Compare with q

        mov rax, [rdi + 40]
        cmp rax, [q + 40]
        jc tmp_111        ; q is bigget so done.
        jnz tmp_110         ; q is lower

        mov rax, [rdi + 32]
        cmp rax, [q + 32]
        jc tmp_111        ; q is bigget so done.
        jnz tmp_110         ; q is lower

        mov rax, [rdi + 24]
        cmp rax, [q + 24]
        jc tmp_111        ; q is bigget so done.
        jnz tmp_110         ; q is lower

        mov rax, [rdi + 16]
        cmp rax, [q + 16]
        jc tmp_111        ; q is bigget so done.
        jnz tmp_110         ; q is lower

        mov rax, [rdi + 8]
        cmp rax, [q + 8]
        jc tmp_111        ; q is bigget so done.
        jnz tmp_110         ; q is lower

        mov rax, [rdi + 0]
        cmp rax, [q + 0]
        jc tmp_111        ; q is bigget so done.
        jnz tmp_110         ; q is lower

        ; If equal substract q
tmp_110:

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

tmp_111:

        ret
        





;;;;;;;;;;;;;;;;;;;;;;
; shr
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_shr:
        push   rbp
        push   rsi
        push   rdi
        push   rdx
        mov    rbp, rsp


        
        
        
        
        mov    rcx, [rdx]
        bt     rcx, 63          ; Check if is short second operand
        jnc     tmp_112

        ; long 2
        bt     rcx, 62          ; Check if is montgomery second operand
        jnc     tmp_113

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

tmp_113:
        mov rcx, [rdx + 8]
        cmp rcx, 382
        jae  tmp_114
        xor rax, rax
        
        cmp [rdx + 16], rax
        jnz tmp_114
        
        cmp [rdx + 24], rax
        jnz tmp_114
        
        cmp [rdx + 32], rax
        jnz tmp_114
        
        cmp [rdx + 40], rax
        jnz tmp_114
        
        cmp [rdx + 48], rax
        jnz tmp_114
        
        mov rdx, rcx
        jmp do_shr

tmp_114:
        mov rcx, [q]
        sub rcx, [rdx+8]
        cmp rcx, 382
        jae  setzero
        mov rax, [q]
        sub rax, [rdx+8]
        
        mov rax, [q+ 8] 
        sbb rax, [rdx + 16]
        jnz setzero
        
        mov rax, [q+ 16] 
        sbb rax, [rdx + 24]
        jnz setzero
        
        mov rax, [q+ 24] 
        sbb rax, [rdx + 32]
        jnz setzero
        
        mov rax, [q+ 32] 
        sbb rax, [rdx + 40]
        jnz setzero
        
        mov rax, [q+ 40] 
        sbb rax, [rdx + 48]
        jnz setzero
        
        mov rdx, rcx
        jmp do_shl

tmp_112:
        cmp ecx, 0
        jl  tmp_115
        cmp ecx, 382
        jae  setzero
        movsx rdx, ecx 
        jmp do_shr
tmp_115:
        neg ecx
        cmp ecx, 382
        jae  setzero
        movsx rdx, ecx 
        jmp do_shl


        

;;;;;;;;;;;;;;;;;;;;;;
; shl
;;;;;;;;;;;;;;;;;;;;;;
; Adds two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result
; Modified Registers:
;    r8, r9, 10, r11, rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_shl:
        push   rbp
        push   rsi
        push   rdi
        push   rdx
        mov    rbp, rsp

        
        
        
        
        mov    rcx, [rdx]
        bt     rcx, 63          ; Check if is short second operand
        jnc     tmp_116

        ; long 2
        bt     rcx, 62          ; Check if is montgomery second operand
        jnc     tmp_117

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

tmp_117:
        mov rcx, [rdx + 8]
        cmp rcx, 382
        jae  tmp_118
        xor rax, rax
        
        cmp [rdx + 16], rax
        jnz tmp_118
        
        cmp [rdx + 24], rax
        jnz tmp_118
        
        cmp [rdx + 32], rax
        jnz tmp_118
        
        cmp [rdx + 40], rax
        jnz tmp_118
        
        cmp [rdx + 48], rax
        jnz tmp_118
        
        mov rdx, rcx
        jmp do_shl

tmp_118:
        mov rcx, [q]
        sub rcx, [rdx+8]
        cmp rcx, 382
        jae  setzero
        mov rax, [q]
        sub rax, [rdx+8]
        
        mov rax, [q+ 8] 
        sbb rax, [rdx + 16]
        jnz setzero
        
        mov rax, [q+ 16] 
        sbb rax, [rdx + 24]
        jnz setzero
        
        mov rax, [q+ 24] 
        sbb rax, [rdx + 32]
        jnz setzero
        
        mov rax, [q+ 32] 
        sbb rax, [rdx + 40]
        jnz setzero
        
        mov rax, [q+ 40] 
        sbb rax, [rdx + 48]
        jnz setzero
        
        mov rdx, rcx
        jmp do_shr

tmp_116:
        cmp ecx, 0
        jl  tmp_119
        cmp ecx, 382
        jae  setzero
        movsx rdx, ecx 
        jmp do_shl
tmp_119:
        neg ecx
        cmp ecx, 382
        jae  setzero
        movsx rdx, ecx 
        jmp do_shr



;;;;;;;;;;
;;; doShl
;;;;;;;;;;
do_shl: 
        mov    rcx, [rsi]
        bt     rcx, 63          ; Check if is short second operand
        jc     do_shll
do_shls:

        movsx rax, ecx
        cmp rax, 0
        jz  setzero;
        jl  do_shlcl

        cmp rdx, 31
        jae do_shlcl

        mov cl, dl 
        shl rax, cl
        mov rcx, rax
        shr rcx, 31
        jnz do_shlcl
        mov [rdi], rax
        mov rsp, rbp
        pop   rdx
        pop   rdi
        pop   rsi
        pop   rbp
        ret

do_shlcl:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp do_shlln

do_shll:
        bt      rcx, 62          ; Check if is short second operand
        jnc     do_shlln

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

do_shlln:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d
        add     rdi, 8
        add     rsi, 8
        call    rawShl
        mov rsp, rbp
        pop   rdx
        pop   rdi
        pop   rsi
        pop   rbp
        ret


;;;;;;;;;;
;;; doShr
;;;;;;;;;;
do_shr: 
        mov    rcx, [rsi]
        bt     rcx, 63          ; Check if is short second operand
        jc     do_shrl
do_shrs:
        movsx rax, ecx
        cmp rax, 0
        jz  setzero;
        jl  do_shrcl

        cmp rdx, 31
        jae setzero

        mov cl, dl 
        shr rax, cl
        mov [rdi], rax
        mov rsp, rbp
        pop   rdx
        pop   rdi
        pop   rsi
        pop   rbp
        ret

do_shrcl:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


do_shrl:
        bt      rcx, 62          ; Check if is short second operand
        jnc     do_shrln

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

do_shrln:
        mov r11b, 0x80
        shl r11d, 24
        mov [rdi+4], r11d
        add     rdi, 8
        add     rsi, 8
        call    rawShr
        mov rsp, rbp
        pop   rdx
        pop   rdi
        pop   rsi
        pop   rbp
        ret

setzero:
        xor rax, rax
        mov [rdi], rax
        mov rsp, rbp
        pop   rdx
        pop   rdi
        pop   rsi
        pop   rbp
        ret





;;;;;;;;;;;;;;;;;;;;;;
; rgt - Raw Greater Than
;;;;;;;;;;;;;;;;;;;;;;
; returns in ax 1 id *rsi > *rdx
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rax <= Return 1 or 0
; Modified Registers:
;    r8, r9, rax
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rgt:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        mov    r8, [rsi]
        mov    r9, [rdx]
        bt     r8, 63          ; Check if is short first operand
        jc     rgt_l1
        bt     r9, 63          ; Check if is short second operand
        jc     rgt_s1l2

rgt_s1s2:                       ; Both operands are short
        cmp    r8d, r9d
        jg     rgt_ret1
        jmp    rgt_ret0


rgt_l1:
        bt     r9, 63          ; Check if is short second operand
        jc     rgt_l1l2

;;;;;;;;
rgt_l1s2:
        bt     r8, 62          ; check if montgomery first
        jc     rgt_l1ms2
rgt_l1ns2:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp rgtL1L2

rgt_l1ms2:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp rgtL1L2


;;;;;;;;
rgt_s1l2:
        bt     r9, 62          ; check if montgomery second
        jc     rgt_s1l2m
rgt_s1l2n:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp rgtL1L2

rgt_s1l2m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp rgtL1L2

;;;;
rgt_l1l2:
        bt     r8, 62          ; check if montgomery first
        jc     rgt_l1ml2
rgt_l1nl2:
        bt     r9, 62          ; check if montgomery second
        jc     rgt_l1nl2m
rgt_l1nl2n:
        jmp rgtL1L2

rgt_l1nl2m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp rgtL1L2

rgt_l1ml2:
        bt     r9, 62          ; check if montgomery second
        jc     rgt_l1ml2m
rgt_l1ml2n:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp rgtL1L2

rgt_l1ml2m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp rgtL1L2


;;;;;;
; rgtL1L2
;;;;;;

rgtL1L2:


        mov     rax, [rsi + 48]
        cmp     [half + 40], rax     ; comare with (q-1)/2
        jc rgtl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 40]
        cmp     [half + 32], rax     ; comare with (q-1)/2
        jc rgtl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 32]
        cmp     [half + 24], rax     ; comare with (q-1)/2
        jc rgtl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 24]
        cmp     [half + 16], rax     ; comare with (q-1)/2
        jc rgtl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 16]
        cmp     [half + 8], rax     ; comare with (q-1)/2
        jc rgtl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 8]
        cmp     [half + 0], rax     ; comare with (q-1)/2
        jc rgtl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jmp rgtl1l2_p1



rgtl1l2_p1:


        mov     rax, [rdx + 48]
        cmp     [half + 40], rax     ; comare with (q-1)/2
        jc rgt_ret1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 40]
        cmp     [half + 32], rax     ; comare with (q-1)/2
        jc rgt_ret1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 32]
        cmp     [half + 24], rax     ; comare with (q-1)/2
        jc rgt_ret1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 24]
        cmp     [half + 16], rax     ; comare with (q-1)/2
        jc rgt_ret1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 16]
        cmp     [half + 8], rax     ; comare with (q-1)/2
        jc rgt_ret1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgtRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 8]
        cmp     [half + 0], rax     ; comare with (q-1)/2
        jc rgt_ret1                           ; half<rax => e1-e2 is neg => e1 < e2

        jmp rgtRawL1L2




rgtl1l2_n1:


        mov     rax, [rdx + 48]
        cmp     [half + 40], rax     ; comare with (q-1)/2
        jc rgtRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgt_ret0                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 40]
        cmp     [half + 32], rax     ; comare with (q-1)/2
        jc rgtRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgt_ret0                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 32]
        cmp     [half + 24], rax     ; comare with (q-1)/2
        jc rgtRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgt_ret0                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 24]
        cmp     [half + 16], rax     ; comare with (q-1)/2
        jc rgtRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgt_ret0                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 16]
        cmp     [half + 8], rax     ; comare with (q-1)/2
        jc rgtRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rgt_ret0                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 8]
        cmp     [half + 0], rax     ; comare with (q-1)/2
        jc rgtRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jmp rgt_ret0





rgtRawL1L2:

        mov     rax, [rsi + 48]
        cmp     [rdx + 48], rax     ; comare with (q-1)/2
        jc rgt_ret1                      ; rsi<rdx => 1st > 2nd

        jnz rgt_ret0


        mov     rax, [rsi + 40]
        cmp     [rdx + 40], rax     ; comare with (q-1)/2
        jc rgt_ret1                      ; rsi<rdx => 1st > 2nd

        jnz rgt_ret0


        mov     rax, [rsi + 32]
        cmp     [rdx + 32], rax     ; comare with (q-1)/2
        jc rgt_ret1                      ; rsi<rdx => 1st > 2nd

        jnz rgt_ret0


        mov     rax, [rsi + 24]
        cmp     [rdx + 24], rax     ; comare with (q-1)/2
        jc rgt_ret1                      ; rsi<rdx => 1st > 2nd

        jnz rgt_ret0


        mov     rax, [rsi + 16]
        cmp     [rdx + 16], rax     ; comare with (q-1)/2
        jc rgt_ret1                      ; rsi<rdx => 1st > 2nd

        jnz rgt_ret0


        mov     rax, [rsi + 8]
        cmp     [rdx + 8], rax     ; comare with (q-1)/2
        jc rgt_ret1                      ; rsi<rdx => 1st > 2nd



rgt_ret0:
        xor    rax, rax
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret
rgt_ret1:
        mov    rax, 1
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret



;;;;;;;;;;;;;;;;;;;;;;
; rlt - Raw Less Than
;;;;;;;;;;;;;;;;;;;;;;
; returns in ax 1 id *rsi > *rdx
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rax <= Return 1 or 0
; Modified Registers:
;    r8, r9, rax
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rlt:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        mov    r8, [rsi]
        mov    r9, [rdx]
        bt     r8, 63          ; Check if is short first operand
        jc     rlt_l1
        bt     r9, 63          ; Check if is short second operand
        jc     rlt_s1l2

rlt_s1s2:                       ; Both operands are short
        cmp    r8d, r9d
        jl     rlt_ret1
        jmp    rlt_ret0


rlt_l1:
        bt     r9, 63          ; Check if is short second operand
        jc     rlt_l1l2

;;;;;;;;
rlt_l1s2:
        bt     r8, 62          ; check if montgomery first
        jc     rlt_l1ms2
rlt_l1ns2:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp rltL1L2

rlt_l1ms2:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp rltL1L2


;;;;;;;;
rlt_s1l2:
        bt     r9, 62          ; check if montgomery second
        jc     rlt_s1l2m
rlt_s1l2n:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp rltL1L2

rlt_s1l2m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp rltL1L2

;;;;
rlt_l1l2:
        bt     r8, 62          ; check if montgomery first
        jc     rlt_l1ml2
rlt_l1nl2:
        bt     r9, 62          ; check if montgomery second
        jc     rlt_l1nl2m
rlt_l1nl2n:
        jmp rltL1L2

rlt_l1nl2m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp rltL1L2

rlt_l1ml2:
        bt     r9, 62          ; check if montgomery second
        jc     rlt_l1ml2m
rlt_l1ml2n:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp rltL1L2

rlt_l1ml2m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx


        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp rltL1L2


;;;;;;
; rltL1L2
;;;;;;

rltL1L2:


        mov     rax, [rsi + 48]
        cmp     [half + 40], rax     ; comare with (q-1)/2
        jc rltl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 40]
        cmp     [half + 32], rax     ; comare with (q-1)/2
        jc rltl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 32]
        cmp     [half + 24], rax     ; comare with (q-1)/2
        jc rltl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 24]
        cmp     [half + 16], rax     ; comare with (q-1)/2
        jc rltl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 16]
        cmp     [half + 8], rax     ; comare with (q-1)/2
        jc rltl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltl1l2_p1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rsi + 8]
        cmp     [half + 0], rax     ; comare with (q-1)/2
        jc rltl1l2_n1                           ; half<rax => e1-e2 is neg => e1 < e2

        jmp rltl1l2_p1



rltl1l2_p1:


        mov     rax, [rdx + 48]
        cmp     [half + 40], rax     ; comare with (q-1)/2
        jc rlt_ret0                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 40]
        cmp     [half + 32], rax     ; comare with (q-1)/2
        jc rlt_ret0                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 32]
        cmp     [half + 24], rax     ; comare with (q-1)/2
        jc rlt_ret0                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 24]
        cmp     [half + 16], rax     ; comare with (q-1)/2
        jc rlt_ret0                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 16]
        cmp     [half + 8], rax     ; comare with (q-1)/2
        jc rlt_ret0                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rltRawL1L2                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 8]
        cmp     [half + 0], rax     ; comare with (q-1)/2
        jc rlt_ret0                           ; half<rax => e1-e2 is neg => e1 < e2

        jmp rltRawL1L2




rltl1l2_n1:


        mov     rax, [rdx + 48]
        cmp     [half + 40], rax     ; comare with (q-1)/2
        jc rltRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rlt_ret1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 40]
        cmp     [half + 32], rax     ; comare with (q-1)/2
        jc rltRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rlt_ret1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 32]
        cmp     [half + 24], rax     ; comare with (q-1)/2
        jc rltRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rlt_ret1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 24]
        cmp     [half + 16], rax     ; comare with (q-1)/2
        jc rltRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rlt_ret1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 16]
        cmp     [half + 8], rax     ; comare with (q-1)/2
        jc rltRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jnz rlt_ret1                       ; half>rax => e1 -e2 is pos => e1 > e2


        mov     rax, [rdx + 8]
        cmp     [half + 0], rax     ; comare with (q-1)/2
        jc rltRawL1L2                           ; half<rax => e1-e2 is neg => e1 < e2

        jmp rlt_ret1





rltRawL1L2:

        mov     rax, [rsi + 48]
        cmp     [rdx + 48], rax     ; comare with (q-1)/2
        jc rlt_ret0                      ; rsi<rdx => 1st > 2nd
        jnz rlt_ret1

        mov     rax, [rsi + 40]
        cmp     [rdx + 40], rax     ; comare with (q-1)/2
        jc rlt_ret0                      ; rsi<rdx => 1st > 2nd
        jnz rlt_ret1

        mov     rax, [rsi + 32]
        cmp     [rdx + 32], rax     ; comare with (q-1)/2
        jc rlt_ret0                      ; rsi<rdx => 1st > 2nd
        jnz rlt_ret1

        mov     rax, [rsi + 24]
        cmp     [rdx + 24], rax     ; comare with (q-1)/2
        jc rlt_ret0                      ; rsi<rdx => 1st > 2nd
        jnz rlt_ret1

        mov     rax, [rsi + 16]
        cmp     [rdx + 16], rax     ; comare with (q-1)/2
        jc rlt_ret0                      ; rsi<rdx => 1st > 2nd
        jnz rlt_ret1

        mov     rax, [rsi + 8]
        cmp     [rdx + 8], rax     ; comare with (q-1)/2
        jc rlt_ret0                      ; rsi<rdx => 1st > 2nd
        jnz rlt_ret1


rlt_ret0:
        xor    rax, rax
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret
rlt_ret1:
        mov    rax, 1
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret



;;;;;;;;;;;;;;;;;;;;;;
; req - Raw Eq
;;;;;;;;;;;;;;;;;;;;;;
; returns in ax 1 id *rsi == *rdx
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rax <= Return 1 or 0
; Modified Registers:
;    r8, r9, rax
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_req:
        push   rbp
        push   rsi
        push   rdx
        mov    rbp, rsp
        mov    r8, [rsi]
        mov    r9, [rdx]
        bt     r8, 63          ; Check if is short first operand
        jc     req_l1
        bt     r9, 63          ; Check if is short second operand
        jc     req_s1l2

req_s1s2:                       ; Both operands are short
        cmp    r8d, r9d
        je     req_ret1
        jmp    req_ret0


req_l1:
        bt     r9, 63          ; Check if is short second operand
        jc     req_l1l2

;;;;;;;;
req_l1s2:
        bt     r8, 62          ; check if montgomery first
        jc     req_l1ms2
req_l1ns2:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp reqL1L2

req_l1ms2:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp reqL1L2


;;;;;;;;
req_s1l2:
        bt     r9, 62          ; check if montgomery second
        jc     req_s1l2m
req_s1l2n:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toLongNormal
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp reqL1L2

req_s1l2m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp reqL1L2

;;;;
req_l1l2:
        bt     r8, 62          ; check if montgomery first
        jc     req_l1ml2
req_l1nl2:
        bt     r9, 62          ; check if montgomery second
        jc     req_l1nl2m
req_l1nl2n:
        jmp reqL1L2

req_l1nl2m:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rsi, rdi
        pop  rdi
        pop  rdx

        jmp reqL1L2

req_l1ml2:
        bt     r9, 62          ; check if montgomery second
        jc     req_l1ml2m
req_l1ml2n:

        mov  r8, rdi
        sub  rsp, 56
        mov  rdi, rsp
        push rsi
        mov  rsi, rdx
        push r8
        call tachyon_math_bn384_small_two_adicity_fq_toMontgomery
        mov  rdx, rdi
        pop  rdi
        pop  rsi

        jmp reqL1L2

req_l1ml2m:
        jmp reqL1L2


;;;;;;
; eqL1L2
;;;;;;

reqL1L2:

        mov     rax, [rsi + 8]
        cmp     [rdx + 8], rax
        jne     req_ret0                      ; rsi<rdi => 1st > 2nd

        mov     rax, [rsi + 16]
        cmp     [rdx + 16], rax
        jne     req_ret0                      ; rsi<rdi => 1st > 2nd

        mov     rax, [rsi + 24]
        cmp     [rdx + 24], rax
        jne     req_ret0                      ; rsi<rdi => 1st > 2nd

        mov     rax, [rsi + 32]
        cmp     [rdx + 32], rax
        jne     req_ret0                      ; rsi<rdi => 1st > 2nd

        mov     rax, [rsi + 40]
        cmp     [rdx + 40], rax
        jne     req_ret0                      ; rsi<rdi => 1st > 2nd

        mov     rax, [rsi + 48]
        cmp     [rdx + 48], rax
        jne     req_ret0                      ; rsi<rdi => 1st > 2nd


req_ret1:
        mov    rax, 1
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret

req_ret0:
        xor    rax, rax
        mov rsp, rbp
        pop rdx
        pop rsi
        pop rbp
        ret


;;;;;;;;;;;;;;;;;;;;;;
; gt
;;;;;;;;;;;;;;;;;;;;;;
; Compares two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result can be zero or one.
; Modified Registers:
;    rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_gt:
        call tachyon_math_bn384_small_two_adicity_fq_rgt
        mov [rdi], rax
        ret

;;;;;;;;;;;;;;;;;;;;;;
; lt
;;;;;;;;;;;;;;;;;;;;;;
; Compares two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result can be zero or one.
; Modified Registers:
;    rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_lt:
        call tachyon_math_bn384_small_two_adicity_fq_rlt
        mov [rdi], rax
        ret

;;;;;;;;;;;;;;;;;;;;;;
; eq
;;;;;;;;;;;;;;;;;;;;;;
; Compares two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result can be zero or one.
; Modified Registers:
;    rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_eq:
        call tachyon_math_bn384_small_two_adicity_fq_req
        mov [rdi], rax
        ret

;;;;;;;;;;;;;;;;;;;;;;
; neq
;;;;;;;;;;;;;;;;;;;;;;
; Compares two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result can be zero or one.
; Modified Registers:
;    rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_neq:
        call tachyon_math_bn384_small_two_adicity_fq_req
        xor rax, 1
        mov [rdi], rax
        ret

;;;;;;;;;;;;;;;;;;;;;;
; geq
;;;;;;;;;;;;;;;;;;;;;;
; Compares two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result can be zero or one.
; Modified Registers:
;    rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_geq:
        call tachyon_math_bn384_small_two_adicity_fq_rlt
        xor rax, 1
        mov [rdi], rax
        ret

;;;;;;;;;;;;;;;;;;;;;;
; leq
;;;;;;;;;;;;;;;;;;;;;;
; Compares two elements of any kind
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result can be zero or one.
; Modified Registers:
;    rax, rcx
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_leq:
        call tachyon_math_bn384_small_two_adicity_fq_rgt
        xor rax, 1
        mov [rdi], rax
        ret



;;;;;;;;;;;;;;;;;;;;;;
; rawIsEq
;;;;;;;;;;;;;;;;;;;;;;
; Compares two elements of any kind
; Params:
;   rdi <= Pointer to element 1
;   rsi <= Pointer to element 2
; Returns
;   ax <= 1 if are equal 0, otherwise
; Modified Registers:
;   rax
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rawIsEq:

        mov     rax, [rsi + 0]
        cmp     [rdi + 0], rax
        jne     rawIsEq_ret0

        mov     rax, [rsi + 8]
        cmp     [rdi + 8], rax
        jne     rawIsEq_ret0

        mov     rax, [rsi + 16]
        cmp     [rdi + 16], rax
        jne     rawIsEq_ret0

        mov     rax, [rsi + 24]
        cmp     [rdi + 24], rax
        jne     rawIsEq_ret0

        mov     rax, [rsi + 32]
        cmp     [rdi + 32], rax
        jne     rawIsEq_ret0

        mov     rax, [rsi + 40]
        cmp     [rdi + 40], rax
        jne     rawIsEq_ret0

rawIsEq_ret1:
        mov    rax, 1
        ret

rawIsEq_ret0:
        xor    rax, rax
        ret

;;;;;;;;;;;;;;;;;;;;;;
; rawIsZero
;;;;;;;;;;;;;;;;;;;;;;
; Compares two elements of any kind
; Params:
;   rdi <= Pointer to element 1
; Returns
;   ax <= 1 if is 0, otherwise
; Modified Registers:
;   rax
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_rawIsZero:

        cmp     qword [rdi + 0], $0
        jne     rawIsZero_ret0

        cmp     qword [rdi + 8], $0
        jne     rawIsZero_ret0

        cmp     qword [rdi + 16], $0
        jne     rawIsZero_ret0

        cmp     qword [rdi + 24], $0
        jne     rawIsZero_ret0

        cmp     qword [rdi + 32], $0
        jne     rawIsZero_ret0

        cmp     qword [rdi + 40], $0
        jne     rawIsZero_ret0


rawIsZero_ret1:
        mov    rax, 1
        ret

rawIsZero_ret0:
        xor    rax, rax
        ret











;;;;;;;;;;;;;;;;;;;;;;
; land
;;;;;;;;;;;;;;;;;;;;;;
; Logical and between two elements
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result zero or one
; Modified Registers:
;    rax, rcx, r8
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_land:






    mov     rax, [rsi]
    bt      rax, 63
    jc      tmp_120

    test    eax, eax
    jz      retZero_122
    jmp     retOne_121

tmp_120:

    mov     rax, [rsi + 8]
    test    rax, rax
    jnz     retOne_121

    mov     rax, [rsi + 16]
    test    rax, rax
    jnz     retOne_121

    mov     rax, [rsi + 24]
    test    rax, rax
    jnz     retOne_121

    mov     rax, [rsi + 32]
    test    rax, rax
    jnz     retOne_121

    mov     rax, [rsi + 40]
    test    rax, rax
    jnz     retOne_121

    mov     rax, [rsi + 48]
    test    rax, rax
    jnz     retOne_121


retZero_122:
    mov     qword r8, 0
    jmp     done_123

retOne_121:
    mov     qword r8, 1

done_123:







    mov     rax, [rdx]
    bt      rax, 63
    jc      tmp_124

    test    eax, eax
    jz      retZero_126
    jmp     retOne_125

tmp_124:

    mov     rax, [rdx + 8]
    test    rax, rax
    jnz     retOne_125

    mov     rax, [rdx + 16]
    test    rax, rax
    jnz     retOne_125

    mov     rax, [rdx + 24]
    test    rax, rax
    jnz     retOne_125

    mov     rax, [rdx + 32]
    test    rax, rax
    jnz     retOne_125

    mov     rax, [rdx + 40]
    test    rax, rax
    jnz     retOne_125

    mov     rax, [rdx + 48]
    test    rax, rax
    jnz     retOne_125


retZero_126:
    mov     qword rcx, 0
    jmp     done_127

retOne_125:
    mov     qword rcx, 1

done_127:

        and rcx, r8
        mov [rdi], rcx
        ret


;;;;;;;;;;;;;;;;;;;;;;
; lor
;;;;;;;;;;;;;;;;;;;;;;
; Logical or between two elements
; Params:
;   rsi <= Pointer to element 1
;   rdx <= Pointer to element 2
;   rdi <= Pointer to result zero or one
; Modified Registers:
;    rax, rcx, r8
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_lor:






    mov     rax, [rsi]
    bt      rax, 63
    jc      tmp_128

    test    eax, eax
    jz      retZero_130
    jmp     retOne_129

tmp_128:

    mov     rax, [rsi + 8]
    test    rax, rax
    jnz     retOne_129

    mov     rax, [rsi + 16]
    test    rax, rax
    jnz     retOne_129

    mov     rax, [rsi + 24]
    test    rax, rax
    jnz     retOne_129

    mov     rax, [rsi + 32]
    test    rax, rax
    jnz     retOne_129

    mov     rax, [rsi + 40]
    test    rax, rax
    jnz     retOne_129

    mov     rax, [rsi + 48]
    test    rax, rax
    jnz     retOne_129


retZero_130:
    mov     qword r8, 0
    jmp     done_131

retOne_129:
    mov     qword r8, 1

done_131:







    mov     rax, [rdx]
    bt      rax, 63
    jc      tmp_132

    test    eax, eax
    jz      retZero_134
    jmp     retOne_133

tmp_132:

    mov     rax, [rdx + 8]
    test    rax, rax
    jnz     retOne_133

    mov     rax, [rdx + 16]
    test    rax, rax
    jnz     retOne_133

    mov     rax, [rdx + 24]
    test    rax, rax
    jnz     retOne_133

    mov     rax, [rdx + 32]
    test    rax, rax
    jnz     retOne_133

    mov     rax, [rdx + 40]
    test    rax, rax
    jnz     retOne_133

    mov     rax, [rdx + 48]
    test    rax, rax
    jnz     retOne_133


retZero_134:
    mov     qword rcx, 0
    jmp     done_135

retOne_133:
    mov     qword rcx, 1

done_135:

        or rcx, r8
        mov [rdi], rcx
        ret


;;;;;;;;;;;;;;;;;;;;;;
; lnot
;;;;;;;;;;;;;;;;;;;;;;
; Do the logical not of an element
; Params:
;   rsi <= Pointer to element to be tested
;   rdi <= Pointer to result one if element1 is zero and zero otherwise
; Modified Registers:
;    rax, rax, r8
;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_lnot:






    mov     rax, [rsi]
    bt      rax, 63
    jc      tmp_136

    test    eax, eax
    jz      retZero_138
    jmp     retOne_137

tmp_136:

    mov     rax, [rsi + 8]
    test    rax, rax
    jnz     retOne_137

    mov     rax, [rsi + 16]
    test    rax, rax
    jnz     retOne_137

    mov     rax, [rsi + 24]
    test    rax, rax
    jnz     retOne_137

    mov     rax, [rsi + 32]
    test    rax, rax
    jnz     retOne_137

    mov     rax, [rsi + 40]
    test    rax, rax
    jnz     retOne_137

    mov     rax, [rsi + 48]
    test    rax, rax
    jnz     retOne_137


retZero_138:
    mov     qword rcx, 0
    jmp     done_139

retOne_137:
    mov     qword rcx, 1

done_139:

        test rcx, rcx

        jz lnot_retOne
lnot_retZero:
        mov qword [rdi], 0
        ret
lnot_retOne:
        mov qword [rdi], 1
        ret


;;;;;;;;;;;;;;;;;;;;;;
; isTrue
;;;;;;;;;;;;;;;;;;;;;;
; Convert a 64 bit integer to a long format field element
; Params:
;   rsi <= Pointer to the element
; Returs:
;   rax <= 1 if true 0 if false
;;;;;;;;;;;;;;;;;;;;;;;
tachyon_math_bn384_small_two_adicity_fq_isTrue:
        





    mov     rax, [rdi]
    bt      rax, 63
    jc      tmp_140

    test    eax, eax
    jz      retZero_142
    jmp     retOne_141

tmp_140:

    mov     rax, [rdi + 8]
    test    rax, rax
    jnz     retOne_141

    mov     rax, [rdi + 16]
    test    rax, rax
    jnz     retOne_141

    mov     rax, [rdi + 24]
    test    rax, rax
    jnz     retOne_141

    mov     rax, [rdi + 32]
    test    rax, rax
    jnz     retOne_141

    mov     rax, [rdi + 40]
    test    rax, rax
    jnz     retOne_141

    mov     rax, [rdi + 48]
    test    rax, rax
    jnz     retOne_141


retZero_142:
    mov     qword rax, 0
    jmp     done_143

retOne_141:
    mov     qword rax, 1

done_143:

        ret





        section .data
tachyon_math_bn384_small_two_adicity_fq_q:
        dd      0
        dd      0x80000000
tachyon_math_bn384_small_two_adicity_fq_rawq:
q       dq      0x207c4e269a431001,0x649bdd411682c645,0xe86a281d61074bec,0xd304fe31dc79b326,0xd13bdbf17786104a,0x26a192ce09033aef
half    dq      0x903e27134d218800,0x324deea08b416322,0x7435140eb083a5f6,0x69827f18ee3cd993,0xe89dedf8bbc30825,0x1350c96704819d77
R2      dq      0xe53ab23b9cfaaf3f,0x427228b359e100cd,0xa91bcb194639dd66,0x961869b3f075329c,0x3101b28087326498,0x15fbe7aef9e2ff74
tachyon_math_bn384_small_two_adicity_fq_R3:
        dd      0
        dd      0x80000000
tachyon_math_bn384_small_two_adicity_fq_rawR3:
R3      dq      0x1a6798066e8583a7,0xc13c6fe647e877d6,0x64799bb563478a76,0x023a013a09a83f1e,0x8a9ba466610dab97,0x1b203adad31f7337
lboMask dq      0x3fffffffffffffff
np      dq      0xc51466539430fff

