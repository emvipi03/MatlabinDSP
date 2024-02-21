wc = 0.3 * pi;
ws = 0.6 * pi;
C = 3.47;
L = 2*C*pi / (abs(wc - ws));

h_LP = ideal_LP(0.4* pi,L);

b = h_LP .* hamming(L);
a = [1];
[H, w] = freqz(b,a);
plot(w, 20 * log10(abs(H)), 'LineWidth', 2);
