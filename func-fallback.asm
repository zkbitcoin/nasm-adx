global Fr_rawMMul_fallback
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

    mov rdx, [rcx + 0]                  ; load a[0] into rdx
    xor r8, r8                          ; clear r10 register, we use this when we need 0
    ; front-load mul ops, can parallelize 4 of these but latency is 4 cycles
    mulx r8, r9, [rcx + 8]              ; (t[0], t[1]) <- a[0] * b[1]
    mulx rdi, r12, [rcx + 24]           ; (t[2], r[4]) <- a[0] * b[3] (overwrite a[0])
    mulx r13, r14, [rcx + 0]            ; (r[0], r[1]) <- a[0] * b[0]
    mulx r15, r10, [rcx + 16]           ; (r[2] , r[3]) <- a[0] * b[2]
    ; zero flags

    ; start computing modular reduction                                                                         
    mov rdx, r13                        ; move r[0] into rdx
    mulx rdx, r11, [ np ]               ; (rdx, _) <- k = r[1] * np
                                                                                                                    
    ; start first addition chain                                                                                
    add r14, r8                         ; r[1] += t[0]
    adc r15 , r9                        ; r[2] += t[1] + flag_c
    adc r10, rdi                        ; r[3] += t[2] + flag_c
    adc r12, $0                         ; r[4] += flag_c

    ; reduce by r[0] * k                                                                                        
    mulx r8, r9, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx rdi, r11, [q + 8]              ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r13, r8                         ; r[0] += t[0] (r13 now free)
    adc r14, rdi                        ; r[1] += t[0]
    adc r15, r11                        ; r[2] += t[1] + flag_c
    adc r10, $0                         ; r[3] += flag_c
    adc r12, $0                         ; r[4] += flag_c
    add r14, r9                         ; r[1] += t[1] + flag_c
    mulx r8, r9, [q + 16]               ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx rdi, r11, [q + 24]             ; (t[2], t[3]) <- (modulus.data[3] * k)
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
    mov rdx, [rcx + 0],                 ; load a[1] into rdx
    mulx r8, r9, [rcx + 0],             ; (t[0], t[1]) <- (a[1] * b[0])
    mulx rdi, r11, [rcx + 8]            ; (t[4], t[5]) <- (a[1] * b[1])
    add r14, r8                         ; r[1] += t[0] + flag_c
    adc r15, rdi                        ; r[2] += t[0] + flag_c
    adc r10, r11                        ; r[3] += t[1] + flag_c
    adc r12, $0                         ; r[4] += flag_c
    add r15, r9                         ; r[2] += t[1] + flag_c
                                                                                                                    
    mulx r8, r9, [rcx + 16]             ; (t[2], t[3]) <- (a[1] * b[2])
    mulx rdi, r13, [rcx + 24]           ; (t[6], r[5]) <- (a[1] * b[3])
    adc r10, r8                         ; r[3] += t[0] + flag_c
    adc r12, rdi                        ; r[4] += t[2] + flag_c
    adc r13, $0                         ; r[5] += flag_c
    add r12, r9                         ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
                                                                                                                    
    ; reduce by r[1] * k
    mov rdx, r14                        ; move r[1] into rdx
    mulx rdx, r8, [ np ]                ; (rd, _) <- k = r[1] * r_inv
    mulx r8, r9, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx rdi, r11, [q + 8]              ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r14, r8                         ; r[1] += t[0] (r14 now free)
    adc r15, rdi                        ; r[2] += t[0] + flag_c
    adc r10, r11                        ; r[3] += t[1] + flag_c
    adc r12, $0                         ; r[4] += flag_c
    adc r13, $0                         ; r[5] += flag_c
    add r15, r9                         ; r[2] += t[1] + flag_c
    mulx r8, r9, [q + 16]               ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx rdi, r11, [q + 24]             ; (t[2], t[3]) <- (modulus.data[3] * k)
    adc r10, r8                         ; r[3] += t[0] + flag_c
    adc r12, r9                         ; r[4] += t[2] + flag_c
    adc r13, r11                        ; r[5] += t[3] + flag_c
    add r12, rdi                        ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
                                                                                                                    
    ; a[2] * b                                                                                                  
    mov rdx, [rcx + 16],                ; load a[2] into rdx
    mulx r8, r9, [rcx + 0],             ; (t[0], t[1]) <- (a[2] * b[0])
    mulx rdi, r11, [rcx + 8]            ; (t[0], t[1]) <- (a[2] * b[1])
    add r15, r8                         ; r[2] += t[0] + flag_c
    adc r10, r9                         ; r[3] += t[1] + flag_c
    adc r12, r11                        ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
    add r10, rdi                        ; r[3] += t[0] + flag_c
    mulx r8, r9, [rsi + 16]             ; (t[0], t[1]) <- (a[2] * b[2])
    mulx rdi, r14, [rsi + 24]           ; (t[2], r[6]) <- (a[2] * b[3])
    adc r12, r8                         ; r[4] += t[0] + flag_c
    adc r13, r9                         ; r[5] += t[2] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r13, rdi                        ; r[5] += t[1] + flag_c
    adc r14, $0                         ; r[6] += flag_c
                                                                                                                    
    ; reduce by r[2] * k                                                                                        
    mov rdx, r15                        ; move r[2] into rdx
    mulx rdx, r8, [ np ],               ; (rdx, _) <- k = r[1] * np
    mulx r8, r9, [rsi + 0]              ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx rdi, r11, [rsi + 8]            ; (t[0], t[1]) <- (modulus.data[1] * k)
    add r15, r8                         ; r[2] += t[0] (%r15 now free)
    adc r10, r9                         ; r[3] += t[0] + flag_c
    adc r12, r11                        ; r[4] += t[1] + flag_c
    adc r13, $0                         ; r[5] += flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r10, rdi                        ; r[3] += t[1] + flag_c
    mulx r8, r9, [rsi + 16]             ; (t[0], t[1]) <- (modulus.data[2] * k)
    mulx rdi, r11, [rsi + 24]           ; (t[2], t[3]) <- (modulus.data[3] * k)
    adc r12, r8                         ; r[4] += t[0] + flag_c
    adc r13, r9                         ; r[5] += t[2] + flag_c
    adc r14, r11                        ; r[6] += t[3] + flag_c
    add r13, rdi                        ; r[5] += t[1] + flag_c
    adc r14, $0                         ; r[6] += flag_c
                                                                                                                    
    ; a[3] * b                                                                                                  
    mov rdx, [rcx + 24]                 ; load a[3] into rdx
    mulx r8, r9, [rcx + 0]              ; (t[0], t[1]) <- (a[3] * b[0])
    mulx rdi, r11, [rcx + 8]            ; (t[4], t[5]) <- (a[3] * b[1])
    add r10, r8                         ; r[3] += t[0] + flag_c
    adc r12, r9                         ; r[4] += t[2] + flag_c
    adc r13, r11                        ; r[5] += t[3] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    add r12, rdi                        ; r[4] += t[1] + flag_c
                                                                                                                    
    mulx r8, r9, [rcx + 16]             ; (t[2], t[3]) <- (a[3] * b[2])
    mulx rdi, r15, [rcx + 24]           ; (t[6], r[7]) <- (a[3] * b[3])
    adc r13, r8                         ; r[5] += t[4] + flag_c
    adc r14, r9                         ; r[6] += t[6] + flag_c
    adc r15, $0                         ; r[7] += + flag_c
    add r14, rdi                        ; r[6] += t[5] + flag_c
    adc r15, $0                         ; r[7] += flag_c
                                                                                                                    
    ; reduce by r[3] * k                                                                                        
    mov rdx, r10                        ; move np into rdx
    mulx rdx, r8, [ np ]                ; (rdx, _) <- k = r[1] * r_inv
    mulx r8, r9, [q + 0]                ; (t[0], t[1]) <- (modulus.data[0] * k)
    mulx  rdi, r11, [q + 8]             ; (t[2], t[3]) <- (modulus.data[1] * k)
    add r10, r8                         ; r[3] += t[0] (rsi now free)
    adc r12,r9                          ; r[4] += t[2] + flag_c
    adc r13, r11                        ; r[5] += t[3] + flag_c
    adc r14, $0                         ; r[6] += flag_c
    adc r15, $0                         ; r[7] += flag_c
    add r12, rdi                        ; r[4] += t[1] + flag_c
                                                                                                                    
    mulx r8, r9, [q + 16]               ; (t[4], t[5]) <- (modulus.data[2] * k)
    mulx rdi, rdx, [q + 24]             ; (t[6], t[7]) <- (modulus.data[3] * k)
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
q       dq      0x43e1f593f0000001,0x2833e84879b97091,0xb85045b68181585d,0x30644e72e131a029
np      dq      0xc2e1f593efffffff
