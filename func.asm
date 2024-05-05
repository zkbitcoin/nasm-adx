global _asm_compute

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
