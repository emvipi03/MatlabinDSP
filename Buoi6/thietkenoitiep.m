a = [1 -2 4 -3];
b = [1 5 -4 2];
poless = cplxpair(roots(a));
zeross = cplxpair(roots(b));

z1 = zeross(1:2);
z2 = zeross(3);
p1 = poless(3);
p2 = poless(1:2);

%H1
a1 = poly(p1);
b1 = poly(z1);
%H2
a2 = poly(p2);
b2 = poly(z2);

n = 0:100;
x = (3/4) .^ n;
y = filter(b,a,x);
%subplot(3,1,1);
zplane(y);

%Concatenate
y1 = filter(b1,a1,x);
y2 = filter(b2,a2,y1);
%subplot(3,1,2);
%zplane(y2);

%subplot(3,1,3);
%zplane(y-y2);
d = sum(abs(y - y2));