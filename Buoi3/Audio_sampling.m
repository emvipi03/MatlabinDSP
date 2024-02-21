file_path = 'C:\Users\ADMIN\Documents\MATLAB\ThuchanhMatlab\Buoi3\Lab 3-20230220\audioclip1.wav';
[y, fs] = audioread(file_path);
Y = fft(y - mean(y(:)));
% tr? ?i mean 
f_axis = linspace(0,fs,length(Y));
subplot(2,2,1);
plot(f_axis, abs(Y),'LineWidth', 2);
%sound(y(1:fs*15),fs);

fs_new = round(fs/4);
y_s = y(round(1:fs/fs_new:length(y)));
Y_s = fft(y_s - mean(y_s(:)));
f_axis_new = linspace(0,fs_new,length(Y_s));
subplot(2,2,3);
plot(f_axis_new,abs(Y_s),'LineWidth',2);
sound(y(1:fs_new*15),fs_new);