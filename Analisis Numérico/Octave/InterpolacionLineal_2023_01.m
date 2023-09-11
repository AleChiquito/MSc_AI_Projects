clear all;
close all;
clc;

x0=1;
x1=2.5;
f_x0=log(x0);
f_x1=log(x1);

x=2;

f1_x= f_x0+(((f_x1-f_x0)*(x-x0))/(x1-x0));

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
plot(x0,f_x0,'bo','LineWidth',3);
plot(x1,f_x1,'bo','LineWidth',3);
plot(x,freal,'bo','LineWidth',3);

xline1 = [x0 x1];
yline1 = [f_x0 f_x1];
pl = line(xline1,yline1,'LineWidth',2);
pl.Color = 'red';
plot(x,f1_x,'ro','LineWidth',3);
Vv=freal;
Vaprox=f1_x;

Ev=((Vv-Vaprox)/Vv)*100


