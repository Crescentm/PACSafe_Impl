#/bin/bash
clang -g -c hashtable_pac.c libpac.c
ld -r -s -o pac.o hashtable_pac.o libpac.o
cp pac.o ../Test/