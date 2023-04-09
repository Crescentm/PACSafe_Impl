#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define SIZE ((0x1 << 28) * sizeof(unsigned long))
#define MAPPING_PATTERN ((SIZE - 1)) ^ (sizeof(unsigned long) - 1)
#define SHIFT_BITS 2
#define GET_OFFSET(addr) (((uintptr_t)(addr) << SHIFT_BITS) & MAPPING_PATTERN)

typedef struct {
  unsigned long tag;       // pac tag 64-bit
  unsigned long nElements; // num of element
  int typeSize;
} __attribute__((packed)) metadata;

__attribute__((visibility("default"))) extern void init_memory();
__attribute__((visibility("default"))) extern void
pac_set(void *fptr, unsigned long tag, unsigned int nElements, int typeSize);
__attribute__((visibility("default"))) extern metadata *pac_get(void *fptr);
__attribute__((visibility("default"))) extern void pac_remove(void *fptr);
