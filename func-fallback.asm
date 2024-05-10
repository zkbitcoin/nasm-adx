global Fr_rawMMul_fallback
global Fr_rawMSquare_fallback
global Fr_rawToMontgomery_fallback
global Fr_rawFromMontgomery_fallback
DEFAULT REL

section .text

; RDI - (result)
; RSI - a
; RDX - b

Fr_rawMMul_fallback:

    push r15
    push r14
    push r13
    push r12
    push rdi

    mov rcx, rdx                        ; load b into rcx

    mov rdx, [rsi + 0]                  ; load a[0] into rdx
    xor r8, r8                          ; clear r10 register, we use this when we need 0
    ; front-load mul ops, can parallelize 4 of these but latency is 4 cycles
    mulx r9, r8, [rcx + 8]              ; (t[0], t[1]) <- a[0] * b[1]
    mulx r12, rdi, [rcx + 24]           ; (t[2], r[4]) <- a[0] * b[3] (overwrite a[0])
    mulx r14, r13, [rcx + 0]            ; (r[0], r[1]) <- a[0] * b[0]
    mulx r10, r15, [rcx + 16]           ; (r[2] , r[3]) <- a[0] * b[2]
    ; zero flags

    ; start computing modular reduction                                                                         
    mov rdx, r13                        ; move r[0] into rdx
    mulx r11, rdx, [ np ]               ; (rdx, _) <- k = r[1] * np
                                                                                                                    
    ; start first addition chain                                                                                
    add r14, r8                         ; r[1] += t[0]
    adc r15, r9                         ; r[2] += t[1] + flag_c
    adc r10, rdi                        ; r[3] += t[2] + flag_c
    adc r12, $0                         ; r[4] += flag_c

    ; reduce by r[0] * k                                                                                        
    mulx r9, r8, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx r11, rdi, [q + 8]              ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r13, r8                         ; r[0] += t[0] (r13 now free)
    adc r14, rdi                        ; r[1] += t[0]
    adc r15, r11                        ; r[2] += t[1] + flag_c
    adc r10, $0                         ; r[3] += flag_c
    adc r12, $0                         ; r[4] += flag_c
    add r14, r9                         ; r[1] += t[1] + flag_c
    mulx r9, r8, [q + 16]               ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx r11, rdi, [q + 24]             ; (t[2], t[3]) <- (modulus.data[3] * k)
    adc r15, r8                         ; r[2] += t[0] + flag_c
    adc r10, rdi                        ; r[3] += t[2] + flag_c
    adc r12, r11                        ; r[4] += t[3] + flag_c
    add r10, r9                         ; r[3] += t[1] + flag_c
    adc r12, $0                         ; r[4] += flag_i
                                                                                                                    
    ; modulus = 254 bits, so max(t[3])  = 62 bits                                                              
    ; b also 254 bits, so (a[0] * b[3]) = 62 bits                                                              
    ; i.e. carry flag here is always 0 if b is in mont form, no need to update r[5]                            
    ; (which is very convenient because we're out of registers!)                                               
    ; N.B. the value of r[4] now has a max of 63 bits and can accept another 62 bit value before overflowing   
                                                                                                                    
    ; a[1] * b                                                                                                  
    mov rdx, [rsi + 8],                 ; load a[1] into rdx
    mulx r9, r8, [rcx + 0]              ; (t[0], t[1]) <- (a[1] * b[0])
    mulx r11, rdi, [rcx + 8]            ; (t[4], t[5]) <- (a[1] * b[1])
    add r14, r8                         ; r[1] += t[0] + flag_c
    adc r15, rdi                        ; r[2] += t[0] + flag_c
    adc r10, r11                        ; r[3] += t[1] + flag_c
    adc r12, $0                         ; r[4] += flag_c
    add r15, r9                         ; r[2] += t[1] + flag_c
                                                                                                                    
    mulx r9, r8, [rcx + 16]             ; (t[2], t[3]) <- (a[1] * b[2])
    mulx r13, rdi, [rcx + 24]           ; (t[6], r[5]) <- (a[1] * b[3])
    adc r10, r8                         ; r[3] += t[0] + flag_c
    adc r12, rdi                        ; r[4] += t[2] + flag_c
    adc r13, $0                         ; r[5] += flag_c
    add r12, r9                         ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
                                                                                                                    
    ; reduce by r[1] * k
    mov rdx, r14                        ; move r[1] into rdx
    mulx r8, rdx, [ np ]                ; (rd, _) <- k = r[1] * r_inv
    mulx r9, r8, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx r11, rdi, [q + 8]              ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r14, r8                         ; r[1] += t[0] (r14 now free)
    adc r15, rdi                        ; r[2] += t[0] + flag_c
    adc r10, r11                        ; r[3] += t[1] + flag_c
    adc r12, $0                         ; r[4] += flag_c
    adc r13, $0                         ; r[5] += flag_c
    add r15, r9                         ; r[2] += t[1] + flag_c
    mulx r9, r8, [q + 16]               ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx r11, rdi, [q + 24]             ; (t[2], t[3]) <- (modulus.data[3] * k)
    adc r10, r8                         ; r[3] += t[0] + flag_c
    adc r12, r9                         ; r[4] += t[2] + flag_c
    adc r13, r11                        ; r[5] += t[3] + flag_c
    add r12, rdi                        ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
                                                                                                                    
    ; a[2] * b                                                                                                  
    mov rdx, [rsi + 16],                ; load a[2] into rdx
    mulx r9, r8, [rcx + 0],             ; (t[0], t[1]) <- (a[2] * b[0])
    mulx r11, rdi, [rcx + 8]            ; (t[0], t[1]) <- (a[2] * b[1])
    add r15, r8                         ; r[2] += t[0] + flag_c
    adc r10, r9                         ; r[3] += t[1] + flag_c
    adc r12, r11                        ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
    add r10, rdi                        ; r[3] += t[0] + flag_c
    mulx r9, r8, [rcx + 16]             ; (t[0], t[1]) <- (a[2] * b[2])
    mulx r14, rdi, [rcx + 24]           ; (t[2], r[6]) <- (a[2] * b[3])
    adc r12, r8                         ; r[4] += t[0] + flag_c
    adc r13, r9                         ; r[5] += t[2] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r13, rdi                        ; r[5] += t[1] + flag_c
    adc r14, $0                         ; r[6] += flag_c
                                                                                                                    
    ; reduce by r[2] * k                                                                                        
    mov rdx, r15                        ; move r[2] into rdx
    mulx r8, rdx, [ np ],               ; (rdx, _) <- k = r[1] * np
    mulx r9, r8, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx r11, rdi, [q + 8]              ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r15, r8                         ; r[2] += t[0] (%r15 now free)
    adc r10, r9                         ; r[3] += t[0] + flag_c
    adc r12, r11                        ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r10, rdi                        ; r[3] += t[1] + flag_c
    mulx r9, r8, [q + 16]               ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx r11, rdi, [q + 24]             ; (t[2], t[3]) <- (modulus.data[3] * k)
    adc r12, r8                         ; r[4] += t[0] + flag_c
    adc r13, r9                         ; r[5] += t[2] + flag_c
    adc r14, r11                        ; r[6] += t[3] + flag_c
    add r13, rdi                        ; r[5] += t[1] + flag_c
    adc r14, $0                         ; r[6] += flag_c
                                                                                                                    
    ; a[3] * b                                                                                                  
    mov rdx, [rsi + 24]                 ; load a[3] into rdx
    mulx r9, r8, [rcx + 0]              ; (t[0], t[1]) <- (a[3] * b[0])
    mulx r11, rdi, [rcx + 8]            ; (t[4], t[5]) <- (a[3] * b[1])
    add r10, r8                         ; r[3] += t[0] + flag_c
    adc r12, r9                         ; r[4] += t[2] + flag_c
    adc r13, r11                        ; r[5] += t[3] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r12, rdi                        ; r[4] += t[1] + flag_c
                                                                                                                    
    mulx r9, r8, [rcx + 16]             ; (t[2], t[3]) <- (a[3] * b[2])
    mulx r15, rdi, [rcx + 24]           ; (t[6], r[7]) <- (a[3] * b[3])
    adc r13, r8                         ; r[5] += t[4] + flag_c
    adc r14, r9                         ; r[6] += t[6] + flag_c
    adc r15, $0                         ; r[7] += + flag_c
    add r14, rdi                        ; r[6] += t[5] + flag_c
    adc r15, $0                         ; r[7] += flag_c
                                                                                                                    
    ; reduce by r[3] * k                                                                                        
    mov rdx, r10                        ; move np into rdx
    mulx r8, rdx, [ np ]                ; (rdx, _) <- k = r[1] * r_inv
    mulx r9, r8, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx r11, rdi, [q + 8]              ; (t[2], t[3]) <- (modulus.data[1] * k)
    add r10, r8                         ; r[3] += t[0] (rsi now free)
    adc r12,r9                          ; r[4] += t[2] + flag_c
    adc r13, r11                        ; r[5] += t[3] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    adc r15, $0                         ; r[7] += flag_c
    add r12, rdi                        ; r[4] += t[1] + flag_c
                                                                                                                    
    mulx r9, r8, [q + 16]               ; (t[4], t[5]) <- (modulus.data[2] * k)
    mulx rdx, rdi, [q + 24]             ; (t[6], t[7]) <- (modulus.data[3] * k)
    adc r13, r8                         ; r[5] += t[4] + flag_c
    adc r14, r9                         ; r[6] += t[6] + flag_c
    adc r15, rdx                        ; r[7] += t[7] + flag_c
    add r14, rdi                        ; r[6] += t[5] + flag_c
    adc r15, $0,                        ; r[7] += flag_c

    pop rdi

    mov [rdi + 0], r12
    mov [rdi + 8], r13
    mov [rdi + 16],r14
    mov [rdi + 24], r15

    pop r12
    pop r13
    pop r14
    pop r15

    ret
    

;Compute Montgomery squaring of a
;Result is stored, in (r12, r13, r14, r15), in preparation for being stored in "r"

Fr_rawMSquare_fallback:

    push r15
    push r14
    push r13
    push r12
    push rdi
                                                                                                    
    mov rdx, [rsi + 0]                  ; load a[0] into rdx

    xor r8, r8                          ; clear flags
    ; compute a[0] *a[1], a[0]*a[2], a[0]*a[3], a[1]*a[2], a[1]*a[3], a[2]*a[3]
    mulx r10, r9, [rsi + 8],            ; (r[1], r[2]) <- a[0] * a[1]
    mulx r15, r8, [rsi + 16],           ; (t[1], t[2]) <- a[0] * a[2]
    mulx r12, r11, [rsi + 24],          ; (r[3], r[4]) <- a[0] * a[3]


    ; accumulate products into result registers
    add r10, r8                         ; r[2] += t[1]
    adc r11, r15,                       ; r[3] += t[2]
    mov rdx, [rsi + 8]                  ; load a[1] into rdx
    mulx r15, r8, [rsi + 16],           ; (t[5], t[6]) <- a[1] * a[2]
    mulx rcx, rdi, [rsi + 24]           ; (t[3], t[4]) <- a[1] * a[3]
    mov rdx, [rsi + 24]                 ; load a[3] into rdx
    mulx r14, r13, [rsi + 16]           ; (r[5], r[6]) <- a[3] * a[2]
    adc r12, rdi                        ; r[4] += t[3]
    adc r13, rcx                        ; r[5] += t[4] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r11, r8,                        ; r[3] += t[5]
    adc r12, r15                        ; r[4] += t[6]
    adc r13, $0                         ; r[5] += flag_c

    ; double result registers
    add r9, r9                          ; r[1] = 2r[1]
    adc r10, r10                        ; r[2] = 2r[2]
    adc r11, r11                        ; r[3] = 2r[3]
    adc r12, r12                        ; r[4] = 2r[4]
    adc r13, r13                        ; r[5] = 2r[5]
    adc r14, r14                        ; r[6] = 2r[6]

    ; compute a[3]*a[3], a[2]*a[2], a[1]*a[1], a[0]*a[0]
    mov rdx, [rsi + 0]                  ; load a[0] into %rdx
    mulx rcx, r8, rdx                   ; (r[0], t[4]) <- a[0] * a[0]
    mov rdx, [rsi + 16]                 ; load a[2] into %rdx
    mulx rdi, rdx, rdx                  ; (t[7], t[8]) <- a[2] * a[2]
    ; add squares into result registers
    add r12, rdx                        ; r[4] += t[7]
    adc r13, rdi                        ; r[5] += t[8]
    adc r14, $0                         ; r[6] += flag_c
    add r9, rcx                         ; r[1] += t[4]
    mov rdx, [rsi + 24]                 ; r[2] += flag_c
    mulx r15, rcx, rdx                  ; (t[5], r[7]) <- a[3] * a[3]
    mov rdx, [rsi + 8]                  ; load a[1] into np
    mulx rdx, rdi, rdx                  ; (t[3], t[6]) <- a[1] * a[1]
    adc r10, rdi                        ; r[2] += t[3]
    adc r11, rdx                        ; r[3] += t[6]
    adc r12, $0                         ; r[4] += flag_c
    add r14, rcx                        ; r[6] += t[5]
    adc r15, $0                         ; r[7] += flag_c

    ; perform modular reduction: r[0]
    mov rdx, r8                         ; move r8 into rdx
    mulx rdi, rdx, [ np ]               ; (rdx, _) <- k = r[9] * np
    mulx rcx, rdi, [q + 0]              ; (t[0], t[1]) <- (modulus[0] * k)
    add r8, rdi                         ; r[0] += t[0] (%r8 now free)
    adc r9, rcx                         ; r[1] += t[1] + flag_c
    mulx rcx, rdi, [q + 8]              ; (t[2], t[3]) <- (modulus[1] * k)
    adc r10, rcx                        ; r[2] += t[3] + flag_c
    adc r11, $0                         ; r[4] += flag_c
    ; Partial fix        adc $0, r12                            ; r[4] += flag_c
    add r9, rdi                         ; r[1] += t[2]
    mulx rcx, rdi, [q + 16]             ; (t[0], t[1]) <- (modulus[3] * k)
    mulx rdx, r8, [q + 24]              ; (t[2], t[3]) <- (modulus[2] * k)
    adc r10, rdi                        ; r[2] += t[0] + flag_c
    adc r11, rcx                        ; r[3] += t[1] + flag_c
    adc r12, rdx                        ; r[4] += t[3] + flag_c
    adc r13, $0                         ; r[5] += flag_c
    add r11, r8                         ; r[3] += t[2] + flag_c
    adc r12, $0                         ; r[4] += flag_c

    ; perform modular reduction: r[1]
    mov rdx, r9                         ; move r9 into %rdx
    mulx rdi, rdx, [ np ]               ; (rdx, _) <- k = r[9] * np
    mulx rcx, rdi, [q + 0]              ; (t[0], t[1]) <- (modulus[0] * k)
    add  r9, rdi                        ; r[1] += t[0] (%r8 now free)
    adc r10, rcx                        ; r[2] += t[1] + flag_c
    mulx rcx,rdi,  [q + 8]              ; (t[2], t[3]) <- (modulus[1] * k)
    adc r11, rcx                        ; r[3] += t[3] + flag_c
    adc r12, $0                         ; r[4] += flag_c
    add r10, rdi                        ; r[2] += t[2]
    mulx rcx, rdi, [q + 16]             ; (t[0], t[1]) <- (modulus[3] * k)
    mulx r9, r8, [q + 24]               ; (t[2], t[3]) <- (modulus[2] * k)
    adc r11, rdi                        ; r[3] += t[0] + flag_c
    adc r12, rcx                        ; r[4] += t[1] + flag_c
    adc  r13, r9                        ; r[5] += t[3] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r12, r8                         ; r[4] += t[2] + flag_c
    adc r13, $0                         ; r[5] += flag_c

    ; perform modular reduction: r[2]
    mov rdx, r10                        ; move r10 into rdx
    mulx rdi, rdx, [ np ]               ; (rdx, _) <- k = r[10] * np
    mulx rcx, rdi, [q + 0]              ; (t[0], t[1]) <- (modulus[0] * k)
    add r10, rdi                        ; r[2] += t[0] (%r8 now free)
    adc  r11, rcx                       ; r[3] += t[1] + flag_c
    mulx rcx, rdi, [q + 8]              ; (t[2], t[3]) <- (modulus[1] * k)
    mulx r9, r8, [q + 16]               ; (t[0], t[1]) <- (modulus[3] * k)
    mulx rdx, r10, [q + 24]             ; (t[2], t[3]) <- (modulus[2] * k)
    adc r12, rcx                        ; r[4] += t[3] + flag_c
    adc r13, r9                         ; r[5] += t[1] + flag_c
    adc r14, rdx                        ; r[6] += t[3] + flag_c
    adc r15, $0                         ; r[7] += flag_c
    add r11, rdi                        ; r[3] += t[2]
    adc r12, r8                         ; r[4] += t[0] + flag_c
    adc r13, r10                        ; r[5] += t[2] + flag_c
    adc r14, $0                         ; r[6] += flag_c

    ; perform modular reduction: r[3]
    mov  rdx, r11                       ; move r11 into %rdx
    mulx rdi, rdx, [ np]                ; (rdx, _) <- k = r[10] * np
    mulx rcx, rdi, [q + 0]              ; (t[0], t[1]) <- (modulus[0] * k)
    mulx r9, r8, [q + 8]                ; (t[2], t[3]) <- (modulus[1] * k)
    add r11, rdi                        ; r[3] += t[0] (%r11 now free)
    adc r12, r8                         ; r[4] += t[2]
    adc r13, r9                         ; r[5] += t[3] + flag_c
    mulx r9, r8, [q + 16]               ; (t[0], t[1]) <- (modulus[3] * k)
    mulx r11, r10, [q + 24]             ; (t[2], t[3]) <- (modulus[2] * k)
    adc r14, r9                         ; r[6] += t[1] + flag_c
    adc r15, r11                        ; r[7] += t[3] + flag_c
    add r12, rcx                        ; r[4] += t[1] + flag_c
    adc r13, r8                         ; r[5] += t[0] + flag_c
    adc r14, r10                        ; r[6] += t[2] + flag_c
    adc r15, $0                         ; r[7] += flag_c

    pop rdi

    mov [rdi + 0], r12
    mov [rdi + 8], r13
    mov [rdi + 16],r14
    mov [rdi + 24], r15

    pop r12
    pop r13
    pop r14
    pop r15

    ret

;;;;;;;;;;;;;;;;;;;;;;
; rawToMontgomery
;;;;;;;;;;;;;;;;;;;;;;
; Convert a number to Montgomery
;   rdi <= Pointer destination element
;   rsi <= Pointer to src element
;;;;;;;;;;;;;;;;;;;;
Fr_rawToMontgomery_fallback:
    push    rdx
    lea     rdx, [R2]
    call    Fr_rawMMul_fallback
    pop     rdx
    ret

Fr_rawFromMontgomery_fallback:
    push r15
    push r14
    push r13
    push r12
    push rdi

    mov rcx, rdx                        ; load b into rcx

    ; start computing modular reduction

    ; start first chain
    mov r13, [rsi + 0]                  ; move a[0] into r13
    mov r14, 0
    mov r10, 0
    mov r15, 0
    mov r12, 0

    mov rdx, [rsi + 0]                  ; move a[0] into rdx
    mulx r11, rdx, [ np ]               ; (rdx, _) <- k = a[1] * np

    adc r12, $0                         ; r[4] += flag_c

    ; reduce by r[0] * k
    mulx r9, r8, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx r11, rdi, [q + 8]              ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r13, r8                         ; r[0] += t[0] (r13 now free)
    adc r14, rdi                        ; r[1] += t[0]
    adc r15, r11                        ; r[2] += t[1] + flag_c
    mov r10, $0                         ; r[3] += flag_c
    mov r12, $0                         ; r[4] += flag_c
    add r14, r9                         ; r[1] += t[1] + flag_c
    mulx r9, r8, [q + 16]               ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx r11, rdi, [q + 24]             ; (t[2], t[3]) <- (modulus.data[3] * k)
    adc r15, r8                         ; r[2] += t[0] + flag_c
    adc r10, rdi                        ; r[3] += t[2] + flag_c
    adc r12, r11                        ; r[4] += t[3] + flag_c
    add r10, r9                         ; r[3] += t[1] + flag_c
    adc r12, $0                         ; r[4] += flag_i

    ; start second chain
    mov r8, [rsi + 8]
    mov r9, 0
    mov r11, 0
    mov rdi, 0

    add r14, r8                         ; r[1] += t[0] + flag_c
    adc r15, rdi                        ; r[2] += t[0] + flag_c

    ; reduce by r[1] * k
    mov rdx, r14                        ; move r[1] into rdx
    mulx r8, rdx, [ np ]                ; (rd, _) <- k = r[1] * r_inv
    mulx r9, r8, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx r11, rdi, [q + 8]              ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r14, r8                         ; r[1] += t[0] (r14 now free)
    adc r15, rdi                        ; r[2] += t[0] + flag_c
    adc r10, r11                        ; r[3] += t[1] + flag_c
    adc r12, $0                         ; r[4] += flag_c
    adc r13, $0                         ; r[5] += flag_c
    add r15, r9                         ; r[2] += t[1] + flag_c
    mulx r9, r8, [q + 16]               ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx r11, rdi, [q + 24]             ; (t[2], t[3]) <- (modulus.data[3] * k)
    adc r10, r8                         ; r[3] += t[0] + flag_c
    adc r12, r9                         ; r[4] += t[2] + flag_c
    adc r13, r11                        ; r[5] += t[3] + flag_c
    add r12, rdi                        ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c

    ; start third chain
    mov r8, [rsi + 16]
    mov r9, 0

    mov r11, 0
    mov rdi, 0

    add r15, r8                         ; r[2] += t[0] + flag_c
    adc r10, r9                         ; r[3] += t[1] + flag_c

    ; reduce by r[2] * k
    mov rdx, r15                        ; move r[2] into rdx
    mulx r8, rdx, [ np ],               ; (rdx, _) <- k = r[1] * np
    mulx r9, r8, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx r11, rdi, [q + 8]              ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r15, r8                         ; r[2] += t[0] (%r15 now free)
    adc r10, r9                         ; r[3] += t[0] + flag_c
    adc r12, r11                        ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r10, rdi                        ; r[3] += t[1] + flag_c
    mulx r9, r8, [q + 16]               ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx r11, rdi, [q + 24]             ; (t[2], t[3]) <- (modulus.data[3] * k)
    adc r12, r8                         ; r[4] += t[0] + flag_c
    adc r13, r9                         ; r[5] += t[2] + flag_c
    adc r14, r11                        ; r[6] += t[3] + flag_c
    add r13, rdi                        ; r[5] += t[1] + flag_c
    adc r14, $0                         ; r[6] += flag_c

    ; start fourth chain
    mov r8, [rsi + 24]
    mov r9, 0

    mov r11, 0
    mov rdi, 0

    add r10, r8                         ; r[3] += t[0] + flag_c

    ; reduce by r[3] * k
    mov rdx, r10                        ; move np into rdx
    mulx r8, rdx, [ np ]                ; (rdx, _) <- k = r[1] * np
    mulx r9, r8, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx r11, rdi, [q + 8]              ; (t[2], t[3]) <- (modulus.data[1] * k)
    add r10, r8                         ; r[3] += t[0] (rsi now free)
    adc r12,r9                          ; r[4] += t[2] + flag_c
    adc r13, r11                        ; r[5] += t[3] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    adc r15, $0                         ; r[7] += flag_c
    add r12, rdi                        ; r[4] += t[1] + flag_c
    mulx r9, r8, [q + 16]               ; (t[4], t[5]) <- (modulus.data[2] * k)
    mulx rdx, rdi, [q + 24]             ; (t[6], t[7]) <- (modulus.data[3] * k)
    adc r13, r8                         ; r[5] += t[4] + flag_c
    adc r14, r9                         ; r[6] += t[6] + flag_c
    adc r15, rdx                        ; r[7] += t[7] + flag_c
    add r14, rdi                        ; r[6] += t[5] + flag_c
    adc r15, $0,                        ; r[7] += flag_c

    pop rdi

    mov [rdi + 0], r12
    mov [rdi + 8], r13
    mov [rdi + 16],r14
    mov [rdi + 24], r15

    pop r12
    pop r13
    pop r14
    pop r15

    ret

section .data
z       dq      0, 0, 0, 0
o       dq      1, 0, 0, 0

q       dq      0x43e1f593f0000001,0x2833e84879b97091,0xb85045b68181585d,0x30644e72e131a029
np      dq      0xc2e1f593efffffff
R2      dq      0x1bb8e645ae216da7,0x53fe3ab1e35c59e3,0x8c49833d53bb8085,0x0216d0b17f4e44a5


