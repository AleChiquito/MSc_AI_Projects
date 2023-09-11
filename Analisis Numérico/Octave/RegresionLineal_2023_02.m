clear all;
close all;
clc;
% x=[1 2 3 4 5 6 7];
% y=[0.5 2.5 2.0 4.0 3.5 6.0 5.5];

x=[1 2 3 4 5 6 7 8 9];
y=[1 1.5 2 3 4 5 8 10 13];

figure;
plot(x,y,'o','LineWidth',3);
grid on;

n=length(x);

sum_xi=sum(x.^1);
sum_xi2=sum(x.^2);

sum_yi=sum(y);
sum_xiyi=sum(x.*y);

M=[  n     sum_xi
   sum_xi  sum_xi2 ];

s=[ sum_yi
    sum_xiyi ];

resul=inv(M)*s

a0=resul(1);
a1=resul(2);

x_test=x(1):0.01:x(n);
%x_test=linspace(x(1),x(n),100);
y_test=a0+(a1*x_test);

hold on;
plot(x_test,y_test,'r','LineWidth',3);

title('Regresión Lineal usando mínimos cuadrados');
xlabel('x');
ylabel('y');

label1='Datos originales';
str1='Regresion Lineal';
str2=num2str(a0);
str12=' + ';
str3=num2str(a1);
str4='*x';
label2=strcat(str1,str2,str12,str3,str4);
legend(label1,label2);

media_y=sum(y)/n;
% Valor de St (PT5.3) en la pagina 454 del libro
% de Chapra en Español
% Chapra, S. C., Canale, R. P., Ruiz, R. S. G., Mercado, V. H. I., 
% Díaz, E. M., & Benites, G. E. (2011). 
% Métodos numéricos para ingenieros (Vol. 5, pp. 154-196). 
% New York, NY, USA: McGraw-Hill.

St=sum((y-media_y).^2);
Sr=sum((y-a0-a1.*x).^2);
r2=(St-Sr)/St;
r=sqrt(r2)

p = polyfit(x,y,1);
p
x1 = x(1):0.01:x(n);
y1 = polyval(p,x1);
figure
plot(x,y,'o','LineWidth',3)
hold on
grid on
plot(x1,y1,'LineWidth',3)
hold off

title('Regresión Lineal usando polyfit y polyval de MATLAB');
xlabel('x');
ylabel('y');
legend('Datos originales','Regresion Lineal polyfiy y polyval');





