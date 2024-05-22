#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include "asm_macros.hpp"

const int SIZE = 6;

extern "C" void Fr_rawMMul(uint64_t[SIZE], uint64_t[SIZE], uint64_t[SIZE]);
extern "C" void rawMontgomeryMul_mulM(uint64_t[SIZE], uint64_t[SIZE], uint64_t[SIZE]);

extern "C" void Fr_rawMSquare(uint64_t[SIZE], uint64_t[SIZE]);
extern "C" void rawMontgomerySquare(uint64_t[SIZE], uint64_t[SIZE]);

extern "C" void Fr_rawToMontgomery(uint64_t[SIZE], uint64_t[SIZE]);
extern "C" void rawToMontgomery(uint64_t[SIZE], uint64_t[SIZE]);

extern "C" void Fr_rawFromMontgomery(uint64_t[SIZE], uint64_t[SIZE]);
extern "C" void rawFromMontgomery(uint64_t[SIZE], uint64_t[SIZE]);


// using buildzqfield.js -q 89467411093844535899444521888242871839275222246405745257275088548364400416034343698204186575808495617 -n Fr



int main(int argc, char* argv[]) {

    uint64_t limbs_a[SIZE] = {9193073166814171451ULL,9293073166814171452ULL,9393073166814171453ULL,9493073166814171454ULL,
                            9593073166814171455ULL,9693073166814171456ULL};
    uint64_t limbs_b[SIZE] = {9193073166814171450ULL,9293073166814171451ULL,9393073166814171452ULL,9493073166814171453ULL,
                            9593073166814171454ULL,9693073166814171455ULL};
    uint64_t limbs_r[SIZE] = {};

    printf("\nFr_rawMMul \n");
    Fr_rawMMul(limbs_r, limbs_a, limbs_b);

    for (size_t i = 0; i < SIZE; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\nrawMontgomeryMul_mulM \n");
    rawMontgomeryMul_mulM(limbs_r, limbs_a, limbs_b);

    for (size_t i = 0; i < SIZE; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\nFr_rawMSquare \n");
    Fr_rawMSquare(limbs_r, limbs_a);

    for (size_t i = 0; i < SIZE; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\nrawMontgomerySquare \n");
    rawMontgomerySquare(limbs_r, limbs_a);

    for (size_t i = 0; i < SIZE; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\nFr_rawToMontgomery \n");
    Fr_rawToMontgomery(limbs_r, limbs_a);

    for (size_t i = 0; i < SIZE; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\nrawToMontgomery \n");
    rawToMontgomery(limbs_r, limbs_a);

    for (size_t i = 0; i < SIZE; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    uint64_t limbs_m[SIZE] = {};
    for (size_t i = 0; i < SIZE; ++i)
        limbs_m[i] = limbs_r[i];

    printf("\nFr_rawFromMontgomery \n");
    Fr_rawFromMontgomery(limbs_r, limbs_m);

    for (size_t i = 0; i < SIZE; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\nrawFromMontgomery \n");
    rawFromMontgomery(limbs_r, limbs_m);

    for (size_t i = 0; i < SIZE; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\n");

    return EXIT_SUCCESS;
}
