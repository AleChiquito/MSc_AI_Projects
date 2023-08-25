close all;
clear all;
clc;

x0 = 1;
f_x0 = log(x0);
x1 = 6;
f_x1 = log(x1);

x = 2;
f_x_real = log(2)
f1_x = f_x0 + ((f_x1 - f_x0) / (x1 - x0)) * (x-x0)


x_test = (x0:0.01:x1)
y_test = (log(x_test))

figure;
plot(x_test, y_test, 'LineWidth',3)
title('Interpolación Lineal')
xlabel('X')
ylabel('Log (X)')

hold on;
grid on;
plot(x0, f_x0,'red','LineWidth',3)
plot(x1, f_x1,'red','LineWidth',3)
plot(x, f_x_real,'red','LineWidth',3)





