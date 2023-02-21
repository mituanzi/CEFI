//===--------------- GetCG.cpp ---------------------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// Performs analysis to obtain call graph and write it to JSON file
//
//===----------------------------------------------------------------------===//

//---- [getcg-debug]: These are used for testing, remove them later!! --------//
//===----------------------------------------------------------------------===//
#include "llvm/Analysis/MemoryBuiltins.h"
#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DIBuilder.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/GetElementPtrTypeIterator.h"
#include "llvm/IR/GlobalAlias.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/MDBuilder.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Operator.h"
#include "llvm/IR/PatternMatch.h"
#include "llvm/IR/ValueHandle.h"
#include "llvm/Support/MathExtras.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/CallSite.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"
#include "llvm/Transforms/Instrumentation.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/ADT/DenseSet.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/CommandLine.h"
// #include "llvm/Support/JSON.h"
#include "json/json.h"  //From https://github.com/open-source-parsers/jsoncpp
#include <fstream>
#include <iostream>
#include <set>
#include <algorithm>

using namespace llvm;

#define DEBUG_TYPE              "getcg"
#define GETCG_IR_DEBUG_FILE_NAME "getcg-ir-debug.txt"
#define JSON_INITAL_SR_KEY      "INITIAL_SR_KEY"

std::set<std::string> ptrList;

static cl::opt<std::string> GetCGResults("getcg-analysis",
                                  cl::desc("JSON File to write analysis "
                                           "results to"),
                                  cl::init("-"),cl::value_desc("filename"));

// static cl::opt<std::string> GetCGSRInit("getcg-sr-init",
//                                        cl::desc("JSON File containing SR Initial "
//                                                 "value"),
//                                        cl::init("-"),cl::value_desc("filename"));

namespace {
  // Hello - The first implementation, without getAnalysisUsage.
  struct GetCG : public ModulePass {
    static char ID; // Pass identification, replacement for typeid
    GetCG() : ModulePass(ID) {}

    Json::Value Root;
    std::ofstream DbgFd;

    void AddFuncToJson(Function &F){

      // getcg-debug
      std::string func_name = F.getName().str();
      //if (func_name.find("func") != std::string::npos || func_name.find("memset") != std::string::npos ||
      //    func_name.compare("rai_main") == 0){
        if (!F.hasFnAttribute("no-getcg") &&
            func_name.find("__getcg") == std::string::npos &&
            func_name.find("__tcfi_handler") == std::string::npos &&
            func_name.find("SVC_Handler") == std::string::npos){
          F.addFnAttr("GetCGCall", "true");
        }
      //}
      if(F.hasFnAttribute("GetCGCall")){ // [rai-debug]

      std::string name = F.getName().str();
      Json::Value *Callers;
      Json::Value *Callees;
      Json::Value *IndirTypeCallees;
      Root[name];
      uint64_t CallersCnt = 0, CalleeCnt =0, CalledFuncCnt = 0, IndirCallCntr = 0;
      Callers = &Root[name]["Callers"];
      Callees = &Root[name]["Callees"];
      //IndirTypeCallees = &Root[name]["IndirTypeCallees"];


      // get callers
      if (func_name.compare("rai_main") != 0){

        DbgFd << "--------------------------------------------------------\n";
        DbgFd << "\t [+] Adding callers for Func: " << F.getName().str() << "\n";
        for (User *U: F.users()){
          if (Instruction *Inst = dyn_cast<Instruction>(U)){
            if(auto cs = CallSite(Inst)){
              Function *caller = cs.getCaller();
              // exclude intrinsic functions
              if (!caller->isIntrinsic()){
                // add caller funciton name
                std::string caller_name = caller->getName().str();
                (*Callers)[caller_name];
                // increase caller's counter
                Json::Value *AccessCnt =&(*Callers)[caller_name];
                *AccessCnt = (*AccessCnt).asUInt64() + 1;
                CallersCnt++;
                DbgFd << "\t\t " << caller->getName().str() << "\n";
                std::string str;
                raw_string_ostream rso_callee(str);
                Inst->print(rso_callee);
                DbgFd << "\t\t " << rso_callee.str() << "\n";
                rso_callee.str().clear();
              }
            }
          }
        }
      }
      // get callees
      DbgFd << "\t [+] Adding callees for Func: " << F.getName().str() << "\n";
      for (BasicBlock &BB: F){
        for(Instruction &I: BB){
          if(auto cs = CallSite(&I)){
            // check if it is tail call
            if (cs.isTailCall()){
              std::string str;
              raw_string_ostream rso_callee(str);
              DbgFd << " [+] TAIL CALL: ";
              I.print(rso_callee);
              DbgFd << rso_callee.str() << "\n";
              rso_callee.str().clear();
            }
            //------------------------------------------------------------------
            // handle direct calls
            //------------------------------------------------------------------
            if(!cs.isIndirectCall()){
              Function *callee = cs.getCalledFunction();
              if (callee){
                // exclude intrinsic functions
                if (!callee->isIntrinsic()){
                  std::string callee_name = callee->getName().str();
                  // add callee function name
                  (*Callees)[callee_name];
                  // count the number of times a function is calles
                  Json::Value *AccessCnt =&(*Callees)[callee_name];
                  *AccessCnt = (*AccessCnt).asUInt64() + 1;
                }
              }

              // handle constant exp
              else if (ConstantExpr *ConstEx =
                       dyn_cast_or_null<ConstantExpr>(cs.getCalledValue())){
                //errs()<<"\t\t <ConstantExpr> :";
                // remove casts
                auto called = cs.getCalledValue()->stripPointerCasts();
                auto func = dyn_cast<Function>(called);
                std::string callee_name = func->getName().str();
                // add callee function name
                (*Callees)[callee_name];
                // count the number of times a function is called
                Json::Value *AccessCnt =&(*Callees)[callee_name];
                *AccessCnt = (*AccessCnt).asUInt64() + 1;

              }

              // handle inline assembly
              else if(InlineAsm *IA =
                      dyn_cast_or_null<InlineAsm>(cs.getCalledValue())){
                DbgFd<<"\t\t <Inline assembly> :";
                std::string str;
                raw_string_ostream rso_callee(str);
                cs->print(rso_callee);
                // writ the string to debug file
                DbgFd << "Inline ASM: ";
                DbgFd << rso_callee.str();
                DbgFd << "\n------------------\n";
              }

              // unknown case, through an error
              else{
                errs() << "[-] ERROR: Func " << F.getName().str();
                errs() << ", Instruction: " << I << "\n";
                assert(false && "Unhandled direct call in GetCG");
              }
            }
            //------------------------------------------------------------------
            // handle indirect calls
            //------------------------------------------------------------------
            else{
              std::string str;
              raw_string_ostream rso_callee(str);
              cs->print(rso_callee);
              // write the string to debug file
              DbgFd << "\tIndirect call: ";
              DbgFd << rso_callee.str() << "\n";

              // get function type
              FunctionType *FuncTy = cs.getFunctionType();
              rso_callee.str().clear();
              FuncTy->print(rso_callee);
              //outs() << FuncTy << "\n";
              //outs() << *FuncTy << "\n";
              DbgFd << "\t Indirect Type: " << rso_callee.str() << "\n";
              DbgFd << "\n------------ indirect_analysis: START -----------\n";

              // update indirect call counter
              IndirCallCntr += 1;
              std::string IndirCalleeName = F.getName().str() + "_Indir" +
                  std::to_string(IndirCallCntr);

              // add the indrect callee label to the callees
              (*Callees)[IndirCalleeName];
              // we set the indirect callee object to 1, and add the actual
              // target set the indirect object dictionary
              Json::Value *AccessCnt =&(*Callees)[IndirCalleeName];
              *AccessCnt = (*AccessCnt).asUInt64() + 1;

              // add it to json dictionary
              Root[IndirCalleeName];
              Json::Value *IndirCallers;
              Json::Value *IndirCallees;
              IndirCallers = &Root[IndirCalleeName]["Callers"];
              IndirCallees = &Root[IndirCalleeName]["Callees"];
              AccessCnt =&(*IndirCallers)[F.getName().str()];
              *AccessCnt = (*AccessCnt).asUInt64() + 1;
              //AccessCnt =&(*Callees)[IndirCalleeName];
              //*AccessCnt = (*AccessCnt).asUInt64() + 1;
              // rai-debug
              bool isEmptySet = true;
              for (Function &Func: F.getParent()->getFunctionList()){

                if( Func.hasAddressTaken() &&
                    isTypesEq(Func.getFunctionType(), FuncTy, 0)){

                  (*IndirCallees)[Func.getName().str()];
                  AccessCnt =&(*IndirCallees)[Func.getName().str()];
                  *AccessCnt = (*AccessCnt).asUInt64() + 1;
                  isEmptySet = false;

                }

              }
              if (isEmptySet){
                rso_callee.str().clear();
                DbgFd << "-----------------------------------------\n";
                DbgFd << "The violating indirect call: ";
                cs->print(rso_callee);
                DbgFd << rso_callee.str() << "\n";
                rso_callee.str().clear();
                DbgFd << "The violating indirect call TYPE: ";
                FuncTy->print(rso_callee);
                DbgFd << rso_callee.str() << "\n";
                DbgFd << "-----------------------------------------\n";
              }
              DbgFd << "------------ indirect_analysis: END  ------------\n";
            }
          }
        }
      }
      } // if(F.hasFnAttribute("GETCGCall")
    }

    /// Checks if the function types are the same
    bool isTypesEq(Type *T1, Type *T2,unsigned depth=0){
      if ( T1 == T2 ){
          return true;
      }
      if (depth > 10){
          // If we haven't found  a difference this deep just assume they are
          // the same type. We need to overapproximate (i.e. say more things
          // are equal than really are) so return true
          return true;
      }
      if (PointerType *Pty1 = dyn_cast<PointerType>(T1) ){
          if (PointerType *Pty2 = dyn_cast<PointerType>(T2)){
          return isTypesEq(Pty1->getPointerElementType(),
                            Pty2->getPointerElementType(),depth+1);
          }else{
              return false;
          }
      }
      if (FunctionType * FTy1 = dyn_cast<FunctionType>(T1)){
          if (FunctionType * FTy2 = dyn_cast<FunctionType>(T2)){

              if (FTy1->getNumParams() != FTy2->getNumParams()){
                  return false;
              }
              if (! isTypesEq(FTy1->getReturnType(),
                               FTy2->getReturnType(), depth+1)){
                  return false;
              }
              for (unsigned i=0; i<FTy1->getNumParams(); i++){
                  if (FTy1->getParamType(i) == FTy1 &&
                        FTy2->getParamType(i) == FTy2  ){
                      continue;
                  }else if (FTy1->getParamType(i) != FTy1 &&
                            FTy2->getParamType(i) != FTy2  ){
                      FTy1->getParamType(i)->dump();
                      FTy2->getParamType(i)->dump();
                      if( !isTypesEq(FTy1->getParamType(i),
                                      FTy2->getParamType(i), depth+1)){
                       return false;
                      }
                  }else{
                      return false;
                  }
              }
              return true;

          }else{
              return false;
          }
      }
      if (StructType *STy1 = dyn_cast<StructType>(T1)){
          if (StructType *STy2 = dyn_cast<StructType>(T2)){
              if(STy2->getNumElements() != STy1->getNumElements()){
                  return false;
              }
              if(STy1->hasName() && STy2->hasName()){
                  if(STy1->getName().startswith(STy2->getName()) ||
                      STy2->getName().startswith(STy1->getName())){
                      return true;
                  }
              }
              return false;

          }else{
              return false;
          }
      }
      return false;
    }

    bool doInitialization(Module &M) override{
      return true;
    }


    bool runOnModule(Module &M) override {
      
      if ( GetCGResults.compare("-") == 0 ){
        errs() << "@GETCG Analysis false:\n";
        return false;
      }

      // // if this is the second run, add the initial SR value
      // if (!(GETCGSRInit.compare("-") == 0)){

      //   std::ifstream InputFd;    // Key-flag-ids input file, include initial SR
      //   Json::Value FlagIdRoot;   // The root of the key-flag-ids input file

      //   InputFd.open(GETCGSRInit);
      //   // check the file exists
      //   if (!InputFd){
      //     errs() << "[-] ERROR: Cannot open file: " << GETCGSRInit << "\n";
      //   }

      //   // read the contents into FlagIdRoot
      //   InputFd >> FlagIdRoot;

      //   uint64_t SRValue = FlagIdRoot[JSON_INITAL_SR_KEY].asUInt64();

      //   GlobalVariable *GV = M.getGlobalVariable("initial_rai_sr");
      //   assert(GV && "Could not find the global variable!");
      //   Constant* InitSR = ConstantInt::get(M.getContext(), APInt(32, SRValue, false));
      //   GV->setInitializer(InitSR);

      //   // add extlib optimization global
      //   //GlobalVariable *ExtLibOptGV = M.getGlobalVariable("rai_extlib_var");
      //   //assert(ExtLibOptGV && "Could not find the global variable!");
      //   //Constant* InitExtLibOptGV =
      //   //    ConstantInt::get(M.getContext(), APInt(32, 0, false));
      //   //ExtLibOptGV->setInitializer(InitExtLibOptGV);

      //   //----------------------------------------------------------------------
      //   // add tcfi handler function
      //   IRBuilder <> *IRB;
      //   IRB = new IRBuilder<>(M.getContext());
      //   Function *GETCGFnPlaceHolder = M.getFunction("__getcg_error");
      //   assert(GETCGFnPlaceHolder && "Could not funct __getcg_error :(");

      //   FunctionType *FT = FunctionType::get(Type::getVoidTy(M.getContext()), false);
      //   Function *TCFIHandler = Function::Create(FT, Function::ExternalLinkage,
      //                                            "__tcfi_handler", &M);

      //   //TCFIHandler->addFnAttr(Attribute::AttrKind::Naked);
      //   TCFIHandler->addFnAttr(Attribute::AttrKind::OptimizeNone);
      //   TCFIHandler->addFnAttr(Attribute::AttrKind::NoInline);
      //   //TCFIHandler->addFnAttr(Attribute::AttrKind::Alignment(4));
      //   TCFIHandler->setAlignment(4);

      //   BasicBlock *EntryBB = BasicBlock::Create(M.getContext(),
      //                                            "entry", TCFIHandler);
      //   IRB->SetInsertPoint(EntryBB);
      //   IRB->CreateCall(GETCGFnPlaceHolder);
      //   //IRB->CreateUnreachable();
      //   IRB->CreateRetVoid();
      //   delete IRB;


      // }

      errs() << "===========================================================\n";
      errs() << "@GETCG Analysis:\n";
      errs() << "[+] Opening files: ";
      errs() << "\n\t";
      errs().write_escaped(GETCG_IR_DEBUG_FILE_NAME) << "\n";
      DbgFd.open(GETCG_IR_DEBUG_FILE_NAME);

      uint64_t NumFuncs = 0;
      for (Function & F : M){
        // exclude intrinsic functions
        if (!F.getName().startswith("llvm.")){
          errs() << "-----------------------------------------------------------\n";
          errs() << "Hello: ";
          errs().write_escaped(F.getName()) << '\n';
          AddFuncToJson(F);
          NumFuncs++;
        }

      }
      errs() <<"[+] Total NumFuncs: " << NumFuncs << "\n";
      return true;
    }



    bool doFinalization(Module &M) override{

      errs() << "Before if GetCG in doFinalization\n";
      if ( GetCGResults.compare("-") == 0 ){
        return false;
      }
      errs() << "Running Finalization\n";

      std::ofstream jsonFile;

      errs() << "[+] Closing files: ";
      errs().write_escaped(GetCGResults) << "\n";
      jsonFile.open(GetCGResults);
      jsonFile<<Root;
      jsonFile.close();

      errs() << "\t";
      errs().write_escaped(GETCG_IR_DEBUG_FILE_NAME) << "\n";
      DbgFd.close();
      errs() << "===========================================================\n";
      return false;
    }


      void getAnalysisUsage(AnalysisUsage &AU) const override {
        //AU.setPreservesAll();
      }
  };

}
char GetCG::ID = 0;
static RegisterPass<GetCG> U("getcg", "Performs GETCG LLVM Analysis");
