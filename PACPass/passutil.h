//
// Created by Reza Mirzazade on 1/2/21.
//

#ifndef INSTRUMENT_PASSUTILS_H
#define INSTRUMENT_PASSUTILS_H

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include <bits/stdc++.h>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <list>
#include <malloc.h>
#include <map>
#include <queue>
#include <set>
#include <sstream>
#include <string.h>
#include <string>
#include <string> // for string class
#include <vector>

using namespace llvm;
using namespace std;

class passutils {
public:
  passutils(){};
  static void replaceFuncionWith(llvm::Function &func, const Twine &);
};

#endif // INSTRUMENT_PASSUTILS_H