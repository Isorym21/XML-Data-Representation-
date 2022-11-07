import xml.etree.ElementTree as Et

tree = Et.parse('state.xml')
root = tree.getroot()
# Display all the states wth a population greater than 10_000_000.
for child in root:
    population = int(child.attrib["population2020"])
    if population > 10_000_000:
        print(child.attrib)