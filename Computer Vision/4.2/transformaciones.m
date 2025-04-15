pkg load image;
clear all;
close all;
clc;

imagen = imread('iglesia.jpg');

mask = [-1 -1 -1
        -1 8 -1
        -1 -1 -1];

a = 5;
mask2 = [0 -a -0
        -a ((4*a)+1) -a
        0 -a 0];

img1 = imrotate(imagen, 10, 'bilinear', 'crop');
img2 = imrotate(imagen, -10, 'bilinear', 'crop');

R1 = imresize(imagen, 10, 'nearest');
R1P(:,:,1) = conv2(R1(:,:,1), mask2, 'same');
R1P(:,:,2) = conv2(R1(:,:,2), mask2, 'same');
R1P(:,:,3) = conv2(R1(:,:,3), mask2, 'same');


R2 = imresize(imagen, 10 , 'bilinear');
R2P(:,:,1) = conv2(R2(:,:,1), mask2, 'same');
R2P(:,:,2) = conv2(R2(:,:,2), mask2, 'same');
R2P(:,:,3) = conv2(R2(:,:,3), mask2, 'same');

R1P = imrotate(R1P, 10, 'bilinear', 'crop');
R2P = imrotate(R2P, -10, 'bilinear', 'crop');

subplot(2, 3, 1), imshow(imagen), title('Original');
subplot(2, 3, 2), imshow(img1), title('Rotada 10 grados');
subplot(2, 3, 3), imshow(img2), title('Rotada -10 grados');
subplot(2, 3, 4), imshow(R1P), title('Vecino próximo');
subplot(2, 3, 5), imshow(R2P), title('Interpolación bilineal');

