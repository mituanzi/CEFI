import json
def html_head():
	s = """
	<!DOCTYPE html>
<html>
<head>
	<title>nnn</title>
</head>
<body>
<table border="1" width="50%" cellspacing="0" cellpadding="0" style="text-align: center;">
	<tr>
		<th colspan="2">FuncPairs</th> 
		<th rowspan="2">PathNum</th>
	</tr>
	<tr>
		<th>StartFunc</th>
		<th>EndFunc</th>
	</tr>
	"""
	return s

def html_tail():
	s = """
	</table>
	</body>
	</html>
	"""
	return s

def construct_row(startname,endname,num):
	html_content = "<tr><td rowspan=\"\">{}</td><td>{}</td><td>{}</td></tr>".format(startname,endname,num)
	return html_content

def html_body(num_dict):
    text = ""
    for k, v in num_dict.items():
        k_tu = tuple(eval(k))
        startname = k_tu[0]
        endname = k_tu[1]
        num = v
        print(startname,endname,num)
        text += construct_row(startname,endname,num)	
    return text

def table_generate(num_dict):
	html = html_head()
	html += html_body(num_dict)
	html += html_tail()
	fp = open("table.html",'w')
	fp.write(html)
	fp.close()	

if __name__ == '__main__':
    startname = 'RunMqttDemo'   # the name of start function
    endname = '_IotMqtt_ProcessSend'
    num = 7
    path_num =  '../files/path_num.json'
    with open(path_num,"r") as json_file:
        num_dict = json.load(json_file)
    table_generate(num_dict)


	# table_generate(ref_dict,node_dict)