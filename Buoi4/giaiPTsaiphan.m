n = -1:15;
x = 2.^n;
x(1) = 0;
y = [-1];
for i = 2:length(n)
    y(i) = x(i) - 3*x(i - 1) - 2*y(i - 1);
end
stem(n,y,'LineWidth',2);