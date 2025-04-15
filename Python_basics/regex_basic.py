import re 

pattern = '([]{4})([0-9]{6})([A-Z0-9]{3})'
string_to_test = 'LOCA921228'
result = re.match(pattern,string_to_test)

if result:
    print("REGEX aceptado")
else:
    print("REGEX no aceptado")