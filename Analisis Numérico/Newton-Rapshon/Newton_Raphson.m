close all;
clear all;
clc all;

pkg load symbolic
syms x

% ejemplo 1: x^3-x-1
% ejemplo 2: 5*x^3+4*x^2+3*x+2

f_x = input('Ingrese la función: ', 's');
f = str2func(['@(x)', f_x])
g = function_handle(diff(f(x)));
disp(g);

x1 = input('Ingrese el valor inicial. x = ');

n = 15;
error = 0.5*10^(2-n)
error_aprox = 1;

for i = 1:100
  x_anterior = x1;
  x1 = x_anterior - (f(x_anterior)/g(x_anterior));

    error_aprox = abs((x1-x_anterior)/x1)*100;
    if error_aprox < error
      break
    endif

    printf('%i\t %.12f\t %.12f\t %.12f\n', i, x_anterior, x1, error_aprox)
 endfor
