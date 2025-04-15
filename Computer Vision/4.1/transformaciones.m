pkg load image;
clear all;
close all;
clc;

A=imread('chica_mini.png');
A=im2double(A);

mask = [-1 -1 -1
        -1 8 -1
        -1 -1 -1];
a = 5;

mask2 = [0 -a -0
        -a ((4*a)+1) -a
        0 -a 0];

R1 = imresize(A, 10, 'nearest');

R1P(:,:,1) = conv2(R1(:,:,1), mask2, 'same');
R1P(:,:,2) = conv2(R1(:,:,2), mask2, 'same');
R1P(:,:,3) = conv2(R1(:,:,3), mask2, 'same');

figure,
subplot(1,2,1); imshow(R1); title("Imagen ampliada x10");
subplot(1,2,2); imshow(R1P); title("Imagen ampliada - Vecinos");

R2 = imresize(A, 10 , 'bilinear');

R2P(:,:,1) = conv2(R2(:,:,1), mask2, 'same');
R2P(:,:,2) = conv2(R2(:,:,2), mask2, 'same');
R2P(:,:,3) = conv2(R2(:,:,3), mask2, 'same');

figure,
subplot(1,2,1); imshow(R2); title("Imagen ampliada x10");
subplot(1,2,2); imshow(R2P); title("Imagen ampliada - Bilineal");

R3 = imresize(A, 10 , 'bicubic');

R3P(:,:,1) = conv2(R3(:,:,1), mask2, 'same');
R3P(:,:,2) = conv2(R3(:,:,2), mask2, 'same');
R3P(:,:,3) = conv2(R3(:,:,3), mask2, 'same');

figure,
subplot(1,2,1); imshow(R3); title("Imagen ampliada x10");
subplot(1,2,2); imshow(R3P); title("Imagen ampliada - Bicúbica");
