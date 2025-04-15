%%%%% Las imagenes deben tener el mismo tamaño %%%%%%
%[ax ay az] = size(A);
%B= imresize(B,[ax ay]);
pkg load image;
clear all;
close all;
clc;


A=imread('iglesia_color.jpg');
B=imread('chico_color.jpg');
B= resize(B, size(A));

subplot(2,5,1); imshow(A); title("Imagen A");
subplot(2,5,2); imshow(B); title("Imagen B");
subplot(2,5,3); imshow(bitand(A,B)); title("A and B");
subplot(2,5,4); imshow(bitor(A,B)); title("A or B");
subplot(2,5,5); imshow(bitxor(A,B)); title("A Xor B");


A=im2double(A);
A = rgb2gray(A);

B=im2double(B);
B = rgb2gray(B);

subplot(2,5,6); imshow(A); title("Imagen A");
subplot(2,5,7); imshow(B); title("Imagen B");
subplot(2,5,8); imshow(bitand(A,B)); title("A and B");
subplot(2,5,9); imshow(bitor(A,B)); title("A or B");
subplot(2,5,10); imshow(bitxor(A,B)); title("A Xor B");




