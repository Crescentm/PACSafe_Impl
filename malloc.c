#include <stdlib.h>

void my_malloc() { ; }

int main() {
  char *p = (char *)malloc(sizeof(char) * 10);
  p[5] = 'a';
  return 0;
}