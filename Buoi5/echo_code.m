[x, Fs] = audioread('C:\Users\ADMIN\Documents\MATLAB\ThuchanhMatlab\Buoi5\guitar1.wav');
%sound(x,Fs);
a = 1;
L0 = 44000;
k0 = 0.7;
L = 44000*1/6*[0 1 2 3 4 5];
k = 1/6*[6 5 4 3 2 1];
b = [1 zeros(1, round(L(2))-1) k(1), zeros(1, round(L(3)-L(2))-1) k(2), zeros(1, round(L(4)-L(3))-1) k(3), zeros(1, round(L(5)-L(4))-1) k(4), zeros(1, round(L(6)-L(5))-1) k(5)];
y = filter(b, a, x);
sound(y,Fs);