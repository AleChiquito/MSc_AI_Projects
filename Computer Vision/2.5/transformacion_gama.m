pkg load image;
clear all;
close all;
clc;

Img1 = imread('image.png');
Img1 = im2double(Img1);

figure;
subplot(2,2,1); imshow(Img1); title('Imagen original');
subplot(2,2,2); imhist(Img1); title('Histograma');

%gamma = 0.5;

for gamma = 0: 0.2 : 4
  ImgRes = 1.0 *(Img1/1.0).^(1/gamma);
  subplot(2,2,3); imshow(ImgRes); title('Imagen original Resultante');
  subplot(2,2,4); imhist(ImgRes); title('Histograma Resultante');
  pause(0.5);
end
