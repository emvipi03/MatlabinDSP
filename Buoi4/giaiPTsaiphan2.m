n = 0:10;
x = 2.^n;
a =[1 2];
b = [1 -3];
init_cond = filtic(b,a,[-1],[0]);
y = filter(b,a,x,init_cond);
stem(n,y,'LineWidth',2);