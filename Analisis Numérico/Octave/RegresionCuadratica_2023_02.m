clear all;
close all;
clc;

% hold off;
% x=[1 2 3 4 5 6 7];
% y=[0.5 2.5 2.0 4.0 3.5 6.0 5.5];

x=[1 2 3 4 5 6 7 8 9];
y=[1 1.5 2 3 4 5 8 10 13];



n=length(x);
figure
plot(x,y,'o','LineWidth',3);
grid on;
hold on;


sum_xi=sum(x.^1);
sum_xi2=sum(x.^2);
sum_xi3=sum(x.^3);
sum_xi4=sum(x.^4);

sum_yi=sum(y);
sum_xiyi=sum(x.*y);
sum_xi2yi=sum((x.^2).*y);

M=[   n    sum_xi   sum_xi2
   sum_xi  sum_xi2  sum_xi3
   sum_xi2 sum_xi3  sum_xi4];

b=[sum_yi
   sum_xiyi
   sum_xi2yi];

resul=inv(M)*b;
a0=resul(1);
a1=resul(2);
a2=resul(3);

x_aprox=x(1):(x(n)-x(1))/100:x(n);
y_aprox=a0+a1*x_aprox+a2*(x_aprox.^2);

hold on;
plot(x_aprox,y_aprox,'r','LineWidth',3);
xlabel('x');
ylabel('y');
title('Regresion cuadratica (y=a_0+a_1*x+a_2*x^2)');

legend('puntos (x,y)','aproximacion');

media_y=sum(y)/n;
% Valor de St (PT5.3) en la pagina 454 del libro
% de Chapra en Español
% Chapra, S. C., Canale, R. P., Ruiz, R. S. G., Mercado, V. H. I., 
% Díaz, E. M., & Benites, G. E. (2011). 
% Métodos numéricos para ingenieros (Vol. 5, pp. 154-196). 
% New York, NY, USA: McGraw-Hill.

St=sum((y-media_y).^2);
Sr=sum((y-a0-a1.*x-a2.*(x.^2)).^2);
r2=(St-Sr)/St;
r=sqrt(r2)

p = polyfit(x,y,40);
p

x1 = x(1):0.01:x(n);
y1 = polyval(p,x1);
figure
plot(x,y,'o','LineWidth',3)
hold on
grid on
plot(x1,y1,'LineWidth',3)
xlabel('x');
ylabel('y');
hold off

title('Regresión cuadratica usando polyfit y polyval de MATLAB');
