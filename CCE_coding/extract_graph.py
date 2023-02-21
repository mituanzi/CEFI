from graphviz import Digraph
import json
import logging
from table_generate import table_generate

class Node(object):

	def __init__(self, name, depth,visit=False):
		self.name = name
		self.children = set()
		self.depth = depth
		self.visit = visit
		self.numCC=0
		self.arrive_dest = False

	def get_children(self):
		return self.children

	def set_depth(self,depth):
		self.depth = depth

	def get_depth(self):
		return self.depth

	def add_child(self,child):
		self.children.add(child)

	def set_numCC(self,numCC):
		self.numCC=numCC
	
	def get_numCC(self):
		return self.numCC
	
	def set_arrive(self, flag):
		self.arrive_dest = flag
	
	def get_arrive(self):
		return self.arrive_dest


"""
	in graph_dict ==> have visited
	find loop path
"""
def find_recursion(invoke_dict,p_name,c_name,visited):
	if c_name in visited:
		return False
	try:
		c_childs = invoke_dict[c_name]
	except Exception as e:
		return False

	if p_name in c_childs:
		return True
	else:
		visited.add(c_name)
		for child in c_childs:
			if  find_recursion(invoke_dict,p_name,child,visited):
				return True
		return False

"""
	when the invoke_dict is gotten, construct the original graph from name
"""
def construct_original_graph(invoke_dict, name, node_dict):
	p_node = node_dict[name]
	if p_node.visit:
		logging.debug('debug by fdl ==> {} is visited'.format(name))
		return
	try:
		childs = invoke_dict[name]
	except Exception as e:
		return

	for child in childs:
		if child in node_dict:
			p_node.add_child(node_dict[child])
		else:
			c_node = Node(child, p_node.get_depth()+1)			
			node_dict[child] = c_node
			p_node.add_child(c_node)

	p_node.visit =True
	logging.debug('debug by fdl==>{} is visited: {}'.format(p_node.name,p_node.visit))
	for child in childs:
		construct_original_graph(invoke_dict,child,node_dict)

def construct_changed_graph(invoke_dict, name, node_dict, ref_dict):
	p_node = node_dict[name]
	if p_node.visit:
		return
	try:
		childs = invoke_dict[name]
	except Exception as e:
		return

	for child in childs:
		if child not in ref_dict:
			ref_dict[child]=[]
		if child in node_dict:
			visited=set()
			loop = find_recursion(invoke_dict, name, child, visited)
			if loop and node_dict[child].get_depth() <= node_dict[name].get_depth():
				node_dict['dummy'].add_child(node_dict[child])
				ref_dict[child].append('dummy')
			else:
				p_node.add_child(node_dict[child])
				ref_dict[child].append(name)
		else:
			c_node = Node(child, p_node.get_depth()+1)
			node_dict[child] = c_node
			p_node.add_child(c_node)
			ref_dict[child].append(name)

	p_node.visit =True
	for child in childs:
		construct_changed_graph(invoke_dict,child,node_dict,ref_dict)

"""
	construct a series of Nodes, start from name.
	changed: if the graph is original, the egde haven't added weight, then, changed=False
	return node_dict, node_dict: key is the name of node, value is the node
	return ref_dict, ref_dict: key is the children node(called func), value is the parent node(calling func)
"""
def construct(invoke_dict,changed=False,name="main"):
	node_dict = {}
	root = Node(name,1)
	
	node_dict[name] = root

	if not changed:
		construct_original_graph(invoke_dict,name,node_dict)
		return node_dict
	else:
		ref_dict={}
		dummy = Node('dummy',-1,True)
		node_dict['dummy'] = dummy
		construct_changed_graph(invoke_dict,name,node_dict,ref_dict)
		return node_dict,ref_dict

"""
	get the number of calls to the specific node
"""
def get_child_count(invoke_dict,p_name,c_name):
	the_list = invoke_dict[p_name]
	count = 0
	for item in the_list:
		if item == c_name:
			count += 1
	return count

"""
	start with the root--node, and draw a graph
	if there is a loop, the return arrow would be set to red
"""
def draw_original_graph(G, node, graph_dict, invoke_dict, recur_flag):
	g = G
	if not node.visit:
		return 
	else:
		node.visit = False

	if node.name not in graph_dict:
		g.node(name=node.name)
		graph_dict[node.name] = True

	for child in list(node.get_children()):
		count = get_child_count(invoke_dict,node.name,child.name)
		if child.name in graph_dict:
			visited = set()
			loop = find_recursion(invoke_dict,node.name,child.name,visited)
			if loop:
				for i in range(0,count):
					g.edge(node.name,child.name,color='red')
					recur_flag[0] = True
			else:
				for i in range(0,count):
					g.edge(node.name,child.name)
		else:
			g.node(name=child.name)
			graph_dict[child.name] = True
			for i in range(0,count):
				g.edge(node.name,child.name)

	for child in list(node.get_children()):
		draw_original_graph(G,child,graph_dict,invoke_dict,recur_flag)

def draw_changed_graph(G, node, graph_dict, invoke_dict,edges):
	g = G
	if not node.visit:
		return 
	else:
		node.visit = False

	if node.name not in graph_dict:
		g.node(name=node.name,label='{}|{}'.format(node.name,node.numCC))

	for child in list(node.get_children()):
		if child.name not in graph_dict:
			g.node(name=child.name,label='{}|{}'.format(child.name,child.numCC))
			graph_dict[child.name] = True
		count = get_child_count(invoke_dict,node.name,child.name)
		for i in range(0,count):
			g.edge(node.name,child.name,label='+{}'.format(edges[node.name,child.name][i]))

	for child in list(node.get_children()):
		draw_changed_graph(G,child,graph_dict,invoke_dict,edges)


def __search_path_recursive(node, target_name,node_visit):

	if not node.visit:
		return node.get_arrive()
	node.visit = False
	if node.name == target_name:
		node.set_arrive(True)
		node_visit.append(node.name)
		return True
	children = node.get_children()
	if len(children) == 0:
		return node.get_arrive()
	result = False
	for child in children:
		t_result = __search_path_recursive(child,target_name,node_visit)
		result |= t_result
	if result == True:
		node_visit.append(node.name)
	node.set_arrive(result)
	return result

"""
	according to relationship in the invoke_dict, find all calling relationship from startname to endname.
	store all functions and their calling relationships from startname to endname in file related_dict_json
"""
def search_path(startname,endname,invoke_dict,related_dict_json):
	node_dict = construct(invoke_dict,name=startname) 
	root = node_dict[startname]
	logging.debug('The number of defined functions in the project:{}'.format(len(node_dict.keys())))
	print('The visit feature of visit:',root.visit)

	node_visit = list()
	result = __search_path_recursive(node=root, target_name=endname, node_visit=node_visit)
	
	s = set(node_visit)

	related_dict = {}
	for func in s:
		invoke_funcs = invoke_dict[func]
		for item in invoke_funcs:
			if item in node_visit:
				try:
					related_dict[func].append(item)
				except Exception as e:
					related_dict[func] = [item]

	fp = open(related_dict_json,"w")
	jsString = json.dumps(related_dict,indent=1)
	fp.write(jsString)
	fp.close()

	return related_dict


"""
	get the original graph
"""
def get_original_graph(invoke_dict,startname,recur_flag):
	graph_dict = {}
	G = Digraph('./Out/original_graph')
	node_dict = construct(invoke_dict,changed=False,name=startname)  #node_dict: key is the name of node, value is the node
	root=node_dict[startname]
	draw_original_graph(G, root, graph_dict, invoke_dict, recur_flag)
	G.render('./Out/original_graph',view=False)

"""
	annotate func with the number of conntexts
"""
def annotate_node(ref_dict,func,startname,recursion=False,numCC=dict()):
	tmp='dummy' if recursion else startname
	if func==tmp:
		numCC[func]=1
	else:
		numCC[func]=0
		for predecess in ref_dict[func]:
			numCC[func]+=annotate_node(ref_dict,predecess,startname,recursion,numCC=dict())
	return numCC[func]

"""
	annotate every function with the number of contexts
"""
def annotate(ref_dict,node_dict,startname,recursion=False):
	if not recursion:
		t_node=node_dict[startname]
	else:
		t_node=node_dict['dummy']
	t_node.set_numCC(1)
	for key in ref_dict:
		k_node=node_dict[key]
		k_node.set_numCC(annotate_node(ref_dict,key,startname,recursion))

"""
	annotate every edge with weighting
"""
def annotate_edge(ref_dict,startname,recursion):
    edges=dict()
    for called_func in ref_dict:
        s=0
        for calling_func in ref_dict[called_func]:
            if (calling_func,called_func) not in edges:
                edges[calling_func,called_func]=list()
            edges[calling_func,called_func].append(s)
            s+=annotate_node(ref_dict,calling_func,startname,recursion)
    return edges  

"""
	save the idweights to edges.json
"""
def writeToJson(edges,edges_json):
	relations=dict()
	relations["edges_id"]=list()
	# relations["edges_id"]=set()
	
	edge_id=dict()
	edge_id["callingName"]="None"
	edge_id["calledFunc"]=list()
	relations["edges_id"].append(edge_id)

	for k in edges:	
		tmp=dict()
		tmp["calledName"]=k[1]
		tmp["idweight"]=edges[k]

		tag=0
		for i in relations["edges_id"]:
			if k[0]==i["callingName"]:
				i["calledFunc"].append(tmp)
				tag=1
				break

		if tag==0:
			tmp_edge_id=dict()
			tmp_edge_id['callingName']=k[0]
			tmp_edge_id["calledFunc"]=list()
			tmp_edge_id["calledFunc"].append(tmp)
			relations["edges_id"].append(tmp_edge_id)

	with open(edges_json,'w') as f:
		json.dump(relations,f,indent=1)

"""
	according to the invoke_dict, get the changed graph from the startname, 
	if the graph contain loop, set the recursion->True
"""
def get_changed_graph(invoke_dict,startname,endname,edges_json,recursion=False):
	graph_dict = {}
	G = Digraph('./Out/changed_graph')

	node_dict,ref_dict = construct(invoke_dict,changed=True,name=startname)  #node_dict: key is the name of node, value is the node
	root=node_dict[startname]
	dummy=node_dict['dummy']
	if recursion:
		dummy.add_child(root)
		ref_dict[startname]=['dummy']
		for child in list(dummy.get_children()):
			while 'dummy' in ref_dict[child.name]:
				ref_dict[child.name].remove('dummy')
			ref_dict[child.name].insert(0,'dummy')
	annotate(ref_dict,node_dict,startname,recursion)
	edges=annotate_edge(ref_dict,startname,recursion)

	writeToJson(edges,edges_json)

	draw_changed_graph(G, root, graph_dict, invoke_dict,edges)
	if recursion:
		for child in list(dummy.get_children()):
			G.edge(dummy.name,child.name,label='+{}'.format(edges[dummy.name,child.name][0]),color='red')

	G.render('./Out/changed_graph',view=False)

	# table_generate(ref_dict,node_dict)

	target = node_dict[endname]
	return target.get_numCC()

if __name__ == '__main__':
	with open('.\\parser\\invoke.json','r') as infile:
		invoke_dict = json.loads(infile.read())
	get_original_graph(invoke_dict)
	