import csv
with open('languages.csv', 'r') as data:
    reader = csv.reader(data)
    languages = list(reader)
prolog_output = open('expert.pl', 'w')

for language in languages:
    name = language[0].lower().replace(' ', '')
    type_safety = language[1]
    type_expression = language[2]
    type_checking = language[4]
    prolog_output.write(f"language({name})  :- is_true('has {type_safety} typing'), is_true('type declaration: {type_expression}'), is_true('type checking: {type_checking}').\n")