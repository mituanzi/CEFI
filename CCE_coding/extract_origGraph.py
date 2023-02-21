
from extract_graph import get_original_graph,search_path
import json
import logging

"""
	find the calling relationship from startname to endname; then,store it in the related_dict; 
	finally,draw a graph according to the related_dict.
	the related_dict.json is produced by this function, related_dict is stored in related_dict.json.
"""
def extract_related_origGraph(startname,endname,invoke_dict_json,recur_flag,related_dict_json):
	# filename='../codes/test1.c'
	# tmp_dict,funcNameList = getCGs(filename)
	# print(tmp_dict)
	# invoke_dict = myfilter(tmp_dict,funcNameList)
	
	
	with open(invoke_dict_json,'r') as f:
	  	invoke_dict=json.load(f)
	related_dict = search_path(startname,endname,invoke_dict,related_dict_json)
	logging.debug('The file related_dict.json is produced.')
	get_original_graph(related_dict,startname,recur_flag)
	return related_dict

if __name__=='__main__':
	logger = logging.getLogger() 
	logger.setLevel(logging.DEBUG) 

	extract_related_origGraph(startname,endname,invoke_dict_json,recur_flag,related_dict_json)
	
