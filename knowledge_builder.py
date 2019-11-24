import csv

def process_paradigms(data):
    paradigms = data[1].replace(' ','').lower().split(',')
    paradigm_string = ''
    for paradigm in paradigms:
        paradigm_string += (f"is_{paradigm}('{paradigm}?'), ").replace('-','_')
    return paradigm_string

with open('languages.csv', 'r') as data:
    reader = csv.reader(data)
    languages = list(reader)
prolog_output = open('knowledge.pl', 'w')

for language in languages[1:]:
    name = language[0].lower()
    paradigms = process_paradigms(language)
    type_strength = language[2]
    type_safety = language[3]
    type_expression = language[4]
    type_checking = language[5]
    garbage_collection = language[6]
    intended_use = language[7]
    prolog_output.write(f"language({name})  :- {paradigms}type_strength('{type_strength} typing'), type_safety('type safety: {type_safety}'), type_expression('Type expression: {type_expression}'), type_checking('type checking: {type_checking}'), garbage_collection('garbage collection: {garbage_collection}'), intended_uses('{intended_use}').\n")


prolog_output.close()