import csv

def process_paradigms(data):
    paradigms = data[1].replace(' ','').lower().split(',')
    paradigm_string = ''
    for paradigm in paradigms:
        paradigm_string += (f"is_true('Will {paradigm} paradigm work?'), ")
    return paradigm_string

def process_garbage_colection(data):
    garbage = language[6].lower()
    if garbage == 'yes':
        return "is_true('Do you need built in garbage collection?'), "
    else:
        return ''

with open('languages.csv', 'r') as data:
    reader = csv.reader(data)
    languages = list(reader)
prolog_output = open('knowledge.pl', 'w')

lang_list = []

for language in languages[1:]:
    name = language[0].lower()
    lang_list.append(name)
    paradigms = process_paradigms(language)
    type_strength = language[2]
    type_safety = language[3]
    type_expression = language[4]
    type_checking = language[5]
    garbage_collection = process_garbage_colection(language)
    intended_use = language[7]
    prolog_output.write(f"{name} :- {paradigms}is_true('Do you need {type_strength} typing?'), is_true('Should it be type {type_safety}?'), is_true('Type declaration should be: {type_expression}'), is_true('Is {type_checking} type checking okay?'), {garbage_collection}is_true('Are you using it for {intended_use.replace(',', ' or ')}?').\n")



prolog_output.write("\n\n")
for lang in lang_list:
    prolog_output.write("guess({0}) :- {0}, !.\n".format(lang))
prolog_output.write("guess(unknown).")

prolog_output.close()