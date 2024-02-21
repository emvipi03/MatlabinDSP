[n1,d1] = delta_signal(0,-3,6);
subplot(3,1,1);
stem(n1,d1);
xlim([-10 10]);

[n2,d2] = delta_signal(2,-2,4);
subplot(3,1,2);
stem(n2,d2);
xlim([-10 10]);

[n3,d3] = sig_add(n1,d1,n2,d2);
subplot(3,1,3);
stem(n3,d3);
xlim([-10 10]);

