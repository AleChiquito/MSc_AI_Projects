import numpy as np
import matplotlib.pyplot as plt
import time
from math import e, factorial
from decimal import Decimal
from tabulate import tabulate

def round_to(float_num,decimal_prec):
    return eval("'{:." + str(int(decimal_prec)) + "f}'.format(" + str(float_num)+")")

def is_close(float_a,float_b,decimal_prec):
    if round_to(float_a,decimal_prec)== round_to(float_b,decimal_prec):
        return True
    return False
t1=time.time()
x=0.5
nc= 5;  #Num Cifras
sen=0;   # Valor incial

#print(x)

# Tolerancia
Es= 0.5e-5
print(Es)
Vv= 1.648721271
Aprox_ant=0
e_x=0
#print(e_x)
Ev= []
Ea= []
e_x= e_x + ((x**0)/factorial(0))
Aprox_Act= e_x
Ev += [abs((Vv-e_x)/Vv)*100]
#print(Ev)
Ea += [abs((Aprox_Act-Aprox_ant)/Aprox_Act)*100]
#print(Ea)
m=1
ErrVer=False



errores= [[1,Ev[0],Ea[0]]]
while ErrVer==False:
    if m ==10:
        print('temina aqui')
        break
    Aprox_ant= Aprox_Act
    e_x= e_x+((x**m)/factorial(m))
    Aprox_Act=e_x
    Ev_new= abs((Vv-e_x)/Vv)*100
    Ea_new= abs((Aprox_Act-Aprox_ant)/Aprox_Act)*100
    Ev += [Ev_new]
    Ea += [Ea_new]
    m +=1
    errores+=[[m,Ev_new,Ea_new]]
    #ErrVer= is_close(Es,Ev,nc)




numData=[]
numData +=[i+1 for i in range(m)]
##print(numData)
##print(Ev)
##print(Ea)
print('FUNCION f(x) = e^0.5')
print(tabulate(errores,headers=['iteracion','Error verdadero','Error Aproximado']))
# ==== Grafica Funcion Exp
plt.plot(numData,Ev,linestyle='dashed',label='Ev(%)')
plt.plot(numData,Ea,linestyle='dashed',label='Ea(%)')

plt.title('Comportamiento de Error Verdadero con Tolerancia')
plt.xlabel('Numero de Terminos de la serie')
plt.ylabel('Error(%)')
plt.legend()
plt.grid()

t2=time.time()


print('Tiempo de ejecucion = ', (t2-t1))

plt.show()


