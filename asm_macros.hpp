#pragma once
// clang-format off

/**
 * Store 4-limb field element located in
 * registers (lolo, lohi, hilo, hihi), into
 * memory pointed to by r
 **/
#define STORE_FIELD_ELEMENT(r, lolo, lohi, hilo, hihi)                                                                   \
"movq " lolo ", 0(" r ")                \n\t"                                                                    \
"movq " lohi ", 8(" r ")                \n\t"                                                                    \
"movq " hilo ", 16(" r ")               \n\t"                                                                    \
"movq " hihi ", 24(" r ")               \n\t"

/**
 * Compute Montgomery multiplication of a, b.
 * Result is stored, in (%%r12, %%r13, %%r14, %%r15), in preparation for being stored in "r"
 **/
#define MUL(a1, a2, a3, a4, b)     \
        "movq " a1 ", %%rdx                     \n\t" /* load a[0] into %rdx                                      */  \
        "xorq %%r8, %%r8                          \n\t" /* clear r10 register, we use this when we need 0           */  \
        /* front-load mul ops, can parallelize 4 of these but latency is 4 cycles */                                    \
        "mulxq 8(" b "), %%r8, %%r9               \n\t" /* (t[0], t[1]) <- a[0] * b[1]                              */  \
        "mulxq 24(" b "), %%rdi, %%r12            \n\t" /* (t[2], r[4]) <- a[0] * b[3] (overwrite a[0])             */  \
        "mulxq 0(" b "), %%r13, %%r14             \n\t" /* (r[0], r[1]) <- a[0] * b[0]                              */  \
        "mulxq 16(" b "), %%r15, %%r10            \n\t" /* (r[2] , r[3]) <- a[0] * b[2]                             */  \
        /* zero flags */                                                                                                \
                                                                                                                        \
        /* start computing modular reduction */                                                                         \
        "movq %%r13, %%rdx                        \n\t" /* move r[0] into %rdx                                      */  \
        "mulxq %[r_inv], %%rdx, %%r11             \n\t" /* (%rdx, _) <- k = r[1] * r_inv                            */  \
                                                                                                                        \
        /* start first addition chain */                                                                                \
        "addq %%r8, %%r14                         \n\t" /* r[1] += t[0]                                             */  \
        "adcq %%r9, %%r15                         \n\t" /* r[2] += t[1] + flag_c                                    */  \
        "adcq %%rdi, %%r10                        \n\t" /* r[3] += t[2] + flag_c                                    */  \
        "adcq $0, %%r12                           \n\t" /* r[4] += flag_c                                           */  \
                                                                                                                        \
        /* reduce by r[0] * k */                                                                                        \
        "mulxq %[modulus_0], %%r8, %%r9           \n\t" /* (t[0], t[1]) <- (modulus.data[0] * k)                    */  \
        "mulxq %[modulus_1], %%rdi, %%r11         \n\t" /* (t[0], t[1]) <- (modulus.data[1] * k)                    */  \
        "addq %%r8, %%r13                         \n\t" /* r[0] += t[0] (%r13 now free)                             */  \
        "adcq %%rdi, %%r14                        \n\t" /* r[1] += t[0]                                             */  \
        "adcq %%r11, %%r15                        \n\t" /* r[2] += t[1] + flag_c                                    */  \
        "adcq $0, %%r10                           \n\t" /* r[3] += flag_c                                           */  \
        "adcq $0, %%r12                           \n\t" /* r[4] += flag_c                                           */  \
        "addq %%r9, %%r14                         \n\t" /* r[1] += t[1] + flag_c                                    */  \
        "mulxq %[modulus_2], %%r8, %%r9           \n\t" /* (t[0], t[1]) <- (modulus.data[2] * k)                    */  \
        "mulxq %[modulus_3], %%rdi, %%r11         \n\t" /* (t[2], t[3]) <- (modulus.data[3] * k)                    */  \
        "adcq %%r8, %%r15                         \n\t" /* r[2] += t[0] + flag_c                                    */  \
        "adcq %%rdi, %%r10                        \n\t" /* r[3] += t[2] + flag_c                                    */  \
        "adcq %%r11, %%r12                        \n\t" /* r[4] += t[3] + flag_c                                    */  \
        "addq %%r9, %%r10                         \n\t" /* r[3] += t[1] + flag_c                                    */  \
        "adcq $0, %%r12                           \n\t" /* r[4] += flag_i                                           */  \
                                                                                                                        \
        /* modulus = 254 bits, so max(t[3])  = 62 bits                                                              */  \
        /* b also 254 bits, so (a[0] * b[3]) = 62 bits                                                              */  \
        /* i.e. carry flag here is always 0 if b is in mont form, no need to update r[5]                            */  \
        /* (which is very convenient because we're out of registers!)                                               */  \
        /* N.B. the value of r[4] now has a max of 63 bits and can accept another 62 bit value before overflowing   */  \
                                                                                                                        \
        /* a[1] * b */                                                                                                  \
        "movq " a2 ", %%rdx                     \n\t" /* load a[1] into %rdx                                      */  \
        "mulxq 0(" b "), %%r8, %%r9               \n\t" /* (t[0], t[1]) <- (a[1] * b[0])                            */  \
        "mulxq 8(" b "), %%rdi, %%r11             \n\t" /* (t[4], t[5]) <- (a[1] * b[1])                            */  \
        "addq %%r8, %%r14                         \n\t" /* r[1] += t[0] + flag_c                                    */  \
        "adcq %%rdi, %%r15                        \n\t" /* r[2] += t[0] + flag_c                                    */  \
        "adcq %%r11, %%r10                        \n\t" /* r[3] += t[1] + flag_c                                    */  \
        "adcq $0, %%r12                           \n\t" /* r[4] += flag_c                                           */  \
        "addq %%r9, %%r15                         \n\t" /* r[2] += t[1] + flag_c                                    */  \
                                                                                                                        \
        "mulxq 16(" b "), %%r8, %%r9              \n\t" /* (t[2], t[3]) <- (a[1] * b[2])                            */  \
        "mulxq 24(" b "), %%rdi, %%r13            \n\t" /* (t[6], r[5]) <- (a[1] * b[3])                            */  \
        "adcq %%r8, %%r10                         \n\t" /* r[3] += t[0] + flag_c                                    */  \
        "adcq %%rdi, %%r12                        \n\t" /* r[4] += t[2] + flag_c                                    */  \
        "adcq $0, %%r13                           \n\t" /* r[5] += flag_c                                           */  \
        "addq %%r9, %%r12                         \n\t" /* r[4] += t[1] + flag_c                                    */  \
        "adcq $0, %%r13                           \n\t" /* r[5] += flag_c                                           */  \
                                                                                                                        \
        /* reduce by r[1] * k */                                                                                        \
        "movq %%r14, %%rdx                        \n\t"  /* move r[1] into %rdx                                     */  \
        "mulxq %[r_inv], %%rdx, %%r8              \n\t"  /* (%rdx, _) <- k = r[1] * r_inv                           */  \
        "mulxq %[modulus_0], %%r8, %%r9           \n\t"  /* (t[0], t[1]) <- (modulus.data[0] * k)                   */  \
        "mulxq %[modulus_1], %%rdi, %%r11         \n\t"  /* (t[0], t[1]) <- (modulus.data[1] * k)                   */  \
        "addq %%r8, %%r14                         \n\t"  /* r[1] += t[0] (%r14 now free)                            */  \
        "adcq %%rdi, %%r15                        \n\t"  /* r[2] += t[0] + flag_c                                   */  \
        "adcq %%r11, %%r10                        \n\t"  /* r[3] += t[1] + flag_c                                   */  \
        "adcq $0, %%r12                           \n\t"  /* r[4] += flag_c                                          */  \
        "adcq $0, %%r13                           \n\t"  /* r[5] += flag_c                                          */  \
        "addq %%r9, %%r15                         \n\t"  /* r[2] += t[1] + flag_c                                   */  \
        "mulxq %[modulus_2], %%r8, %%r9           \n\t"  /* (t[0], t[1]) <- (modulus.data[2] * k)                   */  \
        "mulxq %[modulus_3], %%rdi, %%r11         \n\t"  /* (t[2], t[3]) <- (modulus.data[3] * k)                   */  \
        "adcq %%r8, %%r10                         \n\t"  /* r[3] += t[0] + flag_c                                   */  \
        "adcq %%r9, %%r12                         \n\t"  /* r[4] += t[2] + flag_c                                   */  \
        "adcq %%r11, %%r13                        \n\t"  /* r[5] += t[3] + flag_c                                   */  \
        "addq %%rdi, %%r12                        \n\t"  /* r[4] += t[1] + flag_c                                   */  \
        "adcq $0, %%r13                           \n\t"  /* r[5] += flag_c                                          */  \
                                                                                                                        \
        /* a[2] * b */                                                                                                  \
        "movq " a3 ", %%rdx                    \n\t" /* load a[2] into %rdx                                      */  \
        "mulxq 0(" b "), %%r8, %%r9               \n\t" /* (t[0], t[1]) <- (a[2] * b[0])                            */  \
        "mulxq 8(" b "), %%rdi, %%r11             \n\t" /* (t[0], t[1]) <- (a[2] * b[1])                            */  \
        "addq %%r8, %%r15                         \n\t" /* r[2] += t[0] + flag_c                                    */  \
        "adcq %%r9, %%r10                         \n\t" /* r[3] += t[1] + flag_c                                    */  \
        "adcq %%r11, %%r12                        \n\t" /* r[4] += t[1] + flag_c                                    */  \
        "adcq $0, %%r13                           \n\t" /* r[5] += flag_c                                           */  \
        "addq %%rdi, %%r10                        \n\t" /* r[3] += t[0] + flag_c                                    */  \
        "mulxq 16(" b "), %%r8, %%r9              \n\t" /* (t[0], t[1]) <- (a[2] * b[2])                            */  \
        "mulxq 24(" b "), %%rdi, %%r14            \n\t" /* (t[2], r[6]) <- (a[2] * b[3])                            */  \
        "adcq %%r8, %%r12                         \n\t" /* r[4] += t[0] + flag_c                                    */  \
        "adcq %%r9, %%r13                         \n\t" /* r[5] += t[2] + flag_c                                    */  \
        "adcq $0, %%r14                           \n\t" /* r[6] += flag_c                                           */  \
        "addq %%rdi, %%r13                        \n\t" /* r[5] += t[1] + flag_c                                    */  \
        "adcq $0, %%r14                           \n\t" /* r[6] += flag_c                                           */  \
                                                                                                                        \
        /* reduce by r[2] * k */                                                                                        \
        "movq %%r15, %%rdx                        \n\t"  /* move r[2] into %rdx                                     */  \
        "mulxq %[r_inv], %%rdx, %%r8              \n\t"  /* (%rdx, _) <- k = r[1] * r_inv                           */  \
        "mulxq %[modulus_0], %%r8, %%r9           \n\t"  /* (t[0], t[1]) <- (modulus.data[0] * k)                   */  \
        "mulxq %[modulus_1], %%rdi, %%r11         \n\t"  /* (t[0], t[1]) <- (modulus.data[1] * k)                   */  \
        "addq %%r8, %%r15                         \n\t"  /* r[2] += t[0] (%r15 now free)                            */  \
        "adcq %%r9, %%r10                         \n\t"  /* r[3] += t[0] + flag_c                                   */  \
        "adcq %%r11, %%r12                        \n\t"  /* r[4] += t[1] + flag_c                                   */  \
        "adcq $0, %%r13                           \n\t"  /* r[5] += flag_c                                          */  \
        "adcq $0, %%r14                           \n\t"  /* r[6] += flag_c                                          */  \
        "addq %%rdi, %%r10                        \n\t"  /* r[3] += t[1] + flag_c                                   */  \
        "mulxq %[modulus_2], %%r8, %%r9           \n\t"  /* (t[0], t[1]) <- (modulus.data[2] * k)                   */  \
        "mulxq %[modulus_3], %%rdi, %%r11         \n\t"  /* (t[2], t[3]) <- (modulus.data[3] * k)                   */  \
        "adcq %%r8, %%r12                         \n\t"  /* r[4] += t[0] + flag_c                                   */  \
        "adcq %%r9, %%r13                         \n\t"  /* r[5] += t[2] + flag_c                                   */  \
        "adcq %%r11, %%r14                        \n\t"  /* r[6] += t[3] + flag_c                                   */  \
        "addq %%rdi, %%r13                        \n\t"  /* r[5] += t[1] + flag_c                                   */  \
        "adcq $0, %%r14                           \n\t"  /* r[6] += flag_c                                          */  \
                                                                                                                        \
        /* a[3] * b */                                                                                                  \
        "movq " a4 ", %%rdx                    \n\t"  /* load a[3] into %rdx                                     */  \
        "mulxq 0(" b "), %%r8, %%r9               \n\t"  /* (t[0], t[1]) <- (a[3] * b[0])                           */  \
        "mulxq 8(" b "), %%rdi, %%r11             \n\t"  /* (t[4], t[5]) <- (a[3] * b[1])                           */  \
        "addq %%r8, %%r10                         \n\t"  /* r[3] += t[0] + flag_c                                   */  \
        "adcq %%r9, %%r12                         \n\t"  /* r[4] += t[2] + flag_c                                   */  \
        "adcq %%r11, %%r13                        \n\t"  /* r[5] += t[3] + flag_c                                   */  \
        "adcq $0, %%r14                           \n\t"  /* r[6] += flag_c                                          */  \
        "addq %%rdi, %%r12                        \n\t"  /* r[4] += t[1] + flag_c                                   */  \
                                                                                                                        \
        "mulxq 16(" b "), %%r8, %%r9              \n\t"  /* (t[2], t[3]) <- (a[3] * b[2])                           */  \
        "mulxq 24(" b "), %%rdi, %%r15            \n\t"  /* (t[6], r[7]) <- (a[3] * b[3])                           */  \
        "adcq %%r8, %%r13                         \n\t"  /* r[5] += t[4] + flag_c                                   */  \
        "adcq %%r9, %%r14                         \n\t"  /* r[6] += t[6] + flag_c                                   */  \
        "adcq $0, %%r15                           \n\t"  /* r[7] += + flag_c                                        */  \
        "addq %%rdi, %%r14                        \n\t"  /* r[6] += t[5] + flag_c                                   */  \
        "adcq $0, %%r15                           \n\t"  /* r[7] += flag_c                                          */  \
                                                                                                                        \
        /* reduce by r[3] * k */                                                                                        \
        "movq %%r10, %%rdx                        \n\t" /* move r_inv into %rdx                                     */  \
        "mulxq %[r_inv], %%rdx, %%r8              \n\t" /* (%rdx, _) <- k = r[1] * r_inv                            */  \
        "mulxq %[modulus_0], %%r8, %%r9           \n\t" /* (t[0], t[1]) <- (modulus.data[0] * k)                    */  \
        "mulxq %[modulus_1], %%rdi, %%r11         \n\t" /* (t[2], t[3]) <- (modulus.data[1] * k)                    */  \
        "addq %%r8, %%r10                         \n\t" /* r[3] += t[0] (%rsi now free)                             */  \
        "adcq %%r9, %%r12                         \n\t" /* r[4] += t[2] + flag_c                                    */  \
        "adcq %%r11, %%r13                        \n\t" /* r[5] += t[3] + flag_c                                    */  \
        "adcq $0, %%r14                           \n\t" /* r[6] += flag_c                                           */  \
        "adcq $0, %%r15                           \n\t" /* r[7] += flag_c                                           */  \
        "addq %%rdi, %%r12                        \n\t" /* r[4] += t[1] + flag_c                                    */  \
                                                                                                                        \
        "mulxq %[modulus_2], %%r8, %%r9           \n\t" /* (t[4], t[5]) <- (modulus.data[2] * k)                    */  \
        "mulxq %[modulus_3], %%rdi, %%rdx         \n\t" /* (t[6], t[7]) <- (modulus.data[3] * k)                    */  \
        "adcq %%r8, %%r13                         \n\t" /* r[5] += t[4] + flag_c                                    */  \
        "adcq %%r9, %%r14                         \n\t" /* r[6] += t[6] + flag_c                                    */  \
        "adcq %%rdx, %%r15                        \n\t" /* r[7] += t[7] + flag_c                                    */  \
        "addq %%rdi, %%r14                        \n\t" /* r[6] += t[5] + flag_c                                    */  \
        "adcq $0, %%r15                           \n\t" /* r[7] += flag_c                                           */
