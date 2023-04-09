#include "hashtable_pac.h"

metadata *shadow_memory;

void __attribute__((constructor)) init_memory() {
  unsigned long long size = SIZE;

  void *p = mmap(NULL, size, PROT_READ | PROT_WRITE,
                 MAP_PRIVATE | MAP_ANON | MAP_NORESERVE, -1, 0);

  // cannot allocate memory
  if (p == (void *)-1) {
    perror("Fail to mmap");
    exit(-1);
  }

  if (shadow_memory) {
    munmap(p, size);
    return;
  }

  shadow_memory = (metadata *)p;
}

// store pointer info to shadow memory
void pac_set(void *fptr, unsigned long tag, unsigned int nElements,
             int typeSize) {
  unsigned long offset = GET_OFFSET(fptr) + sizeof(unsigned long) & (SIZE - 1);
  metadata *ptr = (metadata *)(((unsigned char *)shadow_memory) + offset);
  ptr->tag = tag;
  ptr->nElements = nElements;
  ptr->typeSize = typeSize;
}

// get poniter info from shadow memory
metadata *pac_get(void *fptr) {
  unsigned long offset = GET_OFFSET(fptr) + sizeof(unsigned long) & (SIZE - 1);
  metadata *ptr = (metadata *)(((unsigned char *)shadow_memory) + offset);
  return ptr;
}

// remove poniter info from shadow memory
void pac_remove(void *fptr) {
  unsigned long offset = GET_OFFSET(fptr) + sizeof(unsigned long) & (SIZE - 1);
  metadata *ptr = (metadata *)(((unsigned char *)shadow_memory) + offset);
  ptr->tag = 0;
  ptr->nElements = 0;
  ptr->typeSize = 0;
}