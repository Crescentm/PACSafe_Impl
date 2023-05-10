# /bin/bash
cd ../build
make
cd ../Test
rm *.ll *.bc *.out *.s
clang -DINCLUDEMAIN -march=armv8.5-a -S  -emit-llvm example.c -o example.ll
clang -march=armv8.5-a -S  -emit-llvm io.c -o io.ll
opt -load ../build/PACPass/libPACPass.so -enable-new-pm=0 --PACPass ./example.ll -o ./example_opt.bc
opt -load ../build/PACPass/libPACPass.so -enable-new-pm=0 --PACPass ./io.ll -o ./io_opt.bc
llvm-dis example_opt.bc
llvm-dis io_opt.bc
llc example_opt.ll -o example_opt.s
llc io_opt.ll -o io_opt.s
clang example_opt.s io_opt.s -o example_opt.out -L /lib -lpac
# clang -flegacy-pass-manager -Xclang -load -Xclang ../build/PACPass/libPACPass.so example.c -L . -lpac
