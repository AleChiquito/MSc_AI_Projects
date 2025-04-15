pkg load image;
clear all;
close all;
clc;

imagen = imread('simpson.jpg');


canal_R = imagen(:, :, 1);
canal_G = imagen(:, :, 2);
canal_B = imagen(:, :, 3);


figure;

% Calcular y mostrar el histograma para el canal RG
subplot(1, 3, 1);
hist([canal_R(:); canal_G(:)], 256, 'FaceColor', 'm');
title('Histograma de RG');
xlabel('Intensidad');
ylabel('Frecuencia');

% Calcular y mostrar el histograma para el canal RB
subplot(1, 3, 2);
hist([canal_R(:); canal_B(:)], 256, 'FaceColor', 'g');
title('Histograma de RB');
xlabel('Intensidad');
ylabel('Frecuencia');

% Calcular y mostrar el histograma para el canal GB
subplot(1, 3, 3);
hist([canal_G(:); canal_B(:)], 256, 'FaceColor', 'b');
title('Histograma de GB');
xlabel('Intensidad');
ylabel('Frecuencia');

