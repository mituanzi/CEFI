import json
import logging

if __name__=='__main__':
    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)

    CG_analysis_json = './In/CG_analysis.json'
    invoke_dict_json = './In/invoke_dict.json'
    invoke_dict = {}
    with open(CG_analysis_json, 'r') as f1:
        CG_analysis = json.load(f1)
    for (caller, value) in CG_analysis.items():
        # print(caller)
        invoke_dict[caller] = []
        # print(value["Callees"])
        if value["Callees"] != None:
            for (callee, count) in value["Callees"].items():
                # print(callee)
                # print(count) 
                for i in range(0,count):
                    invoke_dict[caller].append(callee) 
    f2 = open(invoke_dict_json, "w")
    jsString = json.dumps(invoke_dict, indent=1)
    f2.write(jsString)
    f2.close()

    
