a = [1 -2 1];
b = [1 1];
h = impz(b,a);
subplot(2,1,1);
stem(h ,'LineWidth', 2);
subplot(2,1,2);
zplane(b,a);