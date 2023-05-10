#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define N 10

static inline uint64_t read_cycle_counter(void) {
  unsigned long long tsc = 0;
  asm volatile("mrs %0, pmccntr_el0" : "=r"(tsc));
  return tsc;
}

int main() {
  uint64_t cycle_start, cycle_end;
  double cycle_total = 0;

  for (int i = 0; i < N; i++) {
    int res = 0;
    int k = 10, g = 10;

    cycle_start = read_cycle_counter();
    __asm volatile("eor x1, x1, x1\n");
    cycle_end = read_cycle_counter();
    cycle_total += (double)(cycle_end - cycle_start);
  }

  double cycle_avg = cycle_total / N;
  printf("Average cycles: %lf\n", cycle_avg);

  return 0;
}

// int main() {

//   uint64_t c1, c2;
//   c1 = read_cycle_counter();
//   usleep(1000000);
//   c2 = read_cycle_counter();

//   printf("cycles per second: %lu\n", c2 - c1);

//   return 0;
// }
