n = [0:1/100:5];
X = meshgrid(n,n);
Img = sin(2*pi*X);
Y = fft2(Img);
subplot(1,2,1);
imagesc(Img);
subplot(1,2,2);
imagesc(abs(fftshift(Y)));
