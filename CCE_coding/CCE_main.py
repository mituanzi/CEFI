import sys
import logging
import json
import os
from extract_origGraph import extract_related_origGraph
from extract_graph import get_changed_graph

startname = 'main'
endname = 'Serial_write'
invoke_dict_json = './In/invoke_dict.json'
related_dict_json = './In/related_dict.json'
edges_json = './Out/edges.json'
path_num = './Out/path_num.json'
endpoint_json = './Out/endpoint.json'


def main(): 

    recur_flag = [False] # a flag which record whether the original graph have a loop
    
    related_dict = extract_related_origGraph(startname,endname,invoke_dict_json,recur_flag,related_dict_json)
    
    logging.debug('The value of recursion is {}'.format(recur_flag))
    if recur_flag == [False]:
        num = get_changed_graph(related_dict,startname,endname,edges_json,recursion=False)
    else:
        num = get_changed_graph(related_dict,startname,endname,edges_json,recursion=True)
    logging.debug('The file edges.json is produced.')
    print("The number of paths between {} and {} is {}".format(startname,endname,num))
    
    if os.path.exists(path_num):
        with open(path_num,"r") as json_file:
	        num_dict = json.load(json_file)
        fp = open(path_num,"w+")
    else:
        fp = open(path_num,"w")
        num_dict = {}
    
    num_dict[str((startname,endname))] = num
    numdict = json.dumps(num_dict,indent=1)
    fp.write(numdict)
    fp.close()

    if os.path.exists(endpoint_json):
        with open(endpoint_json,"r") as json_file:
	        endpoint_list = json.load(json_file)
        fp = open(endpoint_json,"w+")
    else:
        fp = open(endpoint_json,"w")
        endpoint_list = []
    
    endpoint_list.append(str(endname))
    eplist = json.dumps(endpoint_list,indent=1)
    fp.write(eplist)
    fp.close()


if __name__ == '__main__':
    
    logger = logging.getLogger() 
    logger.setLevel(logging.DEBUG)
    
    main()