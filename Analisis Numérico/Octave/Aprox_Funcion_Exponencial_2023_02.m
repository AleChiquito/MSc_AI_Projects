% clear all;
% close all;
% clc;
% 
% Vv=1.6497212707
% x=0.5;
% % 1 termino de la serie
% e_x=1;
% Va=e_x;
% 
% Aant=0;
% Ev=abs((Vv-Va)/Vv)*100;
% Aact=Va;
% Ea=abs((Aact-Aant)/Aact)*100;
% 
% % 2 termino de la serie
% e_x=1+x
% Va=e_x;
% Ev=abs((Vv-Va)/Vv)*100
% Aact=Va;
% Aant=1;
% Ea=abs((Aact-Aant)/Aact)*100%
% 
% % 3 terminos de la serie
% e_x=1+x+(x^2/factorial(2))

clear all;
close all;
clc;
format long;
tic
% Numero de terminos de la serie
n=10;
% Valor al cual se quiere aproximar la funcion exponencial
x=0.5;
% Valor verdadero
%Vv=exp(x);
Vv=1.648721270700128;
% 1a Aproximacion
Aant=0;
e_x=(x^0)/(factorial(0));
% % Aproximacion del valor del termino de la serie
Va=e_x;
Aact=e_x;
Aant=0;
% Error verdadero (Et)-> t = true
Et=abs(((Vv-Va)/Vv)*100);
% % Error aproximado (Ea)->  = approximate
Ea=abs(((Aact-Aant)/Aact)*100);
Es=(0.5)*10^(2-n);
for m=1:n-1
    Aant=Va;
    e_x=e_x+(x^m)/(factorial(m));
    Va=e_x;
    Aact=e_x;
    Et_new=abs((Vv-Va)/Vv)*100;
    Et=[Et,Et_new];
    Ea_new=abs((Aact-Aant)/Aact)*100;
    Ea=[Ea,Ea_new];
end
toc
tic
figure;
plot(Ea,'LineWidth',2);
title('Grafica del error');
xlabel('Numero de terminos de la serie');
ylabel('Porcentaje del error');
grid on;
hold on;
plot(Et,'r','LineWidth',2);
toc
e_x
Vv
