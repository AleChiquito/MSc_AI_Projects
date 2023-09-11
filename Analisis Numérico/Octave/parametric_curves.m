clear all;
close all;
clc;

x = [-1 0 1 0 1];
y = [0 1 0.5 0 -1];

n = length(x);

%Comparar length de x vs y

figure;
plot(x,y,'bo','LineWidth',3);
grid on;

t = linspace(0,1,n);

% Se implementa spline/ netwon / Lagrange

