clear all;
close all;
clc;

x=[3.0 4.5 7.0 9.0];
f_x=[2.5 1.0 2.5 0.5];

%   a1=0    b1     c1    a2     b2    c2    a3   b3   c3
A=[          4.5    1     0      0     0     0    0    0  
             0      0    20.25   4.5   1     0    0    0
             0      0    49      7     1     0    0    0
             0      0     0      0     0    49    7    1
             3      1     0      0     0     0    0    0
             0      0     0      0     0    81    9    1
             1      0    -9     -1     0     0    0    0
             0      0    14      1     0   -14   -1    0];
         
%s=[b1 c1 a2 b2 c2 a3 b3 c3]';
r=[1 1 2.5  2.5 2.5 0.5 0 0]';
s=inv(A)*r;

a1=0;
b1=s(1);
c1=s(2);
a2=s(3);
b2=s(4);
c2=s(5);
a3=s(6);
b3=s(7);
c3=s(8);


figure, plot(x,f_x,'bo','LineWidth',3);
title('Interpolación segmentaria cuadrática');
xlabel('x');
ylabel('f(x)');

grid on;
x_seg1=x(1):0.01:x(2);
f_seg1=a1*x_seg1.^2+b1*x_seg1+c1;
pause(3);
hold on;
plot(x_seg1,f_seg1,'r','LineWidth',3);

x_seg2=x(2):0.01:x(3);
f_seg2=a2*x_seg2.^2+b2*x_seg2+c2;
pause(3);
hold on;
plot(x_seg2,f_seg2,'r','LineWidth',3);


x_seg3=x(3):0.01:x(4);
f_seg3=a3*x_seg3.^2+b3*x_seg3+c3;
pause(3);
hold on;
plot(x_seg3,f_seg3,'r','LineWidth',3);

% 
% for k=1:n-1
%     m(k)=(f_x(k+1)-f_x(k))/(x(k+1)-x(k));
%     x_aux=x(k):0.01:x(k+1);
%     f_aux=f_x(k)+m(k)*(x_aux-x(k));
%     plot(x_aux,f_aux,'r','LineWidth',3);
%     grid on;
%     pause;
% end
