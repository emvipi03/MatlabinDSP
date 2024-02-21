close all; clear all; clc;
T = 1/1000;
L = 1000;
F = 1/T;
t = (0:L-1)*T;
x = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

Fs = 90;
Ts = 1/Fs;
t1 = (0:L-1)*Ts;
x1 = 0.7*sin(2*pi*50*t1) + sin(2*pi*120*t1);

N_fft = 1024;
X = fft(x,N_fft);
f_axis = linspace(0,F,length(X));
subplot(2,2,1);
plot(t,x);
subplot(2,2,2);
plot(f_axis, abs(X));

X1 = fft(x1,N_fft);
f_axis = linspace(0,Fs,length(X));
subplot(2,2,3);
plot(t1,x1);
subplot(2,2,4);
plot(f_axis, abs(X1));
