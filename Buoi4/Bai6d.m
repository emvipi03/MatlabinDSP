n = -200:200;
x = 2*sin(0.01*pi*n);
a = [1 -2 1];
b = [1 1 0];
init_cond = filtic(b,a,0,[0 0]);
y = filter(b,a,x,init_cond);
stem(n,y,'LineWidth',2);