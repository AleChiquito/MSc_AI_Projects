%función exponencial

clear all;
close all;
clc;

resultado = 0;

function expo(lim, x)
  for i=0:lim;
    resultado += ((x.^i)/factorial(x));
   end
endfunction


resultado = expo(10, 2);

print(resultado)
