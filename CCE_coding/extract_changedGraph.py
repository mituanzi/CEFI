# from func_parser import getCGs,myfilter
from extract_graph import get_changed_graph
import json

"""
	according to the startname, original_graph and related_dict, we can draw a graph whose 
	edges will be added weight, and the loop will be processed too.
"""
def extract_related_changedGraph(related_dict_json,edges_json,startname):
	# filename='../codes/notes.c'
	# tmp_dict,funcNameList = getCGs(filename)
	# invoke_dict = myfilter(tmp_dict,funcNameList)
	
	with open(related_dict_json,'r') as f:
	 	related_dict=json.load(f)
	
	# if original_graph don't have loop, then, when this function is called, recursion is set to False
	get_changed_graph(related_dict,startname,edges_json,recursion=False)
	logging.debug('The file edges.json is produced.')

if __name__=='__main__':
	
	extract_related_changedGraph(related_dict_json,edges_json,startname)
	