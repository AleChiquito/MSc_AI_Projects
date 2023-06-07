import re 
import numpy as np
import pandas as pd

pattern = '([A-Z]{4})([0-9]{6})([A-Z0-9]{3})'
string_to_test = 'LOCA9212282I7'
result = re.match(pattern,string_to_test)

if result:
    print("RFC aceptado")
else:
    print("RFC no aceptado")