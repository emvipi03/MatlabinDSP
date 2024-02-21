%thiet ke bo loc thong cao tu bo loc thong thap y 1

ws = 0.4 * pi;
wp = 0.6 * pi;
wc = 0.5 * (wp + ws); % tan so cat la trung binh cua tan so dai thong va dai triet
C = 5.71; %blackman
L = ceil(2*C*pi / abs(wp - ws)); %mau la do rong dai chuyen tiep
L = L + 1 - mod(L,2);
h_LP = ideal_LP(wc ,L) .* blackman(L); % dap ung xung bo loc thong thap

% h_HP(n) = delta(n) - h_LP(n);
h_HP = - h_LP;
index = (L - 1) / 2 + 1;
h_HP(index) = index - h_LP(index);
freqz(h_HP, 1);

