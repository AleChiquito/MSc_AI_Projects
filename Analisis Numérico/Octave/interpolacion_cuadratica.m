close all;
clear all;
clc;


x0 = 1;
x1 = 4;
x2 = 6;

x = 2;

f_x0=log(x0);
f_x1=log(x1);
f_x2=log(x2);

xres=x0:0.01:x1;
fres=log(xres);
freal=log(x);

figure;

plot(xres,fres,'LineWidth',3);
title('Interpolacion Lineal de f(x)=ln(x)');
xlabel('x');
ylabel('ln(x)');
grid on;
hold on;


b0 = f_x0;
b1 = (f_x1-f_x0)/(x1-x0);
b2 = (((f_x2-f_x1)/(x2-x1))-((f_x1-f_x0)/(x1-x0)))/(x2-x0);

a0 = b0-(b1*x0)+(b2*x0*x1);
a1 = b1-(b2*x0)-(b2*x1);
a2 = b2;

x_test = x0:0.01:x2;
f2_x = a0+a1*x_test+a2*(x_test.^2);

hold on;
f2_x_test =
plot(x_test,f2_x,'r','LineWidth',3);
plot(x,f2_x_test,'r','LineWidth',3);





