# /bin/bash
rm *.ll *.bc *.out *.s
# clang -march=armv8.5-a -S  -emit-llvm malloc.c -o malloc.ll
# opt -load ../build/PACPass/libPACPass.so -enable-new-pm=0 --PACPass ./malloc.ll -o ./malloc_opt.bc
# llvm-dis malloc_opt.bc
# llc malloc_opt.ll -o malloc_opt.s
# clang malloc_opt.s -o malloc_opt.out -L . -lpac
clang -flegacy-pass-manager -Xclang -load -Xclang ../build/PACPass/libPACPass.so example.c io.c -L . -lpac