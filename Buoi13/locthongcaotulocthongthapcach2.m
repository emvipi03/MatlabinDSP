%thiet ke bo loc thong cao tu bo loc thong thap y 1
%cach 2

ws = 0.4 * pi;
wp = 0.6 * pi;
wc = pi - 0.5 * (wp + ws); % tan so cat la pi tru di trung binh cua tan so dai thong va dai triet
C = 5.71; %blackman
L = ceil(2*C*pi / abs(wp - ws)); %mau la do rong dai chuyen tiep
L = L + 1 - mod(L,2);
h_LP = ideal_LP(wc ,L) .* blackman(L); % dap ung xung bo loc thong thap

% h_HP(n) = (-1).^n * h_LP(n)
n = transpose(0: L-1);
h_HP = (-1).^n .* h_LP;
%freqz(h_HP,1);

a = [1];
b = h_HP;
[H, w] = freqz(b,a);
subplot(2,1,1);
plot(w, 20 * log10(abs(H)), 'LineWidth', 2);