
n = 3;
Rp = 2;
Fc = 4000;

%butterWorth
[b, a] = butter(n, Fc, 'low', 's');
[H, W] = freqs(b,a);
plot(W, abs(H).^2, 'LineWidth', 2);
hold on;
%cheby1
[b, a] = cheby1(n, Rp, Fc, 'low', 's');
[H, W] = freqs(b,a);
plot(W, abs(H).^2, 'LineWidth', 2);
hold on;


%cheby2
[b, a] = cheby2(n, Rp, Fc, 'low', 's');
[H, W] = freqs(b,a);
plot(W, abs(H).^2, 'LineWidth', 2);
legend('butterWorth','chebysev type 1', 'chebysev type 2');
