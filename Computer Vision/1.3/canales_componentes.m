pkg load image;
clear all;
close all;
clc;

Img1 = imread('rgb.jpeg');
Img1 = im2double(Img1);
%figure original
figure,imshow(Img1);

Img1_red = Img1(:,:,1);
Img1_green = Img1(:,:,2);
Img1_blue = Img1(:,:,3);

%figure de componentes
figure;
subplot(1,3,1); imshow(Img1_red); title('Componente Rojo');
subplot(1,3,2); imshow(Img1_green); title('Componente Verde');
subplot(1,3,3); imshow(Img1_blue); title('Componente Azul');

%figure suma de componentes
ImgSumaComponentes = Img1_red + Img1_blue + Img1_green;
figure;
imshow(ImgSumaComponentes); title("Suma de componentes");

ImgColorBlack = zeros(size(Img1));
ImgColorBlack(:,:,1) = Img1_red;
ImgColorBlack(:,:,2) = Img1_green;
ImgColorBlack(:,:,3) = Img1_blue;

ImgRed= zeros(size(Img1));
ImgRed(:,:,1) = Img1_red;
ImgRed(:,:,2) = 0;
ImgRed(:,:,3) = 0;

ImgGreen= zeros(size(Img1));
ImgGreen(:,:,1) = 0;
ImgGreen(:,:,2) = Img1_green;
ImgGreen(:,:,3) = 0;

ImgBlue= zeros(size(Img1));
ImgBlue(:,:,1) = 0;
ImgBlue(:,:,2) = 0;
ImgBlue(:,:,3) = Img1_blue;

%figure de canales
figure;
subplot(1,3,1); imshow(ImgRed); title('Canal Rojo');
subplot(1,3,2); imshow(ImgGreen); title('Canal Verde');
subplot(1,3,3); imshow(ImgBlue); title('Canal Azul');

%figure de suma de canales
ImgSumaCanales = ImgRed + ImgGreen + ImgBlue;
figure;
imshow(ImgSumaCanales); title("Suma de Canales");
