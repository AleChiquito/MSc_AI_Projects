pkg load image;
clear all;
close all;
clc;

Img1 = imread('perritos.jpg');
Img1 = im2double(Img1);

X = zeros(512, 512);

MAXC = 255;
MINC = 0;

for Y = 1:512
    for X = 1:512
      if
        X(X, Y) = MAXC;
    end
end

