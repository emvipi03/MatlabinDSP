%write a program to remove the higher frequency in x
%x = 0.7*sin(2*pi*200*t)+ sin(2*pi*500*t);
%plot the spectrum of the signal before and after being filtered

%plot the frequency respone of the filter

Fs = 1500;
Ts = 1/Fs;
n = 0:Ts:1;
x = 0.7*sin(2*pi*200*n)+ sin(2*pi*500*n);
subplot(3,2,1);
plot(n,x);
title('x');
%pho cua x
subplot(3,2,3);
N_fft = 1024;
f_axis = linspace(0,Fs,N_fft);
X = fft(x, N_fft);
plot(f_axis, abs(X));
title('Spectrum of X');

%ham truyen bo loc
Fc = 300;
fc = Fc / (Fs / 2);
n_filter = 4;
[b, a] = butter(n_filter, fc, 'low');
y = filter(b,a,x); 
subplot(3,2,2);
plot(n,y);
title('y');

%pho cua y
subplot(3,2,4);
N_fft = 1024;
f_axis = linspace(0,Fs,N_fft);
Y = fft(y, N_fft);
plot(f_axis, abs(Y));
title('Spectrum of Y');

[H, w] = freqz(b,a);
subplot(3,2,5);
plot(w/pi*Fs/2, abs(H));