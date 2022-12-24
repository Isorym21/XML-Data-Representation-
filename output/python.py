
# Developer = Isory Santana
import xml.etree.ElementTree as ET

tree = ET.parse('w3.books.xml')
root = tree.getroot()


## just getting the data

def get_Bookinfo():
    get_Bookinfo_list = []
    total= 0
    average=0
    highest=0
    lowest=0
    count=0
    for child in root.findall('.//book'):
        price = child.find('price').text
        print(price)
        count +=1
        total = total + float(price)
        get_Bookinfo_list.append(float(price))
    highest = max(get_Bookinfo_list)
    lowest = min(get_Bookinfo_list)

    average= total / count



    #print(total)
    #print(average)
    #rint(highest)
    #print(lowest)
    return {"developer": "Santana, Isory","total":total,"Average": average,"Highest": highest,"lowest":lowest }





x= get_Bookinfo()
print(x)
