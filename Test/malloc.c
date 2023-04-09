#include <stdio.h>
#include <stdlib.h>

int main() {
  char *buf1 = (char *)malloc(sizeof(char) * 100);

  int ptr_offset = 0;
  printf(" %p\n", (void *)buf1);
  scanf(" %d", &ptr_offset);
  buf1[ptr_offset] = 'A';

  return 0;
}