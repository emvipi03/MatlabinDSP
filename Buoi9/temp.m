% T?o các thông s? cho b? l?c 1
f1 = 1000;  % T?n s? c?t
Q1 = 10;    % H? s? Q
b1 = [0 f1/Q1]; % H? s? t? s?
a1 = [1 f1/(Q1*2*pi) f1^2]; % H? s? m?u s?

% T?o các thông s? cho b? l?c 2
f2 = 2000;  % T?n s? c?t
Q2 = 5;     % H? s? Q
b2 = [0 f2/Q2]; % H? s? t? s?
a2 = [1 f2/(Q2*2*pi) f2^2]; % H? s? m?u s?

% T?o vect? t?n s? t? 0 ??n 4000 Hz
f = linspace(0, 4000, 10000);

% Tính toán ?áp ?ng xung c?a hai b? l?c
H1 = freqs(b1, a1, 2*pi*f);
H2 = freqs(b2, a2, 2*pi*f);

% V? ?? th? ?áp ?ng xung c?a hai b? l?c trên cùng m?t hình
figure;
semilogx(f, 20*log10(abs(H1)), 'b', 'LineWidth', 2);
hold on;
semilogx(f, 20*log10(abs(H2)), 'r', 'LineWidth', 2);
grid on;
xlabel('T?n s? (Hz)');
ylabel('?áp ?ng xung (dB)');
legend('B? l?c 1', 'B? l?c 2');
