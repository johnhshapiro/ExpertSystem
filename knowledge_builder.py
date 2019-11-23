import csv

with open('languages.csv', 'r') as data:
    reader = csv.reader(data)
    languages = list(reader)
prolog_output = open('knowledge_base.pl', 'w')

for language in languages[1:]:
    name = language[0].lower()
    paradigms = language[1].replace(' ','')
    type_strength = language[2]
    type_safety = language[3]
    type_expression = language[4]
    type_checking = language[5]
    garbage_collection = language[6]
    intended_use = language[7]
    prolog_output.write(f"language({name})  :- has_paradigms('{paradigms}'), type_strength('{type_strength} typing'), type_safety('type safety: {type_safety}'), type_expression('Type expression: {type_expression}'), type_checking('type checking: {type_checking}'), garbage_collection('garbage collection: {garbage_collection}'), intended_uses('{intended_use}').\n")


prolog_output.close()