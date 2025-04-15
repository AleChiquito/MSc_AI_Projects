pkg load image;
clear all;
close all;
clc;


A=imread('chico.jpg');
A=im2double(A);

[ax ay az]=size(A);

R=zeros(size(A));

umbral=180/255;
for m=1:ax
    for n=1:ay
        for o=1:az
            if A(m,n,o)< umbral
                R(m,n,o)=0;
            else
                R(m,n,o)=1;
            end
        end
    end
end


Agris=rgb2gray(A);
umbral=42/255;

[ax,ay]=size(Agris);
R1=zeros(size(Agris));

for m=1:ax
    for n=1:ay
        if Agris(m,n)< umbral
            R1(m,n)=0;
        else
            R1(m,n)=1;
        end
    end
end

Agris=rgb2gray(A);
umbral=180/255;

[ax,ay]=size(Agris);
R2=zeros(size(Agris));

for m=1:ax
    for n=1:ay
        if Agris(m,n)< umbral
            R2(m,n)=0;
        else
            R2(m,n)=1;
        end
    end
end

figure,
subplot(1,3,1); imshow(Agris); title('Imagen Original');
subplot(1,3,2); imshow(R1); title('Umbral = 42');
subplot(1,3,3); imshow(R2); title('Umbral = 180');

