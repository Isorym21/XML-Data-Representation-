import xml.etree.ElementTree as ET 

tree = ET.parse('32payments.xml')
root = tree.getroot()

def get_ss_payments():
    list = []

    for child in root:
        code = child.attrib['code']
        if code == "ss":
           age = float(child.attrib['age'])
           monthly_salary = float(child.attrib['monthlySalary'])
           map = {"age": age, "monthlySalary": monthly_salary}
           list.append(map)

    return list 

results= get_ss_payments()

def calculate_payments(mp):
    s1 = mp[0]
    t1 = t2 = t3 = 0
    s2 = mp[1]

    for i in range (0,17):
        yearly_payment = mp [0]['monthlySalary'] * 12
        yearly_payment_2 = mp [1]['monthlySalary'] * 12
        yearly_payment_3 = mp [2]['monthlySalary'] * 12

        t1 = t1 + yearly_payment
        age = mp[0]["age"]+ 1
        if age>= 67:
            t2 = t2 + yearly_payment_2

        if age >=71:
            t3 = t3 + yearly_payment_3

        x = {"age": age, "m1": yearly_payment, "t1": t1, "t2": t2, "t3": t3}
        print(x)

calculate_payments(results)


get_ss_payments()
