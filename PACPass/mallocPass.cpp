#include "stack"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <llvm-14/llvm/Support/raw_ostream.h>

using namespace llvm;

namespace {
struct ReplaceMalloc : public FunctionPass {
  static char ID;
  ReplaceMalloc() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    // Get a reference to the LLVM context.
    LLVMContext &Ctx = F.getContext();
    // Get a reference to the malloc function.
    FunctionCallee MallocFunc = F.getParent()->getOrInsertFunction(
        "my_malloc", Type::getInt8PtrTy(Ctx), Type::getInt64Ty(Ctx));

    std::stack<CallInst *> workList;
    // Iterate over the instructions in the function.
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {
        // errs() << I.getOpcodeName() << '\n';
        if (CallInst *CI = dyn_cast<CallInst>(&I)) {
          Function *Callee = CI->getCalledFunction();
          // errs().write_escaped(Callee->getName());
          if (Callee && Callee->getName() == "malloc") {
            workList.push(CI);
          }
        }
      }
    }

    errs() << workList.size();

    while (!workList.empty()) {
      CallInst *CI = workList.top();
      IRBuilder<> Builder(CI);
      Value *NewCall = Builder.CreateCall(MallocFunc, {CI->getArgOperand(0)});
      errs() << CI->getCalledFunction()->getName();

      CI->replaceAllUsesWith(NewCall);
      CI->dropAllReferences();
      CI->eraseFromParent();
      workList.pop();
    }

    // We modified the function, so return true.
    return true;
  }
};
} // namespace

char ReplaceMalloc::ID = 0;
static RegisterPass<ReplaceMalloc>
    X("replace-malloc", "Replace all malloc calls with our implementation",
      false, false);
