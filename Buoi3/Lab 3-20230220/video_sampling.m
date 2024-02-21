file_path = 'C:\Users\ADMIN\Documents\MATLAB\ThuchanhMatlab\Buoi3\Lab 3-20230220\data_hb.w4v'
load(file_path, 'data');
FPS = 30;
implay(shiftdim(data,1),FPS);
for i = 1:size(data,1)
    x(i) = sum(data(i,1));
end
x = x - mean(x(:));
X = fft(x);
f = linspace(0,FPS,length(X));
plot(f,abs(X));