clear all;
close all;
clc;

x=[3.0 4.5 7.0 9.0];
f_x=[2.5 1.0 2.5 0.5];

% x=[0.9, 1.3, 1.9, 2.1, 2.6, 3.0, 3.9, 4.4, 4.7, 5.0, 6.0, 7.0, 8.0,...
%     9.2, 10.5, 11.3, 11.6, 12.0, 12.6, 13.0, 13.3];
% f_x=[1.3, 1.5, 1.85, 2.1, 2.6, 2.7, 2.4, 2.15, 2.05, 2.1, 2.25, 2.3, ...
%     2.25, 1.95, 1.4, 0.9, 0.7, 0.6, 0.5, 0.4, 0.25];

n=length(x);

plot(x,f_x,'bo','LineWidth',3);

%axis([x(1) x(n) f_x(n) f_x(1)]);
%axis([0 14 -2 8]);
hold on;
%plot(x,f_x,'r','LineWidth',3);

m=zeros(length(x));
pause;

for k=1:n-1
    m(k)=(f_x(k+1)-f_x(k))/(x(k+1)-x(k));
    x_aux=x(k):0.01:x(k+1);
    f_aux=f_x(k)+m(k)*(x_aux-x(k));
    plot(x_aux,f_aux,'r','LineWidth',3);
    grid on;
    pause;
end
