#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include "asm_macros.hpp"

extern "C" void Fr_rawMMul(uint64_t[8], uint64_t[8], uint64_t[8]);
extern "C" void rawMontgomeryMul_mulM(uint64_t[8], uint64_t[8], uint64_t[8]);



void Fr_fail() {
}

int main(int argc, char* argv[]) {

    uint64_t limbs_a[8] = {9193073166814171451ULL,9293073166814171452ULL,9393073166814171453ULL,9493073166814171454ULL,
                            9593073166814171455ULL,9693073166814171456ULL,9793073166814171457ULL,9893073166814171458ULL,};
    uint64_t limbs_b[8] = {9193073166814171450ULL,9293073166814171451ULL,9393073166814171452ULL,9493073166814171453ULL,
                            9593073166814171454ULL,9693073166814171455ULL,9793073166814171456ULL,9893073166814171457ULL,};
    uint64_t limbs_r[8] = {};

    printf("\nFr_rawMMul \n");
    Fr_rawMMul(limbs_r, limbs_a, limbs_b);

    for (size_t i = 0; i < 8; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\nrawMontgomeryMul_mulM \n");
    rawMontgomeryMul_mulM(limbs_r, limbs_a, limbs_b);

    for (size_t i = 0; i < 8; ++i)
        printf("%" PRIu64 "\t", limbs_r[i]);

    printf("\n");



    return EXIT_SUCCESS;
}
