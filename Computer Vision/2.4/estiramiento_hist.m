clear all;
close all;
clc;

Img1 = imread('car_dark.jpeg');
Img1 = im2double(Img1);

figure;
subplot(2,2,1); imshow(Img1); title('Imagen original');
subplot(2,2,2); imhist(Img1); title('Histograma');

m = 0;
M = 0.2;
ImgRes = ((Img1-m)*1.0/(M-m));
subplot(2,2,3); imshow(ImgRes); title('Imagen resultante');
subplot(2,2,4); imhist(ImgRes); title('Histograma resultante');

#imwrite(ImgRes, "Car_light.jpeg");


