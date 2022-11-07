import xml.etree.ElementTree as ET 


def convert_numbers(attrib, fields):
    for f in fields:
        attrib[f] = float(attrib[f])

    return 


def calculate_tax_paid(attrib):
    attrib["taxPaid"] = (attrib["end"]- attrib["start"]) *attrib["taxRate"]
    return

def get_tax_paid(status, salary):
    tree = ET.parse('marginal_tax.xml')
    root = tree.getroot()
    tax_list = []
    for child in root:
        convert_numbers(child.attrib, ("no", "end", "start", "taxRate"))
        if child.attrib["code"]== status and salary > child.attrib["start"]:
            calculate_tax_paid(child.attrib)
            tax_list.append(child.attrib)


    length = len(tax_list)
    last_row = tax_list[length - 1 ]
    last_row["end"]= salary
    calculate_tax_paid(last_row)

    return tax_list


def get_tax_paid_summary(status, salary):
    tax_list = get_tax_paid(status, salary)
    total = 0
    for x in tax_list:
        total = total + x["taxPaid"]

    percentage = total / salary 
    return {"taxList": tax_list, "taxPaid": total, "percentage": percentage}


    if __name__ == '__main__':
        tax_paid = get_tax_paid_summary("SM", 150_000)
        print("taxPaid : ", tax_paid)