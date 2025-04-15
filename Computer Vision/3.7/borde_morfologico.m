clear all;
close all;
clc;

ImgOrg=imread('celulas.png');

if length(size(ImgOrg)) == 3;
  ImgOrg = rgb2gray(ImgOrg);
end;

ImgOrgBin = im2bw(ImgOrg);

%figure,
%imshow(ImgOrg);title("Imagen Original");

str1 = ones(3,3);
%str1 = [0 0 0
%        1 0 1
%        1 0 1];

ImgDil = imdilate(ImgOrgBin, str1);

ImgFinal = ImgDil - ImgOrgBin;

ImgSkel = bwmorph(ImgOrgBin, 'skel', Inf);

figure,
subplot(1,3,1); imshow(ImgOrg); title("Imagen Original (B)");
subplot(1,3,2); imshow(ImgFinal); title("Borde Morfologico [ (B + E) - B ]");
subplot(1,3,3); imshow(ImgSkel); title("Skeleton");
