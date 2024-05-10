#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

extern "C" void Fr_rawMMul(uint64_t result[4], const uint64_t a[4], const uint64_t b[4]);
extern "C" void Fr_rawMMul_fallback(uint64_t result[4], const uint64_t a[4], const uint64_t b[4]);

extern "C" void Fr_rawToMontgomery(uint64_t result[4], const uint64_t a[4]);
extern "C" void Fr_rawToMontgomery_fallback(uint64_t result[4], const uint64_t a[4]);

extern "C" void Fr_rawFromMontgomery(uint64_t result[4], const uint64_t a[4]);
extern "C" void Fr_rawFromMontgomery_fallback(uint64_t result[4], const uint64_t[4], const uint64_t a[4]);

void Fr_fail() {
}

int main(int argc, char* argv[]) {

    printf("Fr_rawToMontgomery \n");

    uint64_t limbs_r[4] = {0,0,0,0};
    uint64_t limbs_a[4] = {9,9,9,9};
    uint64_t limbs_b[4] = {9,9,9,9};

    Fr_rawToMontgomery(limbs_r,  limbs_a);

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

    printf("\n");
    printf("Fr_rawToMontgomery \n");


    printf("\n");
    printf("Fr_rawFromMontgomery \n");

    limbs_r[0] = 0;
    limbs_r[1] = 0;
    limbs_r[2] = 0;
    limbs_r[3] = 0;

    limbs_a[0] = 228323425126052842U;
    limbs_a[1] = 4714146175165545503U;
    limbs_a[2] = 337024525870474344U;
    limbs_a[3] = 2330494673259442496U;

    Fr_rawFromMontgomery(limbs_r,  limbs_a);

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);


    printf("\n");
    printf("Fr_rawFromMontgomery_fallback \n");

    limbs_r[0] = 0;
    limbs_r[1] = 0;
    limbs_r[2] = 0;
    limbs_r[3] = 0;

    limbs_a[0] = 228323425126052842U;
    limbs_a[1] = 4714146175165545503U;
    limbs_a[2] = 337024525870474344U;
    limbs_a[3] = 2330494673259442496U;

    limbs_b[0] = 1;
    limbs_b[1] = 0;
    limbs_b[2] = 0;
    limbs_b[3] = 0;

    Fr_rawFromMontgomery_fallback(limbs_r,  limbs_a, limbs_b);

    for (size_t i = 0; i < 4; ++i)
        printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);




//  printf("ffiasm \n");
  
//  uint64_t limbs_r[4] = {0,0,0,0};
//  uint64_t limbs_a[4] = {1,2,3,4};
//  uint64_t limbs_b[4] = {5,6,7,8};

//  Fr_rawMMul(limbs_r,  limbs_a,  limbs_b);

//  for (size_t i = 0; i < 4; ++i)
//    printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

//  printf("\n asm_macros \n");

//  limbs_r[0] = 0;
//  limbs_r[1] = 0;
//  limbs_r[2] = 0;
//  limbs_r[3] = 0;
//
//  limbs_a[0] = 1;
//  limbs_a[1] = 2;
//  limbs_a[2] = 3;
//  limbs_a[3] = 4;

//  limbs_b[0] = 5;
//  limbs_b[1] = 6;
//  limbs_b[2] = 7;
//  limbs_b[3] = 8;

  /* asm_macros */
  
//  constexpr uint64_t r_inv = 0xc2e1f593efffffff;
//  constexpr uint64_t modulus_0 = 0x43e1f593f0000001;
//  constexpr uint64_t modulus_1 = 0x2833e84879b97091;
//  constexpr uint64_t modulus_2 = 0xb85045b68181585d;
//  constexpr uint64_t modulus_3 = 0x30644e72e131a029;
//  constexpr uint64_t zero_ref = 0;

  /**
   * Registers: rax:rdx = multiplication accumulator
   *            %r12, %r13, %r14, %r15, %rax: work registers for `r`
   *            %r8, %r9, %rdi, %rsi: scratch registers for multiplication results
   *            %r10: zero register
   *            %0: pointer to `a`
   *            %1: pointer to `b`
   *            %2: pointer to `r`
   **/
  //__asm__(MUL("0(%0)", "8(%0)", "16(%0)", "24(%0)", "%1")
  //            STORE_FIELD_ELEMENT("%2", "%%r12", "%%r13", "%%r14", "%%r15")
  //        :
  //        : "%r"(&limbs_a),
  //          "%r"(&limbs_b),
  //          "r"(&limbs_r),
  //          [modulus_0] "m"(modulus_0),
  //          [modulus_1] "m"(modulus_1),
  //          [modulus_2] "m"(modulus_2),
  //         [modulus_3] "m"(modulus_3),
  //         [r_inv] "m"(r_inv),
  //          [zero_reference] "m"(zero_ref)
  //        : "%rdx", "%rdi", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "cc", "memory");

  //for (size_t i = 0; i < 4; ++i)
  //  printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);
//
 // printf("\n Fr_rawMMul_fallback \n");

 // limbs_r[0] = 0;
 // limbs_r[1] = 0;
 // limbs_r[2] = 0;
 // limbs_r[3] = 0;

 // limbs_a[0] = 1;
 // limbs_a[1] = 2;
//  limbs_a[2] = 3;
//  limbs_a[3] = 4;

//  limbs_b[0] = 5;
//  limbs_b[1] = 6;
//  limbs_b[2] = 7;
//  limbs_b[3] = 8;
  
//  Fr_rawMMul_fallback(limbs_r,  limbs_a,  limbs_b);

//  for (size_t i = 0; i < 4; ++i)
//    printf("limbs_r[%zu] is %" PRIu64 "\t", i, limbs_r[i]);

  return EXIT_SUCCESS;
}
