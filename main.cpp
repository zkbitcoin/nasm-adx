#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include "asm_macros.hpp"

extern "C" void tachyon_math_bn254_fr_rawMMul(uint64_t result[4], const uint64_t a[4], const uint64_t b[4]);
extern "C" void tachyon_math_bn254_fr_rawMMul_no_adx(uint64_t result[4], const uint64_t a[4], const uint64_t b[4]);

extern "C" void tachyon_math_bn254_fr_rawMSquare(uint64_t result[4], const uint64_t a[4]);
extern "C" void tachyon_math_bn254_fr_rawMSquare_no_adx(uint64_t result[4], const uint64_t a[4]);

extern "C" void tachyon_math_bn254_fr_rawToMontgomery(uint64_t result[4], const uint64_t a[4]);
extern "C" void tachyon_math_bn254_fr_rawToMontgomery_no_adx(uint64_t result[4], const uint64_t a[4]);

extern "C" void tachyon_math_bn254_fr_rawFromMontgomery(uint64_t result[4], const uint64_t a[4]);
extern "C" void tachyon_math_bn254_fr_rawFromMontgomery_no_adx(uint64_t result[4], const uint64_t[4], const uint64_t a[4]);

void Fr_fail() {
}

int main(int argc, char* argv[]) {

    uint64_t limbs_r[4] = {};
    uint64_t limbs_a[4] = {9293073166814171452ULL,4158907695144192454,2644031866505052884,3024693275553353487};
    uint64_t limbs_b[4] = {2812702673390851119,5479905877917956870,1104182671213310543,818574998703379345};



    limbs_r[0] = 0;
    limbs_r[1] = 0;
    limbs_r[2] = 0;
    limbs_r[3] = 0;

    printf("\ntachyon_math_bn254_fr_rawMMul \n");
    tachyon_math_bn254_fr_rawMMul(limbs_r,  limbs_a, limbs_b);

    printf("\n");

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

    printf("\n\ntachyon_math_bn254_fr_rawMMul_no_adx \n");
    tachyon_math_bn254_fr_rawMMul_no_adx(limbs_r,  limbs_a, limbs_b);

    printf("\n");

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

    printf("\n\n__asm__(MUL \n");


    constexpr uint64_t r_inv = 0x87d20782e4866389;
    constexpr uint64_t modulus_0 = 0x3c208c16d87cfd47;
    constexpr uint64_t modulus_1 = 0x97816a916871ca8d;
    constexpr uint64_t modulus_2 = 0xb85045b68181585d;
    constexpr uint64_t modulus_3 = 0x30644e72e131a029;
    constexpr uint64_t zero_ref = 0;

    /**
     * Registers: rax:rdx = multiplication accumulator
     *            %r12, %r13, %r14, %r15, %rax: work registers for `r`
     *            %r8, %r9, %rdi, %rsi: scratch registers for multiplication results
     *            %r10: zero register
     *            %0: pointer to `a`
     *            %1: pointer to `b`
     *            %2: pointer to `r`
     **/
    __asm__(MUL("0(%0)", "8(%0)", "16(%0)", "24(%0)", "%1")
                STORE_FIELD_ELEMENT("%2", "%%r12", "%%r13", "%%r14", "%%r15")
            :
            : "%r"(&limbs_a),
              "%r"(&limbs_b),
              "r"(&limbs_r),
              [modulus_0] "m"(modulus_0),
              [modulus_1] "m"(modulus_1),
              [modulus_2] "m"(modulus_2),
              [modulus_3] "m"(modulus_3),
              [r_inv] "m"(r_inv),
              [zero_reference] "m"(zero_ref)
            : "%rdx", "%rdi", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "cc", "memory");

    printf("\n");

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

    printf("\n\n__asm__(MUL) (WITH ADX) \n");

    __asm__(MUL_with_adx("0(%0)", "8(%0)", "16(%0)", "24(%0)", "%1")
                STORE_FIELD_ELEMENT("%2", "%%r12", "%%r13", "%%r14", "%%r15")
            :
            : "%r"(&limbs_a),
              "%r"(&limbs_b),
              "r"(&limbs_r),
              [modulus_0] "m"(modulus_0),
              [modulus_1] "m"(modulus_1),
              [modulus_2] "m"(modulus_2),
              [modulus_3] "m"(modulus_3),
              [r_inv] "m"(r_inv),
              [zero_reference] "m"(zero_ref)
            : "%rdx", "%rdi", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "cc", "memory");

    printf("\n");

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

    //
    
    printf("\n\ntachyon_math_bn254_fr_rawMSquare_no_adx \n");
    tachyon_math_bn254_fr_rawMSquare_no_adx(limbs_r,  limbs_a);

    printf("\n");

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

    printf("\n");

    printf("\n\n__asm__(SQR) (WITHOUT ADX) \n");

    __asm__(SQR("%0")
            // "movq %[r_ptr], %%rsi                   \n\t"
            STORE_FIELD_ELEMENT("%1", "%%r12", "%%r13", "%%r14", "%%r15")
            :
            : "r"(&limbs_a),
              "r"(&limbs_r),
              [zero_reference] "m"(zero_ref),
              [modulus_0] "m"(modulus_0),
              [modulus_1] "m"(modulus_1),
              [modulus_2] "m"(modulus_2),
              [modulus_3] "m"(modulus_3),
              [r_inv] "m"(r_inv)
            : "%rcx", "%rdx", "%rdi", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "cc", "memory");

    printf("\n");

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

    return EXIT_SUCCESS;
}
