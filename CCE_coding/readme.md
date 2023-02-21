1. input: startname, endname, invoke_dict_json
2. output: edges.json，path_num.json(store the number of paths, used to generator table later)
3. From this project, we give each a weight so that each path has a unique ID. In the result,
   each path can be uniquely represented.
4. CCE_main.py: We excute the file CCE_main.py, get the weight of each edge for guiding the subsequent instrumentation. And those information are stored in edges.json.
5. extract_graph.py: Some functions for building and drawing graphs，and CCE algorithm.
6. extract_origGraph.py: execute it alone, we can get the functions related with start func and end func and their calling relationships storing in `related_dict.json`. And we can get a calling graph associated with the start func and end func.
7. extract_changedGraph.py: execute it alone, we can give each edge in the related_dict.json a weight, store the calling relationship and the weights of each edge in file `edges.json`.
8. table_generate.py: This file runs separately. Its job is to tabular the dict stored in the path_num.

