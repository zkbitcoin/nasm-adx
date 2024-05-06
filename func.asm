global Fr_rawMMul
DEFAULT REL

section .text

; RDI - (result)
; RSI - a
; RDX - b

Fr_rawMMul:
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
    mov r15,r10
    adcx r15,r8
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
    mov r14,r10
    adcx r14,rax
    adox r14,r15

; FirstLoop
    mov rdx,[rsi + 8]
    mov r15,r10
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
    adcx r15,r10
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
    mov r14,r10
    adcx r14,rax
    adox r14,r15

; FirstLoop
    mov rdx,[rsi + 16]
    mov r15,r10
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
    adcx r15,r10
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
    mov r14,r10
    adcx r14,rax
    adox r14,r15

; FirstLoop
    mov rdx,[rsi + 24]
    mov r15,r10
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
    adcx r15,r10
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
    mov r14,r10
    adcx r14,rax
    adox r14,r15

;comparison
    cmp r14,[q + 24]
    jc Fr_rawMMul_done
    jnz Fr_rawMMul_sq
    cmp r13,[q + 16]
    jc Fr_rawMMul_done
    jnz Fr_rawMMul_sq
    cmp r12,[q + 8]
    jc Fr_rawMMul_done
    jnz Fr_rawMMul_sq
    cmp r11,[q + 0]
    jc Fr_rawMMul_done
    jnz Fr_rawMMul_sq
Fr_rawMMul_sq:
    sub r11,[q +0]
    sbb r12,[q +8]
    sbb r13,[q +16]
    sbb r14,[q +24]
Fr_rawMMul_done:
    mov [rdi + 0],r11
    mov [rdi + 8],r12
    mov [rdi + 16],r13
    mov [rdi + 24],r14
    pop r12
    pop r13
    pop r14
    pop r15
    ret

section .data

q       dq      0x43e1f593f0000001,0x2833e84879b97091,0xb85045b68181585d,0x30644e72e131a029
np      dq      0xc2e1f593efffffff
