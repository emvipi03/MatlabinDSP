fs = 8192;
t = 0:1/fs:0.3;
x1 = sin(2*pi*220*t) .* (t < 0.3);
x2 = sin(2*pi*300*t) .* (t < 0.3 & t > 0.1);
x3 = sin(2*pi*400*t) .* (t < 0.3 & t > 0.2);

x = x1+x2+x3;
noise = randn(size(t));
y = x;

%ve x va y
subplot(3,2,1);
plot(t,x);
subplot(3,2,2);
plot(t,y);

n = 4;
Fc1 = 250;
Fc2 = 350;
fc1 = Fc1 / (fs / 2);
fc2 = Fc2 / (fs / 2);
Rp = 1;
[b, a] = cheby1(n,Rp, [fc1  fc2], 'bandpass', 's');
y_filter = filter(b, a, y);


N_fft = 8000;
Y = fft(y,N_fft);
f_axis = linspace(0,fs,length(Y));
subplot(3,2,3);
plot(f_axis, abs(Y));
title('Pho cua Y');

Y_filter = fft(y_filter,N_fft);
subplot(3,2,4);
plot(f_axis, abs(Y_filter));
title('Pho cua Y sau khi loc');


