n = 0:10;
x = (n>=0);
a = [1 -2 1];
b = [1 1 0];
init_cond = filtic(b,a,0,0);
y = filter(b,a,x,init_cond);
stem(n,y,'LineWidth',2);