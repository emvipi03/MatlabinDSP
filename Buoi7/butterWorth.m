n = 5;
Wc = 8000;
[b, a] = butter(n,Wc, 'low', 's');
freqs(b, a);