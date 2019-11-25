import csv

def process_paradigms(data):
    paradigms = data[1].replace(' ','').lower().split(',')
    paradigm_string = '('
    all_paradigms = ['imperative', 'object-oriented', 'functional', 'logic']
    for paradigm in all_paradigms:
        paradigm_substr = (f"is_true('Will {paradigm} paradigm work?')")
        if paradigm in paradigms:
            paradigm_string += paradigm_substr
        else:
            paradigm_string += "not(" + paradigm_substr  + ")"
        paradigm_string += ", "
    return paradigm_string[:-2] + "), "

def process_safety(data):
    safety_string = ""
    if data is not "unsafe":
        safety_string +=  "is_true('Do you need strong type safety?')"
    if 'allowed' in data:
        safety_string +=  ";not(is_true('Do you need strong type safety?')))"
        safety_string = "(" + safety_string
    return "\n\t" + safety_string

def process_checking(data):
    check_string = "\n\t("
    check_types = data.split(',')
    if 'static' in check_types:
        not_open, not_close = "", ""
    else:
        not_open, not_close = "not(", ")"
    check_string += f"{not_open}is_true('Is static type checking okay?'){not_close};"
    if 'dynamic' in check_types:
        not_open, not_close = "", ""
    else:
        not_open, not_close = "not(", ")"
    check_string += f"{not_open}is_true('Is dynamic type checking okay?'){not_close})"
    return check_string
        
            

def process_garbage_collection(data):
    garbage_string = ""
    garbage = language[6].lower()
    if garbage == 'yes':
        garbage_string += "\n\tis_true('Do you need built in garbage collection?'), "
    if "Optional" in garbage:
        garbage_string += "\n\tis_true('Do you need optional garbage collection using external tools?'),"
    return garbage_string

def process_use(data):
    use_string = "\n\t"
    close = ""
    uses = data.split(',')
    if len(uses) > 1:
        use_string += "("
        close = ")"
    for use in uses:
        use_string += f"is_true('Are you building a(n) {use} program?');"
    use_string = use_string[:-1] + close
    return use_string

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
    type_safety = process_safety(language[3])
    type_expression = language[4]
    type_checking = process_checking(language[5])
    garbage_collection = process_garbage_collection(language)
    intended_use = process_use(language[7])
    prolog_output.write(f"{name} :- \n\t{paradigms}\n\tis_true('Do you need {type_strength} typing?')," +
                        f"{type_safety}," +
                        f"\n\tis_true('Should be type declaration be {type_expression}?')," +
                        f"{type_checking}, {garbage_collection}" +
                        f"{intended_use}.\n")



prolog_output.write("\n\n")
for lang in lang_list:
    prolog_output.write("guess({0}) :- {0}, !.\n".format(lang))

prolog_output.close()