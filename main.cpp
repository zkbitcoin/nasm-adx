#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

extern "C" void Fr_rawMMul(uint64_t result[4], const uint64_t a[4], const uint64_t b[4]);
extern "C" void Fr_rawMMul_fallback(uint64_t result[4], const uint64_t a[4], const uint64_t b[4]);


int main(int argc, char* argv[]) {


  uint64_t limbs_a[4] = {0,0,0,0};
  uint64_t limbs_b[4] = {1,2,3,4};
  uint64_t limbs_c[4] = {5,6,7,8};

  Fr_rawMMul(limbs_a,  limbs_b,  limbs_c);

  for (size_t i = 0; i < 4; ++i)
    printf("limbs_a[%zu] is %" PRIu64 "\n", i, limbs_a[i]);

  limbs_a[0] = 0;
  limbs_a[1] = 0;
  limbs_a[2] = 0;
  limbs_a[3] = 0;

  Fr_rawMMul_fallback(limbs_a,  limbs_b,  limbs_c);

  for (size_t i = 0; i < 4; ++i)
    printf("limbs_a[%zu] is %" PRIu64 "\n", i, limbs_a[i]);

  return EXIT_SUCCESS;
}
