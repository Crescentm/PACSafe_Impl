#include <stdio.h>
#include <stdlib.h>
#define bitGet(value) (value >> 48)

int main() {
  char seq[10];
  printf("p:  %p", seq);
  printf("&p: %p", &seq);
  printf("p:  %p", seq + 2);
  printf("&p: %p", &(seq + 2));

  return 0;
}
