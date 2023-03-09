#include "passutil.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Support/raw_ostream.h"
#include <cstdint>
#include <math.h>
#include <string>

using namespace llvm;
using namespace std;

void passutils::replaceFuncionWith(llvm::Function &func, const Twine &replace) {
  errs() << "Instrumentation of " << func.getName() << "\n";

  Function *custom_function = NULL;
  FunctionType *ft = func.getFunctionType();
  custom_function = Function::Create(ft, func.getLinkage());
  custom_function->copyAttributesFrom(&func);
  custom_function->setName(replace);
  Function *NF = custom_function;
  func.getParent()->getFunctionList().insert(func.getIterator(), NF);

  int counter = 0;
  while (!func.use_empty()) {
    counter++;
    CallBase CS(func.user_back());
    std::vector<Value *> args(CS.arg_begin(), CS.arg_end());
    Instruction *call = CS.getInstruction();
    Instruction *New = CallInst::Create(NF, args, "", call);

    if (!call->use_empty())
      call->replaceAllUsesWith(New);

    call->getParent()->getInstList().erase(call);
  }
  errs() << counter << " " << func.getName() << " functions were replaced "
         << "\n";
}
