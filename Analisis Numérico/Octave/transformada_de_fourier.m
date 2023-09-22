clear all;
close all;
clc;

%Creando la señal
p=1;
T=2;
k = 0:31
f= [(k<8) | (k>23)];
N=length(k);

%Graficar la señal de entrada
plot(k,f,'o', 'LineWidth', 2);
title('32 muestras de f(t), de 0 a T')
xlabel('k');
ylabel('f(k)');
grid on;


% Calculando la FFT de la señal
F = fft(f)/N


%Cambiar coeficientes Cn para que tengan la forma C-n C-n+1 ... C-1 C0 C1 .... Cn+1 Cn
aux = F;
F(1:16) = aux(17:32)
F(17:32) = aux(1:16)

figure, stem(abs(F), 'LineWidth', 2);
title('Espectro de Amplitud |F(n)| PAra el ten de pulsos p=1, T=2')
xlabel('n')
ylabel('|F(n)|')
grid on;


%Graficar w vs F(w)


