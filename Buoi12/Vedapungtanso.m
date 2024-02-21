L = 9999;
wc = 0.5;
h_LP = ideal_LP(wc,L);
a = [1];
b = h_LP;
[H, w] = freqz(b, a); 
plot(w,abs(H), 'LineWidth', 2);