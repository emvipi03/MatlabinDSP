[x,fs] = audioread('C:\Users\ADMIN\Documents\MATLAB\ThuchanhMatlab\Buoi10\go.au');
x = transpose(x);
L = 100;
overlap = 80;
N_fft = 512;
Specgm(x,L,overlap,N_fft,fs);