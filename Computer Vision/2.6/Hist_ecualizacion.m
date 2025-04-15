pkg load image;
clear all;
close all;
clc;

imagen = imread('perritos.jpg');

if size(imagen, 3) == 3
    imagen_gris = rgb2gray(imagen);
else
    imagen_gris = imagen;
end

% Ecualiza el histograma de la imagen
imagen_ecualizada = histeq(imagen_gris);


figure;
subplot(2,2,1); imshow(imagen_gris); title('Imagen original');
subplot(2,2,2); imhist(imagen_gris); title('Histograma');
subplot(2,2,3); imshow(imagen_ecualizada); title('Imagen resultante');
subplot(2,2,4); imhist(imagen_ecualizada); title('Histograma resultante');





