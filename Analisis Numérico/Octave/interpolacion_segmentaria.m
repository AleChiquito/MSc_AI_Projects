clear all;
close all;
clc;

x=[3.0 4.5 7.0 9.0];
f_x=[2.5 1.0 2.5 0.5];

figure;
plot(x,f_x,'o','LineWidth',3)

m0 = (f_x(2) - f_x(1)) / (x(2)-x(1));
x_test0 = x(1):0.01:x(2);
f_x_test0 = f_x(1) + (m0 * (x_test0 - x(1)));

hold on;
plot(x_test0,f_x_test0,'r','LineWidth',2)
