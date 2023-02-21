//===- CCEInstrument.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the instrumentation before the specified function
// 
//
//===----------------------------------------------------------------------===//

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/IR/CallSite.h"
#include "llvm/IR/DebugLoc.h"
#include "llvm/Support/CommandLine.h"
#include <string>
#include <json/json.h>
#include <iostream>
#include <fstream>

using namespace std;
using namespace llvm;

static cl::opt<std::string> endpointfile("end-point",
                                  cl::desc("The file that store operation function "
                                           "needing to be judged whether it is legal or not"),
                                  cl::init("-"),cl::value_desc("filename"));

static cl::opt<std::string> edgeweights("edge-weight",
                                  cl::desc("The file that stores related function calls "
                                           "and path weights "),
                                  cl::init("-"),cl::value_desc("filename"));

struct calledFunc
{
    string calledName;
    vector<int> idweight;
};

struct edge_id
{
    string callingName;
    vector<calledFunc> calledfuncVec;
};

namespace {
    class CCEInstrument : public ModulePass {
    public:
        static char ID;
        CCEInstrument() : ModulePass(ID) {}
        
        bool runOnModule(Module &M) override;

        vector<edge_id> readFileJson();

        vector<string> getendpoint();
        
        virtual StringRef getPassName() const override {
            return "CCEInstrument";
        }
    };
}

char CCEInstrument::ID = 0;
static RegisterPass<CCEInstrument> x("CCEInstrument","CCEInstrument World Pass",false,false);
// Automatically enable the pass.
// http://adriansampson.net/blog/clangpass.html
static void registerSkeletonPass(const PassManagerBuilder &,
                          legacy::PassManagerBase &PM) {
    PM.add(new CCEInstrument());
}
static RegisterStandardPasses
    RegisterMyPass(PassManagerBuilder::EP_EarlyAsPossible,
                  registerSkeletonPass);


bool CCEInstrument::runOnModule(Module &M) {
    IRBuilder<> builder(M.getContext());
    
    auto TestID = new GlobalVariable(builder.getInt32Ty(), false, GlobalValue::ExternalLinkage, builder.getInt32(0));
    M.getGlobalList().push_back(TestID);
    
    vector<edge_id> edgeIdVec=readFileJson();

    // errs()<<"edgeID: " << edgeIdVec <<"\n";

    vector<string> endpoints=getendpoint();

    // errs()<<"endpoint: \n";
    
    for (Module::iterator iter=M.begin(); iter!=M.end(); ++iter) {
        Function &F = *iter;
        
        // errs()<<"FName: " <<F.getName() <<'\n';
        
        for (vector<edge_id>::iterator iter2 = edgeIdVec.begin(); iter2 != edgeIdVec.end(); ++iter2)
        {
            edge_id relation = *iter2;
            errs()<<"callingName: " << relation.callingName <<'\n';
            if (F.getName()!=relation.callingName){
                continue;
            }
            else{
                for (BasicBlock &B:F){
                    for (Instruction &I:B){
                        CallSite cs(&I);
                        if(cs.getInstruction()){
                            //errs() <<"calledinstname: "<< callInst->getCalledFunction()->getName() <<'\n';
                            for (vector<calledFunc>::iterator iter3 = relation.calledfuncVec.begin();iter3 != relation.calledfuncVec.end();++iter3)
                            {
                                calledFunc called_func = *iter3;
                                //vector<int> idtmp = called_func.idweight;
                                
                                if(cs.getCalledValue()->stripPointerCasts()->getName()!=called_func.calledName){
                                    continue;
                                }
                                else{
                                    errs() << "calledName：" << called_func.calledName << '\n';
                                    errs()<<"idweight: "<<*called_func.idweight.begin()<<'\n';
                                    // errs() << "vector size: " << called_func.idweight.size() << "\n";
                                    builder.SetInsertPoint(cs.getInstruction());
                                    Value *one=builder.CreateLoad(TestID);
                                    Value *two=builder.getInt32(*called_func.idweight.begin());
                                    builder.CreateStore(builder.CreateAdd(one, two),TestID);
                                    builder.SetInsertPoint(&B, ++builder.GetInsertPoint());
                                    Value *three=builder.CreateLoad(TestID);
                                    Value *four=builder.getInt32(*called_func.idweight.begin());
                                    builder.CreateStore(builder.CreateSub(three, four),TestID);
                                    // *called_func.idweight.erase(called_func.idweight.begin());
                                    (iter3->idweight).erase(iter3->idweight.begin());
                                    errs()<<"after idweight: "<< called_func.idweight.size() <<"->"<<*called_func.idweight.begin()<<'\n';
                                    
                                    for (vector<string>::iterator iter4 = endpoints.begin(); iter4 != endpoints.end(); ++iter4)
                                    {
                                        string endpoint = *iter4;
                                        
                                        if(cs.getCalledValue()->stripPointerCasts()->getName()!=endpoint){
                                            continue;
                                        }
                                        else{
                                            errs()<<"endpoint: "<<endpoint<<"\n";
                                            builder.SetInsertPoint(cs.getInstruction());
                                            Value *str = builder.CreateGlobalStringPtr(endpoint);
                                            Value *tmp_ID=builder.CreateLoad(TestID);

                                            std::vector<Value*> para;
                                            para.push_back(str);
                                            para.push_back(tmp_ID);

                                            Function *func_printf = F.getParent()->getFunction("judge_legality");
                                            // func_printf->addAttribute(AttributeList::FunctionIndex, Attribute::NoInline);
                                            if (!func_printf){
                                                assert(false && "judge_legality not found");
                                            } 
                                            builder.CreateCall(func_printf, para);  
                                            break;
                                        }
                                    }
                                    break;
                                }
                            }
                        }
                    }
                }
                break;
            }
        }
    }
    return true;
}


vector<edge_id> CCEInstrument::readFileJson()
{
    Json::Reader reader;
    Json::Value value;
    vector<edge_id> edgeIdVec;  //存储所有的调用信息
    
    //从文件中读取，保证当前文件有edges.json文件
    ifstream in(edgeweights, ios::binary);
    
    //    if (!in.is_open())
    //    {
    //        cout << "Error opening file\n";
    //        return;
    //    }
    
    if (reader.parse(in, value))
    {
        //读取根节点信息
        const Json::Value arrayObj = value["edges_id"];
        for (unsigned int i = 0; i < arrayObj.size(); i++)
        {
            edge_id relation;
            calledFunc called_func;
            
            string callingName=arrayObj[i]["callingName"].asString();
            relation.callingName=callingName;
            if (callingName.length()==0)
                continue;
            const Json::Value arrayObj2=arrayObj[i]["calledFunc"];
            
            relation.calledfuncVec.clear(); //清空之前暂存的relation
            for (unsigned int j = 0; j < arrayObj2.size(); j++)
            {
                string calledName=arrayObj2[j]["calledName"].asString();
                called_func.calledName=calledName;
                
                called_func.idweight.clear(); //清空之前暂存的idweight
                for (unsigned int m = 0; m < arrayObj2[j]["idweight"].size(); m++)
                {
                    int idweight=arrayObj2[j]["idweight"][m].asInt();
                    called_func.idweight.push_back(idweight);
                }
                relation.calledfuncVec.push_back(called_func);
            }
            edgeIdVec.push_back(relation);
        }
    }
    else
    {
        cout << "parse error\n" << endl;
    }
    
    in.close();
    return edgeIdVec;
}

vector<string> CCEInstrument::getendpoint()
{
    Json::Reader reader;
    Json::Value value;
    vector<string> endpoints;

    ifstream in(endpointfile, ios::binary);

    if (reader.parse(in, value))
    {
        const Json::Value arrayObj = value;
        for (unsigned int i = 0; i < arrayObj.size(); i++)
        {
            endpoints.push_back(arrayObj[i].asString());
        }
    }
    return endpoints;
}