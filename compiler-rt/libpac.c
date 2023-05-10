#include "libpac.h"
#define bitGet(value) (value >> 48)
unsigned long randomTag() { return (unsigned long)rand(); }

void addPAC(void **p) {
  if (bitGet((unsigned long long)*p)) {
    return;
  }

#ifdef PAC
  metadata *meta = pac_get(*p);
  unsigned long tag = meta->tag;
  if (!tag) {
    tag = randomTag();
    pac_set(*p, tag, 1, 8);
  }
  unsigned long mod = tag ^ (unsigned long)p;
#ifdef debug
  printf("PACAdd-> Pointer: %p mod: %lu tag: %lu\n", *p, mod, tag);
  fflush(stdout);
#endif
  __asm volatile("pacda %x[pointer], %x[modifier]\n"
                 : [pointer] "+r"(*p)
                 : [modifier] "r"(mod));
#endif

#ifdef EOR
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
#endif
}

void authPAC(void **p, unsigned int n) {
#ifdef debug
  printf("-------AuthPAC S--------\n");
  printf("PACAut-> Pointer: %p \n", *p);
  fflush(stdout);
#endif
  if (!bitGet((unsigned long long)*p)) {
    return;
  }

#ifdef PAC
  metadata *meta = pac_get(((char *)*p + n));
  unsigned long tag = meta->tag;
  unsigned long mod = meta->tag ^ (unsigned long)p;
#ifdef debug
  printf("PACAut-> Pointer: %p mod: %lu tag: %lu\n", *p, mod, tag);
  printf("-------AuthPAC E--------\n");
  fflush(stdout);
#endif
  __asm volatile("autda %x[pointer], %x[modifier]\n"
                 : [pointer] "+r"(*p)
                 : [modifier] "r"(mod));
#endif

#ifdef EOR
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
  __asm volatile("eor x18, x18, x18\n");
#endif
}

// Function that inserts metadata into the hashtable.
void setMetadata(void *p, unsigned int nElements, int typeSize) {
#ifdef debug
  printf("SetM: Pointer %p E %u S %d\n", p, nElements, typeSize);
  fflush(stdout);
#endif
#ifdef PAC
  if (metadataExists(p)) {
    return;
  }
  unsigned long tag; // 64-bit
  tag = rand();
  pac_set(p, tag, nElements, typeSize);
#endif
}

// Function that inserts metadata into the hashtable (p is the pointer of
// pointer).
void setMetadataObj(void **p, unsigned int nElements, int typeSize) {
#ifdef debug
  printf("SetMO-> Pointer: %p E: %u S: %d\n", *p, nElements, typeSize);
  fflush(stdout);
#endif
#ifdef PAC
  if (metadataExists(*p)) {
    return;
  }
  unsigned long tag; // 64-bit
  tag = randomTag();
  pac_set(*p, tag, nElements, typeSize);
#endif
}

// Function that removes metadata from the hashtable.
void removeMetadata(void **p) {
#ifdef PAC
  metadata *meta = pac_get(*p);
  if (!meta->tag) {
    return;
  }
  unsigned nElements = meta->nElements;
  unsigned typeSize = meta->typeSize;
  for (int i = 0; i < nElements; i++) {
#ifdef debug
    printf("removeMetadata-> Pointer: %p\n", *p);
    fflush(stdout);
#endif
    pac_remove(*p);
    (*p) = (char *)(*p) + typeSize;
  }
#endif
}

// Function that removes metadata from the hashtable.
void removeMetadataStack(void *p) {
#ifdef PAC
  metadata *meta = pac_get(p);
  if (!meta->tag) {
    return;
  }
  unsigned nElements = meta->nElements;
  unsigned typeSize = meta->typeSize;
  for (int i = 0; i < nElements; i++) {
    pac_remove(p);
    (p) = (char *)(p) + typeSize;
  }
#endif
}

// Function that detects if metadata exists.
bool metadataExists(void *p) {
#ifndef PAC
  if (p) {
    return false;
  } else {
    return true;
  }
#endif
#ifdef PAC
  metadata *meta = pac_get(p);
  if (!meta->tag) {
    return false;
  } else {
    return true;
  }
#endif
  return true;
}

// Function that replaces pointer with already PACed pointer
void replaceWithSignedPointer(void **p, void *signed_p) {
  if (!bitGet((unsigned long long)signed_p)) {
    return;
  }
  *p = signed_p;
}
