#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void printLine(const char *line) {
  if (line != NULL) {
    printf("%s\n", line);
  }
}

int main() {
  char *data;
  /* Initialize data */
  data = NULL;
  data = (char *)malloc(100 * sizeof(char));
  if (data == NULL) {
    exit(-1);
  }
  memset(data, 'A', 100 - 1);
  data[100 - 1] = '\0';
  /* POTENTIAL FLAW: Free data in the source - the bad sink attempts to use
   * data */
  free(data);

  printf("%s", data);
  return 0;
}
