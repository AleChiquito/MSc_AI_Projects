pkg load image;
clear all;
close all;
clc;

Img_org = imread('simpson.jpg');
Img_org = im2double(Img_org);

figure;
subplot(1,2,1); imshow(Img_org); title('Imagen original');
subplot(1,2,2); imhist(Img_org); title('Histograma');


Img1_red = Img_org(:,:,1);
Img1_green = Img_org(:,:,2);
Img1_blue = Img_org(:,:,3);

%figure de componentes e histogramas
figure;
subplot(2,3,1); imshow(Img1_red); title('Componente Rojo');
subplot(2,3,2); imshow(Img1_green); title('Componente Verde');
subplot(2,3,3); imshow(Img1_blue); title('Componente Azul');
subplot(2,3,4); imhist(Img1_red); title('Hist. del componente rojo');
subplot(2,3,5); imhist(Img1_green); title('Hist. del componente verde');
subplot(2,3,6); imhist(Img1_blue); title('Hist. del componente azul');

%figure de escalas en grises
Img_gray = rgb2gray(Img_org);

figure;
subplot(1,2,1); imshow(Img_gray); title('Imagen original en escala de grises');
subplot(1,2,2); imhist(Img_gray); title('Histograma en escala de grises');


%figure de canales e histogramas

ImgRed= zeros(size(Img_org));
ImgRed(:,:,1) = Img1_red;
ImgRed(:,:,2) = 0;
ImgRed(:,:,3) = 0;

ImgGreen= zeros(size(Img_org));
ImgGreen(:,:,1) = 0;
ImgGreen(:,:,2) = Img1_green;
ImgGreen(:,:,3) = 0;

ImgBlue= zeros(size(Img_org));
ImgBlue(:,:,1) = 0;
ImgBlue(:,:,2) = 0;
ImgBlue(:,:,3) = Img1_blue;

%figure de canales
figure;
subplot(2,3,1); imshow(ImgRed); title('Canal Rojo');
subplot(2,3,2); imshow(ImgGreen); title('Canal Verde');
subplot(2,3,3); imshow(ImgBlue); title('Canal Azul');
subplot(2,3,4); imhist(ImgRed); title('Hist. del canal rojo');
subplot(2,3,5); imhist(ImgGreen); title('Hist. del canal verde');
subplot(2,3,6); imhist(ImgBlue); title('Hist. del canal azul');
