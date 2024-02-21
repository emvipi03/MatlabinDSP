[x, Fs] = audioread('C:\Users\ADMIN\Documents\MATLAB\ThuchanhMatlab\Buoi10\go.au');
subplot(2,1,1);
plot(x);

voice = x(2500:3400);
subplot(2,1,2);
plot(voice);
hold on;
[pks, locs] = findpeaks(voice,'MinPeakHeight',0.7);
plot(locs,pks,'ro','MarkerSize', 15);

sum_dis = 0;
for i = 2:length(locs)
    sum_dis = sum_dis + locs(i) - locs(i-1);
end;
avg_dis = sum_dis / (length(locs) - 1);
fprintf('Average distance between peaks %f \n', avg_dis);