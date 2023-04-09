#include <arm_acle.h>
#include <stdio.h>
#define __ARM_FEATURE_RNG
int main() {
  uint64_t *p = NULL;
  int re = __rndr(p);
  printf("%%llx", p);
}