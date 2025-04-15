pkg load image;
clear all;
close all;
clc;

[im1, direc]=uigetfile({'*.bmp; *.jpg; *.png; *.dcm'});
examinar = strcat(direc,im1);

Img_org=imread(examinar);

Img_bin = im2bw(Img_org);

Img_gray = rgb2gray(Img_org);

figure,
subplot(1,3,1);imshow(Img_org);title("Image original");
subplot(1,3,2);imshow(Img_bin);title("Image Binaria");
subplot(1,3,3);imshow(Img_gray);title("Image Escala a grises");
