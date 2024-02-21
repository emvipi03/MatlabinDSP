%    y(n) = x(n) + 2*x(n - 1) + x(n - 3) + 0.5*y(n - 1) - 0.25*y(n - 2);
% x(n) = cos(n*pi/3), y(-1) = 1, y(-2) = 0.5
n = 0:10;
x = cos(n*pi/3);
a = [1 -0.5 0.25];
b = [1 2 0 1];
init_cond = filtic(b,a,1,0.5);
y = filter(b,a,x,init_cond);
stem(n,y,'LineWidth',2);