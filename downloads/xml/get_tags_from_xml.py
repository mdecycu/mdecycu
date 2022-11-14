import xml.etree.ElementTree as ET
# load and parse the file
filename = 'tcexam_network_setting_cadlab.xml'
xmlTree = ET.parse(filename)
 
elemList = []
 
for elem in xmlTree.iter():
    elemList.append(elem.tag)
 
# now I remove duplicities - by convertion to set and back to list
elemList = list(set(elemList))
 
# Just printing out the result
print(elemList)
 
for i in elemList:
    print(i)