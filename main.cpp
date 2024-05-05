#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

extern "C" uint64_t asm_compute(uint64_t n1, uint64_t n2, uint64_t n3);
extern "C" void asm_add_chains_adox();
extern "C" void asm_add_chains_add();

int main(int argc, char* argv[]) {
  if (argc < 4) {
    printf("Not enough arguments.\nUsage: %s [n1] [n2] [n3]\n", argv[0]);
    return EXIT_FAILURE;
  }

  int64_t n1 = strtoull(argv[1], NULL, 10);
  int64_t n2 = strtoull(argv[2], NULL, 10);
  int64_t n3 = strtoull(argv[3], NULL, 10);

  int64_t result = asm_compute(n1, n2, n3);
  printf("asm_compute(%lld, %lld, %lld) = %lld\n", n1, n2, n3, result);

  asm_add_chains_adox();

  asm_add_chains_add();

  return EXIT_SUCCESS;
}
