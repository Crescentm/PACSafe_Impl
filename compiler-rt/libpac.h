#include "hashtable_pac.h"
#include <errno.h>
#include <fcntl.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#define PAC
// use eor to replace pac cost
//#define EOR
#define PACEXISTS

__attribute__((visibility("default"))) extern void addPAC(void **p);
__attribute__((visibility("default"))) extern void authPAC(void **p,
                                                           unsigned int n);
__attribute__((visibility("default"))) extern void
setMetadata(void *p, unsigned int nElements, int typeSize);
__attribute__((visibility("default"))) extern void
setMetadataObj(void **p, unsigned int nElements, int typeSize);
__attribute__((visibility("default"))) extern void removeMetadata(void **p);
__attribute__((visibility("default"))) extern void removeMetadataStack(void *p);
__attribute__((visibility("default"))) extern bool metadataExists(void *p);
__attribute__((visibility("default"))) extern void
replaceWithSignedPointer(void **p, void *signed_p);