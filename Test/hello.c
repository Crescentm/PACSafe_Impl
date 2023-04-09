#include <stdio.h>
#include <stdlib.h>
#define bitGet(value) (value >> 48)

int main() {
  char *t = (char *)malloc(sizeof(char));
  *t = 'g';
  void **p = (void **)&t;
  printf("p: %p\n", p);
  printf("t: %p\n", t);
  printf("char: %c\n", *t);
  if (bitGet((unsigned long long)*p)) {
    printf("1\n");
  }
  unsigned long tag = rand();
  unsigned long mod = tag ^ (unsigned long)p;
  printf("mod: %lu\n", mod);

  __asm volatile("pacda %x[pointer], %x[modifier]\n"
                 : [pointer] "+r"(*p)
                 : [modifier] "r"(mod));
  printf("t: %p\n", t);
  if (!bitGet((unsigned long long)*p)) {
    printf("2\n");
  }
  printf("char: %c\n", *t);
  __asm volatile("autda %x[pointer], %x[modifier]\n"
                 : [pointer] "+r"(*p)
                 : [modifier] "r"(mod));
  printf("t: %p\n", t);
  printf("char: %c\n", *t);

  return 0;
}
