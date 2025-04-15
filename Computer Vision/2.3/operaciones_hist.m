pkg load image;
clear all;
close all;
clc;

Img1 = imread('image.png');
Img1 = im2double(Img1);


Img1_const = 0;
figure;
for i=0: 0.2 :1
    Img1_const = Img1 + i;
    subplot(1,2,1); imshow(Img1_const); title('Imagen original - Suma');
    subplot(1,2,2); imhist(Img1_const); title('Histograma');
    pause(2);
 endfor

Img1_const = 0;
figure;
for i=0: 0.2 :1
    Img1_const = Img1 - i;
    subplot(1,2,1); imshow(Img1_const); title('Imagen original - Resta');
    subplot(1,2,2); imhist(Img1_const); title('Histograma');
    pause(2);
 endfor

 %Multiplicación: Se satura la imagen al multiplicar
Img1_const = 0;
figure;
for i=0: 0.1 :1
    Img1_const = Img1 * i;
    subplot(1,2,1); imshow(Img1_const); title('Imagen original - Multiplicación');
    subplot(1,2,2); imhist(Img1_const); title('Histograma');
    pause(2);
 endfor

%Division: Se obscurece la imagen
Img1_const = 0;
figure;
for i=0: 0.1 :1
    Img1_const = Img1 / i;
    subplot(1,2,1); imshow(Img1_const); title('Imagen original - División');
    subplot(1,2,2); imhist(Img1_const); title('Histograma');
    pause(2);
 endfor
