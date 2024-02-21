L = 21;

wc = 0.5;
h_LP = ideal_LP(wc,L);

%Rect
a = [1];
b = h_LP;
[H, w] = freqz(b, a); 
plot(w, 20 * log10(abs(H)), 'LineWidth', 2);
hold on;
%Hanning
b = h_LP .* hanning(L);
a = [1];
[H, w] = freqz(b,a);
plot(w, 20 * log10(abs(H)), 'LineWidth', 2);
hold on;

%hamming
b = h_LP .* hamming(L);
a = [1];
[H, w] = freqz(b,a);
plot(w, 20 * log10(abs(H)), 'LineWidth', 2);
grid on;
legend('Rect', 'Hanning', 'Hamming');
