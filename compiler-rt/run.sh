#/bin/bash
rm *.o *.a
clang -march=armv8.5-a -g -c hashtable_pac.c libpac.c
#ld -r -s -o pac.o hashtable_pac.o libpac.o
ar -r libpac.a libpac.o hashtable_pac.o
cp libpac.a ../Test/
cp libpac.a ~/Juliet/C/testcasesupport
