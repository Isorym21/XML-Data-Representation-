

import xml.etree.ElementTree as ET 

tree = ET.parse('32payments.xml')
root = tree.getroot()

def get_ss_payments():
    payment_list = []
    for child in root:
        code = child.attrib["code"]
        if code == "ss":
           age = float(child.attrib["age"])
           monthlySalary = float(child.attrib['monthlySalary'])
           payment_map = {"age": age, 'monthlySalary': monthlySalary}
           payment_list.append(payment_map)
           
    return payment_list


def calculate_payments(mp, rate):  
    s1 = mp[0]
    t1 = t2 = t3 = 0
    s2 = mp[1]

    yearly_rate = 1 + rate


    ss_payment_list = []

    for i in range (0,17):
        yearly_payment = mp [0]["monthlySalary"] * 12 * yearly_rate
        yearly_payment_2 = mp [1]["monthlySalary"] * 12 * yearly_rate
        yearly_payment_3 = mp [2]["monthlySalary"] * 12 * yearly_rate

        t1 = t1 + yearly_payment
        age = mp[0]["age"] + i
        if age >= 67:
            t2 = t2 + yearly_payment_2

        if age >= 71:
            t3 = t3 + yearly_payment_3
            
        #  x = {"age": age, "scenario1": t1, "scenario2": t2,"scenario3": t3}
        status = abs(t1 - t2)
        star2 = ""
        if status <= 15_000 and t2 != 0:
             star2 = "**"

        x = {"age": age, "scenarios": [t1, t2, t3], "status2nd": star2, "difference": status}
        ss_payment_list.append(x)  

    return ss_payment_list  

def comparison(rate = 0):
    results = get_ss_payments()
    payment_list = calculate_payments(results, rate)
    return payment_list


if __name__ == '__main__ ':    
     payments = comparison()
     for p in payments:
       print(p)
