from xml.dom import minidom


def calculates_retirement(years=30, interest=.1188, contribution=10_000, jb=1000):
    root = minidom.Document()
    xml = root.createElement("retirements")
    root.appendChild(xml)

    starting_balance = 1000
    for i in range(1, years + 1):
        current_year = root.createElement("year")
        current_year.setAttribute("1_no", str(i))


        current_year.setAttribute("2_startingBalance", str(starting_balance))
        interest_payment = starting_balance * interest
        current_year.setAttribute("3_startingBalance", str(interest_payment ))
        end_od_year_balance = starting_balance + interest_payment
        current_year.setAttribute("4_startingBalance", str(end_od_year_balance))

        starting_balance = end_od_year_balance + contribution
        xml.appendChild(current_year)


    xml_str = root.toprettyxml()
    print(xml_str)

    with open("retirement.xml", "w") as f:
        f.write(xml_str)

calculates_retirement(40)