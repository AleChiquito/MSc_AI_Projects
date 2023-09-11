clear all;
close all;
clc;

% xi=0;
% xi1=1;
% 
% x=xi:0.01:xi1;
% 
% f_x=((-0.1)*(x.^4))+((-0.15)*(x.^3))+((-0.5)*(x.^2))+((-0.25)*(x.^1))+(1.2);
% 
% figure,
% plot(x,f_x,'LineWidth',3);
% title('Aproximacion de una funcion polinomial mediante series de Taylor');
% xlabel('x');
% ylabel('F(x)');
% grid on
% 
% syms f(x);
% f(x)= -0.1*x^4-0.15*x^3-0.5*x^2-0.25*x+1.2;
% f(0);
% x = [xi xi1];
% y = [f(0) f(0)];
% line(x,y,'Color','red','LineWidth',2)
% str1='f(x)=-0.1x^4-0.15x^3-0.5x^2-0.25x+1.2';
% str2='Aproximacion de orden 0'
% legend(str1,str2);


% Tercera función: Serie de Taylor - Polinomio
% Polinomio

syms x;
fx_poly = -0.1*(x^4) - 0.15*(x^3) - 0.5*(x^2) - 0.25*(x) + 1.2;

% Valor inicial
xi_poly = 0;

% Predecir el valor en xi+1
xi_1_poly = 1;

% Definimos la ecuación h (El incremento)
h_poly = xi_1_poly - xi_poly;

% Número de aproximaciones
n_poly = 10;
k_poly = 0;
polinomio_poly = 0;

% Calculamos los errores
Et_poly = [];
Er_poly = [];

% Valor verdadero = 0.200
Vv_poly = double(subs(fx_poly, xi_1_poly));
Ex1_poly = Vv_poly;
Va_poly = 0;

% Variables para la tabla
ite_poly = [];
derivadas_poly = [];
fx_1_poly = [];

while k_poly <= n_poly
    % Calculamos la derivada
    ite_poly = [ite_poly, k_poly];
    derivada_poly = diff(fx_poly, k_poly);
    derivadas_poly = [derivadas_poly, string(derivada_poly)];
    derivadax_0_poly = double(subs(derivada_poly, xi_poly));
    divisor_poly = factorial(k_poly);
    
    % Sustituimos la ecuación de Taylor
    fxi_1_poly = (derivadax_0_poly / divisor_poly) * (h_poly^k_poly);
    polinomio_poly = polinomio_poly + fxi_1_poly;
    fx_1_poly = [fx_1_poly, polinomio_poly];
    
    Ex0_poly = polinomio_poly;
    Va_poly = polinomio_poly;
    Et_new_poly = ((Vv_poly - Va_poly) / Vv_poly) * 100;
    Et_poly = [Et_poly, Et_new_poly];
    
    Er_new_poly = Ex1_poly - Ex0_poly;
    Er_poly = [Er_poly, Er_new_poly];
    k_poly = k_poly + 1;
end

tabla_poly = table(ite_poly.', derivadas_poly.', fx_1_poly.', Et_poly.')
tabla_poly.Properties.VariableNames = {'Orden n', 'Derivadas', 'f(x+1)', 'ea%'}

figure;
plot(Er_poly, 'LineWidth', 2);
title('Grafica del error - Polinomio');
xlabel('Numero de terminos de la serie');
ylabel('Porcentaje del error (%)');
grid on;
hold on;
legend('Error de truncamiento');

