[x, Fs] = audioread('C:\Users\ADMIN\Documents\MATLAB\ThuchanhMatlab\Buoi5\guitar1.wav');
%sound(x,Fs);
L = 1000;
k = 0.3;
a = [1 zeros(1, round(8000-1)) 0.31, zeros(1, round(6500-1)) 0.27 , zeros(1, round(4500-1)) 0.3];
b = 1;
y = filter(b, a, x);
sound(y,Fs);
