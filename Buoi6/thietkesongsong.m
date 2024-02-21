a = [1 -2 4 -3];
b = [1 5 -4 2];

[rs, ps, ks] = residuez(b,a);
%H1
r = rs(1:2);
p = ps(1:2);
b1 = [r(1) + r(2), -(r(1)*p(2) + r(2)*p(1))];
a1 = poly(p);

%H2
r = rs(3);
p = ps(3);
b2 = r;
a2 = [1, -p];

%H3
b3 = k;
a3 = 1;

n = 0:1000;
x = (3/4) .^ n;
y = filter(b,a,x);
subplot(2,1,1);
stem(y,n);

%parallel
y1 = filter(b1,a1,x);
y2 = filter(b2,a2,x);
y3 = filter(b3,a3,x);
y_total = y1 + y2 + y3;

subplot(2,1,2);
stem(y_total,n);
d = sum(abs(y - y));