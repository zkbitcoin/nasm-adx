global _asm_compute
global _asm_add_chains_adox
global _asm_add_chains_add

section .data
    chain1 dd 1, 2, 3, 4, 5    ; First chain of numbers
    chain2 dd 6, 7, 8, 9, 10   ; Second chain of numbers
    result dd 0, 0, 0, 0, 0    ; Resultant chain


section .text

; (n1 * 8 + n2 / 4) * (n3 - 5)

; RDI - n1
; RSI - n2
; RDX - n3
_asm_compute:

  sub rdx, 5    ; calculate 2nd part

  shl rdi, 3    ; multiply by 2^3 : rdi = n1 * 8
  shr rsi, 2    ; divide by 4     : rsi = n2 / 4

  add rdi, rsi  ; rdi = n1*8 + n2/4

  mov rax, rdx  ; rax = n3 - 5
  mul rdi       ; rax = (n3 - 5) * (n1*8 + n2/4)

  ;result is already in rax
  ret

  _asm_add_chains_adox:
      ; Load pointers to the start of each chain
      lea rsi, [rel chain1]  ; Load effective address of chain1 (RIP-relative addressing)
      lea rdi, [rel chain2]  ; Load effective address of chain2 (RIP-relative addressing)

      ; Calculate the relative offset of result
      lea rax, [rel _asm_add_chains_adox]   ; Load the address of _start (RIP-relative addressing)
      lea rbx, [rel result]   ; Load the address of result (RIP-relative addressing)
      sub rbx, rax            ; Calculate the relative offset between _start and result

      ; Add the relative offset of result to rbp to obtain the absolute address
      lea rbx, [rbp + rbx]    ; Load the absolute address of result into rbx

      ; Iterate over each element in the chains
      mov ecx, 5              ; Number of elements in the chains
      _asm_add_chains_adox_loop:
          mov eax, [rsi]      ; Load element from chain1
          adox eax, [rdi]     ; Add element from chain2 with carry
          mov [rbx], eax      ; Store result in result chain
          add rsi, 4          ; Move to the next element in chain1
          add rdi, 4          ; Move to the next element in chain2
          add rbx, 4          ; Move to the next element in the result chain
          loop _asm_add_chains_adox_loop      ; Loop for all elements

      ; At this point, the result chain contains the sum of chain1 and chain2

      ; End of program
      ; Exit code here

_asm_add_chains_add:
    ; Load pointers to the start of each chain
    lea rsi, [rel chain1]  ; Load effective address of chain1 (RIP-relative addressing)
    lea rdi, [rel chain2]  ; Load effective address of chain2 (RIP-relative addressing)

    ; Calculate the relative offset of result
    lea rax, [rel _asm_add_chains_add]   ; Load the address of _start (RIP-relative addressing)
    lea rbx, [rel result]   ; Load the address of result (RIP-relative addressing)
    sub rbx, rax            ; Calculate the relative offset between _start and result

    ; Add the relative offset of result to rbp to obtain the absolute address
    lea rbx, [rbp + rbx]    ; Load the absolute address of result into rbx

    ; Iterate over each element in the chains
    mov ecx, 5              ; Number of elements in the chains
    _asm_add_chains_add_loop:
        mov eax, [rsi]      ; Load element from chain1
        add eax, [rdi]      ; Add element from chain2
        mov [rbx], eax      ; Store result in result chain
        add rsi, 4          ; Move to the next element in chain1
        add rdi, 4          ; Move to the next element in chain2
        add rbx, 4          ; Move to the next element in the result chain
        loop _asm_add_chains_add_loop      ; Loop for all elements

    ; At this point, the result chain contains the sum of chain1 and chain2

    ; End of program
    ; Exit code here
    ret
