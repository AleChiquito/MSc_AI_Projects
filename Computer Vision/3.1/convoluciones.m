pkg load image;
clear all;
close all;
clc;

tic;

examinar1=strcat('egipt.jpg');

A=imread(examinar1);
A=im2double(A);

kerner55 = ones(5,5);
[kx, ky] = size(kerner55);
k55 = kerner55/(kx*ky);

kerner11 = ones(11,11);
[kx, ky] = size(kerner11);
k11 = kerner11/(kx*ky);

kerner21 = ones(21,21);
[kx, ky] = size(kerner21);
k21 = kerner21/(kx*ky);

kernerHor = [1 1 1 1 1];
[kx, ky] = size(kernerHor);
k5 = kernerHor/(kx*ky);

kernerVer = [1
             1
             1
             ];
[kx, ky] = size(kernerVer);
k6 = kernerVer/(kx*ky);

R1 = zeros(size(A));
R2 = zeros(size(A));
R3 = zeros(size(A));
R4 = zeros(size(A));

R1(:,:,1) = conv2(A(:,:,1),k55, 'same');
R1(:,:,2) = conv2(A(:,:,2),k55, 'same');
R1(:,:,3) = conv2(A(:,:,3),k55, 'same');

R2(:,:,1) = conv2(A(:,:,1),k11, 'same');
R2(:,:,2) = conv2(A(:,:,2),k11, 'same');
R2(:,:,3) = conv2(A(:,:,3),k11, 'same');

R3(:,:,1) = conv2(A(:,:,1),k21, 'same');
R3(:,:,2) = conv2(A(:,:,2),k21, 'same');
R3(:,:,3) = conv2(A(:,:,3),k21, 'same');

R4(:,:,1) = conv2(A(:,:,1),k5, 'same');
R4(:,:,2) = conv2(A(:,:,2),k5, 'same');
R4(:,:,3) = conv2(A(:,:,3),k5, 'same');

R5(:,:,1) = conv2(A(:,:,1),k6, 'same');
R5(:,:,2) = conv2(A(:,:,2),k6, 'same');
R5(:,:,3) = conv2(A(:,:,3),k6, 'same');

figure;
subplot(221);imshow(A);title('Imagen Original');
subplot(222);imshow(R1);title('Máscara 5x5');
subplot(223);imshow(R2);title('Máscara 11x11');
subplot(224);imshow(R3);title('Máscara 21x21');

figure;
subplot(211);imshow(R4);title('Media Horizontal');
subplot(212);imshow(R5);title('Media Vertical');

toc;

