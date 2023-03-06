#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
struct ReplaceMalloc : public FunctionPass {
  static char ID;
  ReplaceMalloc() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    bool Changed = false;
    for (auto &BB : F) {
      for (auto &I : BB) {
        if (auto *Call = dyn_cast<CallInst>(&I)) {
          Function *Callee = Call->getCalledFunction();
          if (Callee && Callee->getName() == "malloc") {
            IRBuilder<> Builder(Call);
            Value *Size = Call->getArgOperand(0);
            Type *Int8PtrTy =
                PointerType::getUnqual(Type::getInt8Ty(F.getContext()));
            FunctionType *FT =
                FunctionType::get(Int8PtrTy, Size->getType(), false);
            FunctionCallee NewFunc =
                F.getParent()->getOrInsertFunction("my_malloc", FT);
            Value *NewCall = Builder.CreateCall(NewFunc, Size);
            Call->replaceAllUsesWith(NewCall);
            Call->eraseFromParent();
            Changed = true;
          }
        }
      }
    }
    return Changed;
  }
};
} // namespace

char ReplaceMalloc::ID = 0;
static RegisterPass<ReplaceMalloc>
    X("replace-malloc", "Replace malloc with my_malloc", false, false);
