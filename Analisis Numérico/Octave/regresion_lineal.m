clear all;
close all;
clc;

%Declarando los puntos de la gráfica
x = [1 2 3 4 5 6 7];
y = [0.5 2.5 2.0 4.0 3.5 6.0 5.5];

plot(x, y, 'o','LineWidth',3)
grid on;


n = length(x);

sum_xi = sum(x);
sum_xi2 = sum(x.^2);

sum_yi = sum(y);
sum_xiyi=sum(x.*y);

M = [n sum_xi
      sum_xi sum_xi2];

s = [sum_yi
    sum_xiyi];

r = inv(M)*s;

a0 = r(1);
a1 = r(2);

%Evaluando

x_test = x(1):0.01:x(n);
% x_test = linspace(x(1),x(n),100)

y_test = a0+(a1*x_test);

hold on;

plot (x_test, y_test, 'r', 'LineWidth', 3);
title('Regresión Lineal usando minimos cudrados');
xlabel('x');
ylabel('y');

str1 = 'Regresion Lineal: ';
str2 = num2str(a0);
str3 = num2str(a1);
str4 = '* x';
label2 = strcat(str1,str2,',',str3,str4);
legend('Datos originales', label2);

