n = 4;
Wc = 8000;
Fs = 20000;
fc = Wc / (Fs / 2);
[b, a] = butter(n, fc, 'low');
freqz(b, a);